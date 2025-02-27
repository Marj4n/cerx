package rx.observers;

import rx.Observer;
import rx.Subscriber;

/* loaded from: classes2.dex */
public class SerializedSubscriber<T> extends Subscriber<T> {
    private final Observer<T> s;

    public SerializedSubscriber(Subscriber<? super T> subscriber) {
        this(subscriber, true);
    }

    public SerializedSubscriber(Subscriber<? super T> subscriber, boolean z) {
        super(subscriber, z);
        this.s = new SerializedObserver(subscriber);
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.s.onCompleted();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.s.onError(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.s.onNext(t);
    }
}
