package com.google.zxing.common;

import com.google.zxing.ResultPoint;

/* loaded from: classes.dex */
public class DetectorResult {
    private final BitMatrix bits;
    private final ResultPoint[] points;

    public DetectorResult(BitMatrix bitMatrix, ResultPoint[] resultPointArr) {
        this.bits = bitMatrix;
        this.points = resultPointArr;
    }

    public BitMatrix getBits() {
        return this.bits;
    }

    public ResultPoint[] getPoints() {
        return this.points;
    }
}
