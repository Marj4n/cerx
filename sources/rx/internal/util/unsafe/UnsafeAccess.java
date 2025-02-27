package rx.internal.util.unsafe;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public final class UnsafeAccess {
    private static final boolean DISABLED_BY_USER;
    public static final Unsafe UNSAFE;

    private UnsafeAccess() {
        throw new IllegalStateException("No instances!");
    }

    static {
        DISABLED_BY_USER = System.getProperty("rx.unsafe-disable") != null;
        Unsafe unsafe = null;
        try {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            unsafe = (Unsafe) declaredField.get(null);
        } catch (Throwable unused) {
        }
        UNSAFE = unsafe;
    }

    public static boolean isUnsafeAvailable() {
        return (UNSAFE == null || DISABLED_BY_USER) ? false : true;
    }

    public static int getAndIncrementInt(Object obj, long j) {
        int intVolatile;
        do {
            intVolatile = UNSAFE.getIntVolatile(obj, j);
        } while (!UNSAFE.compareAndSwapInt(obj, j, intVolatile, intVolatile + 1));
        return intVolatile;
    }

    public static int getAndAddInt(Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = UNSAFE.getIntVolatile(obj, j);
        } while (!UNSAFE.compareAndSwapInt(obj, j, intVolatile, intVolatile + i));
        return intVolatile;
    }

    public static int getAndSetInt(Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = UNSAFE.getIntVolatile(obj, j);
        } while (!UNSAFE.compareAndSwapInt(obj, j, intVolatile, i));
        return intVolatile;
    }

    public static boolean compareAndSwapInt(Object obj, long j, int i, int i2) {
        return UNSAFE.compareAndSwapInt(obj, j, i, i2);
    }

    public static long addressOf(Class<?> cls, String str) {
        try {
            return UNSAFE.objectFieldOffset(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            InternalError internalError = new InternalError();
            internalError.initCause(e);
            throw internalError;
        }
    }
}
