package rx.functions;

/* loaded from: classes2.dex */
public final class Functions {
    private Functions() {
        throw new IllegalStateException("No instances!");
    }

    public static <R> FuncN<R> fromFunc(final Func0<? extends R> func0) {
        return new FuncN<R>() { // from class: rx.functions.Functions.1
            @Override // rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length != 0) {
                    throw new RuntimeException("Func0 expecting 0 arguments.");
                }
                return (R) Func0.this.call();
            }
        };
    }

    public static <T0, R> FuncN<R> fromFunc(final Func1<? super T0, ? extends R> func1) {
        return new FuncN<R>() { // from class: rx.functions.Functions.2
            @Override // rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length != 1) {
                    throw new RuntimeException("Func1 expecting 1 argument.");
                }
                return (R) Func1.this.call(objArr[0]);
            }
        };
    }

    public static <T0, T1, R> FuncN<R> fromFunc(final Func2<? super T0, ? super T1, ? extends R> func2) {
        return new FuncN<R>() { // from class: rx.functions.Functions.3
            @Override // rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length != 2) {
                    throw new RuntimeException("Func2 expecting 2 arguments.");
                }
                return (R) Func2.this.call(objArr[0], objArr[1]);
            }
        };
    }

    public static <T0, T1, T2, R> FuncN<R> fromFunc(final Func3<? super T0, ? super T1, ? super T2, ? extends R> func3) {
        return new FuncN<R>() { // from class: rx.functions.Functions.4
            @Override // rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length != 3) {
                    throw new RuntimeException("Func3 expecting 3 arguments.");
                }
                return (R) Func3.this.call(objArr[0], objArr[1], objArr[2]);
            }
        };
    }

    public static <T0, T1, T2, T3, R> FuncN<R> fromFunc(final Func4<? super T0, ? super T1, ? super T2, ? super T3, ? extends R> func4) {
        return new FuncN<R>() { // from class: rx.functions.Functions.5
            @Override // rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length != 4) {
                    throw new RuntimeException("Func4 expecting 4 arguments.");
                }
                return (R) Func4.this.call(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
        };
    }

    public static <T0, T1, T2, T3, T4, R> FuncN<R> fromFunc(final Func5<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? extends R> func5) {
        return new FuncN<R>() { // from class: rx.functions.Functions.6
            @Override // rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length != 5) {
                    throw new RuntimeException("Func5 expecting 5 arguments.");
                }
                return (R) Func5.this.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
        };
    }

    public static <T0, T1, T2, T3, T4, T5, R> FuncN<R> fromFunc(final Func6<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> func6) {
        return new FuncN<R>() { // from class: rx.functions.Functions.7
            @Override // rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length != 6) {
                    throw new RuntimeException("Func6 expecting 6 arguments.");
                }
                return (R) Func6.this.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
        };
    }

    public static <T0, T1, T2, T3, T4, T5, T6, R> FuncN<R> fromFunc(final Func7<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> func7) {
        return new FuncN<R>() { // from class: rx.functions.Functions.8
            @Override // rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length != 7) {
                    throw new RuntimeException("Func7 expecting 7 arguments.");
                }
                return (R) Func7.this.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
        };
    }

    public static <T0, T1, T2, T3, T4, T5, T6, T7, R> FuncN<R> fromFunc(final Func8<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> func8) {
        return new FuncN<R>() { // from class: rx.functions.Functions.9
            @Override // rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length != 8) {
                    throw new RuntimeException("Func8 expecting 8 arguments.");
                }
                return (R) Func8.this.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
        };
    }

    public static <T0, T1, T2, T3, T4, T5, T6, T7, T8, R> FuncN<R> fromFunc(final Func9<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> func9) {
        return new FuncN<R>() { // from class: rx.functions.Functions.10
            @Override // rx.functions.FuncN
            public R call(Object... objArr) {
                if (objArr.length != 9) {
                    throw new RuntimeException("Func9 expecting 9 arguments.");
                }
                return (R) Func9.this.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
        };
    }

    public static FuncN<Void> fromAction(final Action0 action0) {
        return new FuncN<Void>() { // from class: rx.functions.Functions.11
            @Override // rx.functions.FuncN
            public Void call(Object... objArr) {
                if (objArr.length != 0) {
                    throw new RuntimeException("Action0 expecting 0 arguments.");
                }
                Action0.this.call();
                return null;
            }
        };
    }

    public static <T0> FuncN<Void> fromAction(final Action1<? super T0> action1) {
        return new FuncN<Void>() { // from class: rx.functions.Functions.12
            @Override // rx.functions.FuncN
            public Void call(Object... objArr) {
                if (objArr.length != 1) {
                    throw new RuntimeException("Action1 expecting 1 argument.");
                }
                Action1.this.call(objArr[0]);
                return null;
            }
        };
    }

    public static <T0, T1> FuncN<Void> fromAction(final Action2<? super T0, ? super T1> action2) {
        return new FuncN<Void>() { // from class: rx.functions.Functions.13
            @Override // rx.functions.FuncN
            public Void call(Object... objArr) {
                if (objArr.length != 2) {
                    throw new RuntimeException("Action3 expecting 2 arguments.");
                }
                Action2.this.call(objArr[0], objArr[1]);
                return null;
            }
        };
    }

    public static <T0, T1, T2> FuncN<Void> fromAction(final Action3<? super T0, ? super T1, ? super T2> action3) {
        return new FuncN<Void>() { // from class: rx.functions.Functions.14
            @Override // rx.functions.FuncN
            public Void call(Object... objArr) {
                if (objArr.length != 3) {
                    throw new RuntimeException("Action3 expecting 3 arguments.");
                }
                Action3.this.call(objArr[0], objArr[1], objArr[2]);
                return null;
            }
        };
    }
}
