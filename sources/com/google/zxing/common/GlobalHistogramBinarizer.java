package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
import kotlin.UByte;

/* loaded from: classes.dex */
public class GlobalHistogramBinarizer extends Binarizer {
    private static final int LUMINANCE_BITS = 5;
    private static final int LUMINANCE_BUCKETS = 32;
    private static final int LUMINANCE_SHIFT = 3;
    private int[] buckets;
    private byte[] luminances;

    public GlobalHistogramBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
        this.luminances = null;
        this.buckets = null;
    }

    private static int estimateBlackPoint(int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (iArr[i4] > i) {
                i = iArr[i4];
                i3 = i4;
            }
            if (iArr[i4] > i2) {
                i2 = iArr[i4];
            }
        }
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            int i8 = i7 - i3;
            int i9 = iArr[i7] * i8 * i8;
            if (i9 > i6) {
                i5 = i7;
                i6 = i9;
            }
        }
        if (i3 <= i5) {
            int i10 = i3;
            i3 = i5;
            i5 = i10;
        }
        if (i3 - i5 <= (length >> 4)) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i11 = i3 - 1;
        int i12 = i11;
        int i13 = -1;
        while (i11 > i5) {
            int i14 = i11 - i5;
            int i15 = i14 * i14 * (i3 - i11) * (i2 - iArr[i11]);
            if (i15 > i13) {
                i12 = i11;
                i13 = i15;
            }
            i11--;
        }
        return i12 << 3;
    }

    private void initArrays(int i) {
        byte[] bArr = this.luminances;
        if (bArr == null || bArr.length < i) {
            this.luminances = new byte[i];
        }
        if (this.buckets == null) {
            this.buckets = new int[32];
            return;
        }
        for (int i2 = 0; i2 < 32; i2++) {
            this.buckets[i2] = 0;
        }
    }

    @Override // com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new GlobalHistogramBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        BitMatrix bitMatrix = new BitMatrix(width, height);
        initArrays(width);
        int[] iArr = this.buckets;
        for (int i = 1; i < 5; i++) {
            byte[] row = luminanceSource.getRow((height * i) / 5, this.luminances);
            int i2 = (width << 2) / 5;
            for (int i3 = width / 5; i3 < i2; i3++) {
                int i4 = (row[i3] & UByte.MAX_VALUE) >> 3;
                iArr[i4] = iArr[i4] + 1;
            }
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        byte[] matrix = luminanceSource.getMatrix();
        for (int i5 = 0; i5 < height; i5++) {
            int i6 = i5 * width;
            for (int i7 = 0; i7 < width; i7++) {
                if ((matrix[i6 + i7] & UByte.MAX_VALUE) < estimateBlackPoint) {
                    bitMatrix.set(i7, i5);
                }
            }
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Binarizer
    public BitArray getBlackRow(int i, BitArray bitArray) throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        if (bitArray == null || bitArray.getSize() < width) {
            bitArray = new BitArray(width);
        } else {
            bitArray.clear();
        }
        initArrays(width);
        byte[] row = luminanceSource.getRow(i, this.luminances);
        int[] iArr = this.buckets;
        for (int i2 = 0; i2 < width; i2++) {
            int i3 = (row[i2] & UByte.MAX_VALUE) >> 3;
            iArr[i3] = iArr[i3] + 1;
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        int i4 = 1;
        int i5 = row[0] & UByte.MAX_VALUE;
        int i6 = row[1] & UByte.MAX_VALUE;
        while (i4 < width - 1) {
            int i7 = i4 + 1;
            int i8 = row[i7] & UByte.MAX_VALUE;
            if (((((i6 << 2) - i5) - i8) >> 1) < estimateBlackPoint) {
                bitArray.set(i4);
            }
            i5 = i6;
            i4 = i7;
            i6 = i8;
        }
        return bitArray;
    }
}
