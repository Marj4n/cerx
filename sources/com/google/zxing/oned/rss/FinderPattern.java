package com.google.zxing.oned.rss;

import com.google.zxing.ResultPoint;

/* loaded from: classes.dex */
public final class FinderPattern {
    private final ResultPoint[] resultPoints;
    private final int[] startEnd;
    private final int value;

    public FinderPattern(int i, int[] iArr, int i2, int i3, int i4) {
        this.value = i;
        this.startEnd = iArr;
        float f = i4;
        this.resultPoints = new ResultPoint[]{new ResultPoint(i2, f), new ResultPoint(i3, f)};
    }

    public ResultPoint[] getResultPoints() {
        return this.resultPoints;
    }

    public int[] getStartEnd() {
        return this.startEnd;
    }

    public int getValue() {
        return this.value;
    }
}
