package rx.exceptions;

import com.jieli.stream.dv.running2.util.IConstant;
import java.util.HashSet;
import java.util.Set;
import rx.plugins.RxJavaPlugins;

/* loaded from: classes2.dex */
public final class OnErrorThrowable extends RuntimeException {
    private static final long serialVersionUID = -569558213262703934L;
    private final boolean hasValue;
    private final Object value;

    private OnErrorThrowable(Throwable th) {
        super(th);
        this.hasValue = false;
        this.value = null;
    }

    private OnErrorThrowable(Throwable th, Object obj) {
        super(th);
        this.hasValue = true;
        this.value = obj;
    }

    public Object getValue() {
        return this.value;
    }

    public boolean isValueNull() {
        return this.hasValue;
    }

    public static OnErrorThrowable from(Throwable th) {
        if (th == null) {
            th = new NullPointerException();
        }
        Throwable finalCause = Exceptions.getFinalCause(th);
        if (finalCause instanceof OnNextValue) {
            return new OnErrorThrowable(th, ((OnNextValue) finalCause).getValue());
        }
        return new OnErrorThrowable(th);
    }

    public static Throwable addValueAsLastCause(Throwable th, Object obj) {
        if (th == null) {
            th = new NullPointerException();
        }
        Throwable finalCause = Exceptions.getFinalCause(th);
        if (finalCause != null && (finalCause instanceof OnNextValue) && ((OnNextValue) finalCause).getValue() == obj) {
            return th;
        }
        Exceptions.addCause(th, new OnNextValue(obj));
        return th;
    }

    public static class OnNextValue extends RuntimeException {
        private static final long serialVersionUID = -3454462756050397899L;
        private final Object value;

        private static final class Primitives {
            static final Set<Class<?>> INSTANCE = create();

            private Primitives() {
            }

            private static Set<Class<?>> create() {
                HashSet hashSet = new HashSet();
                hashSet.add(Boolean.class);
                hashSet.add(Character.class);
                hashSet.add(Byte.class);
                hashSet.add(Short.class);
                hashSet.add(Integer.class);
                hashSet.add(Long.class);
                hashSet.add(Float.class);
                hashSet.add(Double.class);
                return hashSet;
            }
        }

        public OnNextValue(Object obj) {
            super("OnError while emitting onNext value: " + renderValue(obj));
            this.value = obj;
        }

        public Object getValue() {
            return this.value;
        }

        static String renderValue(Object obj) {
            if (obj == null) {
                return IConstant.DEFAULT_PATH;
            }
            if (Primitives.INSTANCE.contains(obj.getClass())) {
                return obj.toString();
            }
            if (obj instanceof String) {
                return (String) obj;
            }
            if (obj instanceof Enum) {
                return ((Enum) obj).name();
            }
            String handleOnNextValueRendering = RxJavaPlugins.getInstance().getErrorHandler().handleOnNextValueRendering(obj);
            if (handleOnNextValueRendering != null) {
                return handleOnNextValueRendering;
            }
            return obj.getClass().getName() + ".class";
        }
    }
}
