package rx.internal.operators;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.MissingBackpressureException;

/* loaded from: classes2.dex */
public final class OperatorBufferWithSize<T> implements Observable.Operator<List<T>, T> {
    final int count;
    final int skip;

    public OperatorBufferWithSize(int i, int i2) {
        if (i <= 0) {
            throw new IllegalArgumentException("count must be greater than 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("skip must be greater than 0");
        }
        this.count = i;
        this.skip = i2;
    }

    @Override // rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        int i = this.skip;
        int i2 = this.count;
        if (i == i2) {
            BufferExact bufferExact = new BufferExact(subscriber, i2);
            subscriber.add(bufferExact);
            subscriber.setProducer(bufferExact.createProducer());
            return bufferExact;
        }
        if (i > i2) {
            BufferSkip bufferSkip = new BufferSkip(subscriber, i2, i);
            subscriber.add(bufferSkip);
            subscriber.setProducer(bufferSkip.createProducer());
            return bufferSkip;
        }
        BufferOverlap bufferOverlap = new BufferOverlap(subscriber, i2, i);
        subscriber.add(bufferOverlap);
        subscriber.setProducer(bufferOverlap.createProducer());
        return bufferOverlap;
    }

    static final class BufferExact<T> extends Subscriber<T> {
        final Subscriber<? super List<T>> actual;
        List<T> buffer;
        final int count;

        public BufferExact(Subscriber<? super List<T>> subscriber, int i) {
            this.actual = subscriber;
            this.count = i;
            request(0L);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            List list = this.buffer;
            if (list == null) {
                list = new ArrayList(this.count);
                this.buffer = list;
            }
            list.add(t);
            if (list.size() == this.count) {
                this.buffer = null;
                this.actual.onNext(list);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.buffer = null;
            this.actual.onError(th);
        }

        @Override // rx.Observer
        public void onCompleted() {
            List<T> list = this.buffer;
            if (list != null) {
                this.actual.onNext(list);
            }
            this.actual.onCompleted();
        }

        Producer createProducer() {
            return new Producer() { // from class: rx.internal.operators.OperatorBufferWithSize.BufferExact.1
                @Override // rx.Producer
                public void request(long j) {
                    if (j < 0) {
                        throw new IllegalArgumentException("n >= required but it was " + j);
                    }
                    if (j != 0) {
                        BufferExact.this.request(BackpressureUtils.multiplyCap(j, BufferExact.this.count));
                    }
                }
            };
        }
    }

    static final class BufferSkip<T> extends Subscriber<T> {
        final Subscriber<? super List<T>> actual;
        List<T> buffer;
        final int count;
        long index;
        final int skip;

        public BufferSkip(Subscriber<? super List<T>> subscriber, int i, int i2) {
            this.actual = subscriber;
            this.count = i;
            this.skip = i2;
            request(0L);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long j = this.index;
            List list = this.buffer;
            if (j == 0) {
                list = new ArrayList(this.count);
                this.buffer = list;
            }
            long j2 = j + 1;
            if (j2 == this.skip) {
                this.index = 0L;
            } else {
                this.index = j2;
            }
            if (list != null) {
                list.add(t);
                if (list.size() == this.count) {
                    this.buffer = null;
                    this.actual.onNext(list);
                }
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.buffer = null;
            this.actual.onError(th);
        }

        @Override // rx.Observer
        public void onCompleted() {
            List<T> list = this.buffer;
            if (list != null) {
                this.buffer = null;
                this.actual.onNext(list);
            }
            this.actual.onCompleted();
        }

        Producer createProducer() {
            return new BufferSkipProducer();
        }

        final class BufferSkipProducer extends AtomicBoolean implements Producer {
            private static final long serialVersionUID = 3428177408082367154L;

            BufferSkipProducer() {
            }

            @Override // rx.Producer
            public void request(long j) {
                if (j < 0) {
                    throw new IllegalArgumentException("n >= 0 required but it was " + j);
                }
                if (j != 0) {
                    BufferSkip bufferSkip = BufferSkip.this;
                    if (get() || !compareAndSet(false, true)) {
                        bufferSkip.request(BackpressureUtils.multiplyCap(j, bufferSkip.skip));
                    } else {
                        bufferSkip.request(BackpressureUtils.addCap(BackpressureUtils.multiplyCap(j, bufferSkip.count), BackpressureUtils.multiplyCap(bufferSkip.skip - bufferSkip.count, j - 1)));
                    }
                }
            }
        }
    }

    static final class BufferOverlap<T> extends Subscriber<T> {
        final Subscriber<? super List<T>> actual;
        final int count;
        long index;
        long produced;
        final ArrayDeque<List<T>> queue = new ArrayDeque<>();
        final AtomicLong requested = new AtomicLong();
        final int skip;

        public BufferOverlap(Subscriber<? super List<T>> subscriber, int i, int i2) {
            this.actual = subscriber;
            this.count = i;
            this.skip = i2;
            request(0L);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long j = this.index;
            if (j == 0) {
                this.queue.offer(new ArrayList(this.count));
            }
            long j2 = j + 1;
            if (j2 == this.skip) {
                this.index = 0L;
            } else {
                this.index = j2;
            }
            Iterator<List<T>> it = this.queue.iterator();
            while (it.hasNext()) {
                it.next().add(t);
            }
            List<T> peek = this.queue.peek();
            if (peek == null || peek.size() != this.count) {
                return;
            }
            this.queue.poll();
            this.produced++;
            this.actual.onNext(peek);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.queue.clear();
            this.actual.onError(th);
        }

        @Override // rx.Observer
        public void onCompleted() {
            long j = this.produced;
            if (j != 0) {
                if (j > this.requested.get()) {
                    this.actual.onError(new MissingBackpressureException("More produced than requested? " + j));
                    return;
                }
                this.requested.addAndGet(-j);
            }
            BackpressureUtils.postCompleteDone(this.requested, this.queue, this.actual);
        }

        Producer createProducer() {
            return new BufferOverlapProducer();
        }

        final class BufferOverlapProducer extends AtomicBoolean implements Producer {
            private static final long serialVersionUID = -4015894850868853147L;

            BufferOverlapProducer() {
            }

            @Override // rx.Producer
            public void request(long j) {
                BufferOverlap bufferOverlap = BufferOverlap.this;
                if (!BackpressureUtils.postCompleteRequest(bufferOverlap.requested, j, bufferOverlap.queue, bufferOverlap.actual) || j == 0) {
                    return;
                }
                if (get() || !compareAndSet(false, true)) {
                    bufferOverlap.request(BackpressureUtils.multiplyCap(bufferOverlap.skip, j));
                } else {
                    bufferOverlap.request(BackpressureUtils.addCap(BackpressureUtils.multiplyCap(bufferOverlap.skip, j - 1), bufferOverlap.count));
                }
            }
        }
    }
}
