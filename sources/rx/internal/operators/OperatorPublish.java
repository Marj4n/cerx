package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.SynchronizedQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.observables.ConnectableObservable;
import rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
public final class OperatorPublish<T> extends ConnectableObservable<T> {
    final AtomicReference<PublishSubscriber<T>> current;
    final Observable<? extends T> source;

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable) {
        final AtomicReference atomicReference = new AtomicReference();
        return new OperatorPublish(new Observable.OnSubscribe<T>() { // from class: rx.internal.operators.OperatorPublish.1
            @Override // rx.functions.Action1
            public void call(Subscriber<? super T> subscriber) {
                while (true) {
                    PublishSubscriber publishSubscriber = (PublishSubscriber) atomicReference.get();
                    if (publishSubscriber == null || publishSubscriber.isUnsubscribed()) {
                        PublishSubscriber publishSubscriber2 = new PublishSubscriber(atomicReference);
                        publishSubscriber2.init();
                        if (atomicReference.compareAndSet(publishSubscriber, publishSubscriber2)) {
                            publishSubscriber = publishSubscriber2;
                        } else {
                            continue;
                        }
                    }
                    InnerProducer<T> innerProducer = new InnerProducer<>(publishSubscriber, subscriber);
                    if (publishSubscriber.add((InnerProducer) innerProducer)) {
                        subscriber.add(innerProducer);
                        subscriber.setProducer(innerProducer);
                        return;
                    }
                }
            }
        }, observable, atomicReference);
    }

    public static <T, R> Observable<R> create(Observable<? extends T> observable, Func1<? super Observable<T>, ? extends Observable<R>> func1) {
        return create(observable, func1, false);
    }

    public static <T, R> Observable<R> create(final Observable<? extends T> observable, final Func1<? super Observable<T>, ? extends Observable<R>> func1, final boolean z) {
        return create(new Observable.OnSubscribe<R>() { // from class: rx.internal.operators.OperatorPublish.2
            @Override // rx.functions.Action1
            public void call(final Subscriber<? super R> subscriber) {
                final OnSubscribePublishMulticast onSubscribePublishMulticast = new OnSubscribePublishMulticast(RxRingBuffer.SIZE, z);
                Subscriber<R> subscriber2 = new Subscriber<R>() { // from class: rx.internal.operators.OperatorPublish.2.1
                    @Override // rx.Observer
                    public void onNext(R r) {
                        subscriber.onNext(r);
                    }

                    @Override // rx.Observer
                    public void onError(Throwable th) {
                        onSubscribePublishMulticast.unsubscribe();
                        subscriber.onError(th);
                    }

                    @Override // rx.Observer
                    public void onCompleted() {
                        onSubscribePublishMulticast.unsubscribe();
                        subscriber.onCompleted();
                    }

                    @Override // rx.Subscriber
                    public void setProducer(Producer producer) {
                        subscriber.setProducer(producer);
                    }
                };
                subscriber.add(onSubscribePublishMulticast);
                subscriber.add(subscriber2);
                ((Observable) func1.call(Observable.create(onSubscribePublishMulticast))).unsafeSubscribe(subscriber2);
                observable.unsafeSubscribe(onSubscribePublishMulticast.subscriber());
            }
        });
    }

    private OperatorPublish(Observable.OnSubscribe<T> onSubscribe, Observable<? extends T> observable, AtomicReference<PublishSubscriber<T>> atomicReference) {
        super(onSubscribe);
        this.source = observable;
        this.current = atomicReference;
    }

    @Override // rx.observables.ConnectableObservable
    public void connect(Action1<? super Subscription> action1) {
        PublishSubscriber<T> publishSubscriber;
        while (true) {
            publishSubscriber = this.current.get();
            if (publishSubscriber != null && !publishSubscriber.isUnsubscribed()) {
                break;
            }
            PublishSubscriber<T> publishSubscriber2 = new PublishSubscriber<>(this.current);
            publishSubscriber2.init();
            if (this.current.compareAndSet(publishSubscriber, publishSubscriber2)) {
                publishSubscriber = publishSubscriber2;
                break;
            }
        }
        boolean z = !publishSubscriber.shouldConnect.get() && publishSubscriber.shouldConnect.compareAndSet(false, true);
        action1.call(publishSubscriber);
        if (z) {
            this.source.unsafeSubscribe(publishSubscriber);
        }
    }

    static final class PublishSubscriber<T> extends Subscriber<T> implements Subscription {
        static final InnerProducer[] EMPTY = new InnerProducer[0];
        static final InnerProducer[] TERMINATED = new InnerProducer[0];
        final AtomicReference<PublishSubscriber<T>> current;
        boolean emitting;
        boolean missed;
        final NotificationLite<T> nl;
        final AtomicReference<InnerProducer[]> producers;
        final Queue<Object> queue;
        final AtomicBoolean shouldConnect;
        volatile Object terminalEvent;

        public PublishSubscriber(AtomicReference<PublishSubscriber<T>> atomicReference) {
            this.queue = UnsafeAccess.isUnsafeAvailable() ? new SpscArrayQueue<>(RxRingBuffer.SIZE) : new SynchronizedQueue<>(RxRingBuffer.SIZE);
            this.nl = NotificationLite.instance();
            this.producers = new AtomicReference<>(EMPTY);
            this.current = atomicReference;
            this.shouldConnect = new AtomicBoolean();
        }

        void init() {
            add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorPublish.PublishSubscriber.1
                @Override // rx.functions.Action0
                public void call() {
                    PublishSubscriber.this.producers.getAndSet(PublishSubscriber.TERMINATED);
                    PublishSubscriber.this.current.compareAndSet(PublishSubscriber.this, null);
                }
            }));
        }

        @Override // rx.Subscriber
        public void onStart() {
            request(RxRingBuffer.SIZE);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (!this.queue.offer(this.nl.next(t))) {
                onError(new MissingBackpressureException());
            } else {
                dispatch();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.terminalEvent == null) {
                this.terminalEvent = this.nl.error(th);
                dispatch();
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.terminalEvent == null) {
                this.terminalEvent = this.nl.completed();
                dispatch();
            }
        }

        boolean add(InnerProducer<T> innerProducer) {
            InnerProducer[] innerProducerArr;
            InnerProducer[] innerProducerArr2;
            if (innerProducer == null) {
                throw null;
            }
            do {
                innerProducerArr = this.producers.get();
                if (innerProducerArr == TERMINATED) {
                    return false;
                }
                int length = innerProducerArr.length;
                innerProducerArr2 = new InnerProducer[length + 1];
                System.arraycopy(innerProducerArr, 0, innerProducerArr2, 0, length);
                innerProducerArr2[length] = innerProducer;
            } while (!this.producers.compareAndSet(innerProducerArr, innerProducerArr2));
            return true;
        }

        void remove(InnerProducer<T> innerProducer) {
            InnerProducer[] innerProducerArr;
            InnerProducer[] innerProducerArr2;
            do {
                innerProducerArr = this.producers.get();
                if (innerProducerArr == EMPTY || innerProducerArr == TERMINATED) {
                    return;
                }
                int i = -1;
                int length = innerProducerArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (innerProducerArr[i2].equals(innerProducer)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    innerProducerArr2 = EMPTY;
                } else {
                    InnerProducer[] innerProducerArr3 = new InnerProducer[length - 1];
                    System.arraycopy(innerProducerArr, 0, innerProducerArr3, 0, i);
                    System.arraycopy(innerProducerArr, i + 1, innerProducerArr3, i, (length - i) - 1);
                    innerProducerArr2 = innerProducerArr3;
                }
            } while (!this.producers.compareAndSet(innerProducerArr, innerProducerArr2));
        }

        boolean checkTerminated(Object obj, boolean z) {
            int i = 0;
            if (obj != null) {
                if (!this.nl.isCompleted(obj)) {
                    Throwable error = this.nl.getError(obj);
                    this.current.compareAndSet(this, null);
                    try {
                        InnerProducer[] andSet = this.producers.getAndSet(TERMINATED);
                        int length = andSet.length;
                        while (i < length) {
                            andSet[i].child.onError(error);
                            i++;
                        }
                        return true;
                    } finally {
                    }
                }
                if (z) {
                    this.current.compareAndSet(this, null);
                    try {
                        InnerProducer[] andSet2 = this.producers.getAndSet(TERMINATED);
                        int length2 = andSet2.length;
                        while (i < length2) {
                            andSet2[i].child.onCompleted();
                            i++;
                        }
                        return true;
                    } finally {
                    }
                }
            }
            return false;
        }

        void dispatch() {
            boolean z;
            long j;
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                this.missed = false;
                while (true) {
                    try {
                        Object obj = this.terminalEvent;
                        boolean isEmpty = this.queue.isEmpty();
                        if (checkTerminated(obj, isEmpty)) {
                            return;
                        }
                        if (!isEmpty) {
                            InnerProducer[] innerProducerArr = this.producers.get();
                            int length = innerProducerArr.length;
                            long j2 = LongCompanionObject.MAX_VALUE;
                            int i = 0;
                            for (InnerProducer innerProducer : innerProducerArr) {
                                long j3 = innerProducer.get();
                                if (j3 >= 0) {
                                    j2 = Math.min(j2, j3);
                                } else if (j3 == Long.MIN_VALUE) {
                                    i++;
                                }
                            }
                            if (length != i) {
                                int i2 = 0;
                                while (true) {
                                    j = i2;
                                    if (j >= j2) {
                                        break;
                                    }
                                    Object obj2 = this.terminalEvent;
                                    Object poll = this.queue.poll();
                                    boolean z2 = poll == null;
                                    if (checkTerminated(obj2, z2)) {
                                        return;
                                    }
                                    if (z2) {
                                        isEmpty = z2;
                                        break;
                                    }
                                    T value = this.nl.getValue(poll);
                                    for (InnerProducer innerProducer2 : innerProducerArr) {
                                        if (innerProducer2.get() > 0) {
                                            try {
                                                innerProducer2.child.onNext(value);
                                                innerProducer2.produced(1L);
                                            } catch (Throwable th) {
                                                innerProducer2.unsubscribe();
                                                Exceptions.throwOrReport(th, innerProducer2.child, value);
                                            }
                                        }
                                    }
                                    i2++;
                                    isEmpty = z2;
                                }
                                if (i2 > 0) {
                                    request(j);
                                }
                                if (j2 != 0 && !isEmpty) {
                                }
                            } else if (checkTerminated(this.terminalEvent, this.queue.poll() == null)) {
                                return;
                            } else {
                                request(1L);
                            }
                        }
                        synchronized (this) {
                            try {
                                if (!this.missed) {
                                    this.emitting = false;
                                    try {
                                        return;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        z = true;
                                        while (true) {
                                            try {
                                                throw th;
                                            } catch (Throwable th3) {
                                                th = th3;
                                            }
                                        }
                                    }
                                } else {
                                    this.missed = false;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                z = false;
                            }
                        }
                        try {
                            throw th;
                        } catch (Throwable th5) {
                            th = th5;
                            if (!z) {
                                synchronized (this) {
                                    this.emitting = false;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        z = false;
                    }
                }
            }
        }
    }

    static final class InnerProducer<T> extends AtomicLong implements Producer, Subscription {
        static final long NOT_REQUESTED = -4611686018427387904L;
        static final long UNSUBSCRIBED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        final Subscriber<? super T> child;
        final PublishSubscriber<T> parent;

        public InnerProducer(PublishSubscriber<T> publishSubscriber, Subscriber<? super T> subscriber) {
            this.parent = publishSubscriber;
            this.child = subscriber;
            lazySet(NOT_REQUESTED);
        }

        @Override // rx.Producer
        public void request(long j) {
            long j2;
            long j3;
            if (j < 0) {
                return;
            }
            do {
                j2 = get();
                if (j2 == Long.MIN_VALUE) {
                    return;
                }
                if (j2 >= 0 && j == 0) {
                    return;
                }
                if (j2 == NOT_REQUESTED) {
                    j3 = j;
                } else {
                    j3 = j2 + j;
                    if (j3 < 0) {
                        j3 = LongCompanionObject.MAX_VALUE;
                    }
                }
            } while (!compareAndSet(j2, j3));
            this.parent.dispatch();
        }

        public long produced(long j) {
            long j2;
            long j3;
            if (j <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            do {
                j2 = get();
                if (j2 == NOT_REQUESTED) {
                    throw new IllegalStateException("Produced without request");
                }
                if (j2 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                j3 = j2 - j;
                if (j3 < 0) {
                    throw new IllegalStateException("More produced (" + j + ") than requested (" + j2 + ")");
                }
            } while (!compareAndSet(j2, j3));
            return j3;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE) {
                return;
            }
            this.parent.remove(this);
            this.parent.dispatch();
        }
    }
}
