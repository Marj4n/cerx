package com.serenegiant.utils;

import android.os.Build;

/* loaded from: classes2.dex */
public final class BuildCheck {
    private static final boolean check(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    public static boolean isCurrentDevelopment() {
        return Build.VERSION.SDK_INT == 10000;
    }

    public static boolean isBase() {
        return check(1);
    }

    public static boolean isBase11() {
        return check(2);
    }

    public static boolean isCupcake() {
        return check(3);
    }

    public static boolean isAndroid1_5() {
        return check(3);
    }

    public static boolean isDonut() {
        return check(4);
    }

    public static boolean isAndroid1_6() {
        return check(4);
    }

    public static boolean isEclair() {
        return check(5);
    }

    public static boolean isAndroid2_0() {
        return check(5);
    }

    public static boolean isEclair01() {
        return check(6);
    }

    public static boolean isEclairMR1() {
        return check(7);
    }

    public static boolean isFroyo() {
        return check(8);
    }

    public static boolean isAndroid2_2() {
        return check(8);
    }

    public static boolean isGingerBread() {
        return check(9);
    }

    public static boolean isAndroid2_3() {
        return check(9);
    }

    public static boolean isGingerBreadMR1() {
        return check(10);
    }

    public static boolean isAndroid2_3_3() {
        return check(10);
    }

    public static boolean isHoneyComb() {
        return check(11);
    }

    public static boolean isAndroid3() {
        return check(11);
    }

    public static boolean isHoneyCombMR1() {
        return check(12);
    }

    public static boolean isAndroid3_1() {
        return check(12);
    }

    public static boolean isHoneyCombMR2() {
        return check(13);
    }

    public static boolean isAndroid3_2() {
        return check(13);
    }

    public static boolean isIcecreamSandwich() {
        return check(14);
    }

    public static boolean isAndroid4() {
        return check(14);
    }

    public static boolean isIcecreamSandwichMR1() {
        return check(15);
    }

    public static boolean isAndroid4_0_3() {
        return check(15);
    }

    public static boolean isJellyBean() {
        return check(16);
    }

    public static boolean isAndroid4_1() {
        return check(16);
    }

    public static boolean isJellyBeanMr1() {
        return check(17);
    }

    public static boolean isAndroid4_2() {
        return check(17);
    }

    public static boolean isJellyBeanMR2() {
        return check(18);
    }

    public static boolean isAndroid4_3() {
        return check(18);
    }

    public static boolean isKitKat() {
        return check(19);
    }

    public static boolean isAndroid4_4() {
        return check(19);
    }

    public static boolean isKitKatWatch() {
        return Build.VERSION.SDK_INT >= 20;
    }

    public static boolean isL() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static boolean isLollipop() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static boolean isAndroid5() {
        return check(21);
    }

    public static boolean isLollipopMR1() {
        return Build.VERSION.SDK_INT >= 22;
    }

    public static boolean isM() {
        return check(23);
    }

    public static boolean isMarshmallow() {
        return check(23);
    }

    public static boolean isAndroid6() {
        return check(23);
    }

    public static boolean isN() {
        return check(24);
    }

    public static boolean isNougat() {
        return check(24);
    }

    public static boolean isAndroid7() {
        return check(24);
    }

    public static boolean isNMR1() {
        return check(25);
    }

    public static boolean isNougatMR1() {
        return check(25);
    }

    public static boolean isO() {
        return check(26);
    }

    public static boolean isOreo() {
        return check(26);
    }

    public static boolean isAndroid8() {
        return check(26);
    }

    public static boolean isOMR1() {
        return check(27);
    }

    public static boolean isOreoMR1() {
        return check(27);
    }

    public static boolean isP() {
        return check(28);
    }

    public static boolean isPie() {
        return check(28);
    }

    public static boolean isAndroid9() {
        return check(28);
    }
}
