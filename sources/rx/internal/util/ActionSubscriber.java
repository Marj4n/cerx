package rx.internal.util;

import rx.Subscriber;
import rx.functions.Action0;
import rx.functions.Action1;

/* loaded from: classes2.dex */
public final class ActionSubscriber<T> extends Subscriber<T> {
    final Action0 onCompleted;
    final Action1<Throwable> onError;
    final Action1<? super T> onNext;

    public ActionSubscriber(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        this.onNext = action1;
        this.onError = action12;
        this.onCompleted = action0;
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.onNext.call(t);
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.onError.call(th);
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.onCompleted.call();
    }
}
