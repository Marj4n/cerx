package com.google.zxing.aztec.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;

/* loaded from: classes.dex */
public final class Detector {
    private boolean compact;
    private final BitMatrix image;
    private int nbCenterLayers;
    private int nbDataBlocks;
    private int nbLayers;
    private int shift;

    private static class Point {
        public final int x;
        public final int y;

        private Point(int i, int i2) {
            this.x = i;
            this.y = i2;
        }

        public ResultPoint toResultPoint() {
            return new ResultPoint(this.x, this.y);
        }
    }

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private static void correctParameterData(boolean[] zArr, boolean z) throws NotFoundException {
        int i;
        int i2;
        if (z) {
            i = 7;
            i2 = 2;
        } else {
            i = 10;
            i2 = 4;
        }
        int i3 = i - i2;
        int[] iArr = new int[i];
        int i4 = 0;
        while (true) {
            if (i4 >= i) {
                try {
                    break;
                } catch (ReedSolomonException unused) {
                    throw NotFoundException.getNotFoundInstance();
                }
            }
            int i5 = 1;
            for (int i6 = 1; i6 <= 4; i6++) {
                if (zArr[((4 * i4) + 4) - i6]) {
                    iArr[i4] = iArr[i4] + i5;
                }
                i5 <<= 1;
            }
            i4++;
        }
        new ReedSolomonDecoder(GenericGF.AZTEC_PARAM).decode(iArr, i3);
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = 1;
            for (int i9 = 1; i9 <= 4; i9++) {
                zArr[((i7 * 4) + 4) - i9] = (iArr[i7] & i8) == i8;
                i8 <<= 1;
            }
        }
    }

    private static float distance(Point point, Point point2) {
        return (float) Math.sqrt(((point.x - point2.x) * (point.x - point2.x)) + ((point.y - point2.y) * (point.y - point2.y)));
    }

    private void extractParameters(Point[] pointArr) throws NotFoundException {
        boolean[] zArr;
        int i = 0;
        boolean[] sampleLine = sampleLine(pointArr[0], pointArr[1], (this.nbCenterLayers * 2) + 1);
        boolean[] sampleLine2 = sampleLine(pointArr[1], pointArr[2], (this.nbCenterLayers * 2) + 1);
        boolean[] sampleLine3 = sampleLine(pointArr[2], pointArr[3], (this.nbCenterLayers * 2) + 1);
        boolean[] sampleLine4 = sampleLine(pointArr[3], pointArr[0], (this.nbCenterLayers * 2) + 1);
        if (sampleLine[0] && sampleLine[this.nbCenterLayers * 2]) {
            this.shift = 0;
        } else if (sampleLine2[0] && sampleLine2[this.nbCenterLayers * 2]) {
            this.shift = 1;
        } else if (sampleLine3[0] && sampleLine3[this.nbCenterLayers * 2]) {
            this.shift = 2;
        } else {
            if (!sampleLine4[0] || !sampleLine4[this.nbCenterLayers * 2]) {
                throw NotFoundException.getNotFoundInstance();
            }
            this.shift = 3;
        }
        if (this.compact) {
            boolean[] zArr2 = new boolean[28];
            for (int i2 = 0; i2 < 7; i2++) {
                int i3 = i2 + 2;
                zArr2[i2] = sampleLine[i3];
                zArr2[i2 + 7] = sampleLine2[i3];
                zArr2[i2 + 14] = sampleLine3[i3];
                zArr2[i2 + 21] = sampleLine4[i3];
            }
            zArr = new boolean[28];
            while (i < 28) {
                zArr[i] = zArr2[((this.shift * 7) + i) % 28];
                i++;
            }
        } else {
            boolean[] zArr3 = new boolean[40];
            for (int i4 = 0; i4 < 11; i4++) {
                if (i4 < 5) {
                    int i5 = i4 + 2;
                    zArr3[i4] = sampleLine[i5];
                    zArr3[i4 + 10] = sampleLine2[i5];
                    zArr3[i4 + 20] = sampleLine3[i5];
                    zArr3[i4 + 30] = sampleLine4[i5];
                }
                if (i4 > 5) {
                    int i6 = i4 + 2;
                    zArr3[i4 - 1] = sampleLine[i6];
                    zArr3[(i4 + 10) - 1] = sampleLine2[i6];
                    zArr3[(i4 + 20) - 1] = sampleLine3[i6];
                    zArr3[(i4 + 30) - 1] = sampleLine4[i6];
                }
            }
            zArr = new boolean[40];
            while (i < 40) {
                zArr[i] = zArr3[((this.shift * 10) + i) % 40];
                i++;
            }
        }
        correctParameterData(zArr, this.compact);
        getParameters(zArr);
    }

    private Point[] getBullEyeCornerPoints(Point point) throws NotFoundException {
        this.nbCenterLayers = 1;
        Point point2 = point;
        Point point3 = point2;
        Point point4 = point3;
        Point point5 = point4;
        boolean z = true;
        while (this.nbCenterLayers < 9) {
            Point firstDifferent = getFirstDifferent(point2, z, 1, -1);
            Point firstDifferent2 = getFirstDifferent(point3, z, 1, 1);
            Point firstDifferent3 = getFirstDifferent(point4, z, -1, 1);
            Point firstDifferent4 = getFirstDifferent(point5, z, -1, -1);
            if (this.nbCenterLayers > 2) {
                double distance = (distance(firstDifferent4, firstDifferent) * this.nbCenterLayers) / (distance(point5, point2) * (this.nbCenterLayers + 2));
                if (distance < 0.75d || distance > 1.25d || !isWhiteOrBlackRectangle(firstDifferent, firstDifferent2, firstDifferent3, firstDifferent4)) {
                    break;
                }
            }
            z = !z;
            this.nbCenterLayers++;
            point5 = firstDifferent4;
            point2 = firstDifferent;
            point3 = firstDifferent2;
            point4 = firstDifferent3;
        }
        int i = this.nbCenterLayers;
        if (i != 5 && i != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.compact = this.nbCenterLayers == 5;
        float f = 1.5f / ((this.nbCenterLayers * 2) - 3);
        int i2 = point2.x - point4.x;
        int i3 = point2.y - point4.y;
        float f2 = i2 * f;
        int round = round(point4.x - f2);
        float f3 = i3 * f;
        int round2 = round(point4.y - f3);
        int round3 = round(point2.x + f2);
        int round4 = round(point2.y + f3);
        int i4 = point3.x - point5.x;
        int i5 = point3.y - point5.y;
        float f4 = i4 * f;
        int round5 = round(point5.x - f4);
        float f5 = f * i5;
        int round6 = round(point5.y - f5);
        int round7 = round(point3.x + f4);
        int round8 = round(point3.y + f5);
        if (!isValid(round3, round4) || !isValid(round7, round8) || !isValid(round, round2) || !isValid(round5, round6)) {
            throw NotFoundException.getNotFoundInstance();
        }
        return new Point[]{new Point(round3, round4), new Point(round7, round8), new Point(round, round2), new Point(round5, round6)};
    }

    private int getColor(Point point, Point point2) {
        float distance = distance(point, point2);
        float f = (point2.x - point.x) / distance;
        float f2 = (point2.y - point.y) / distance;
        float f3 = point.x;
        float f4 = point.y;
        boolean z = this.image.get(point.x, point.y);
        int i = 0;
        for (int i2 = 0; i2 < distance; i2++) {
            f3 += f;
            f4 += f2;
            if (this.image.get(round(f3), round(f4)) != z) {
                i++;
            }
        }
        double d = i / distance;
        if (d <= 0.1d || d >= 0.9d) {
            return d <= 0.1d ? z ? 1 : -1 : z ? -1 : 1;
        }
        return 0;
    }

    private Point getFirstDifferent(Point point, boolean z, int i, int i2) {
        int i3 = point.x + i;
        int i4 = point.y;
        while (true) {
            i4 += i2;
            if (!isValid(i3, i4) || this.image.get(i3, i4) != z) {
                break;
            }
            i3 += i;
        }
        int i5 = i3 - i;
        int i6 = i4 - i2;
        while (isValid(i5, i6) && this.image.get(i5, i6) == z) {
            i5 += i;
        }
        int i7 = i5 - i;
        while (isValid(i7, i6) && this.image.get(i7, i6) == z) {
            i6 += i2;
        }
        return new Point(i7, i6 - i2);
    }

    private Point getMatrixCenter() {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        ResultPoint resultPoint4;
        ResultPoint resultPoint5;
        ResultPoint resultPoint6;
        ResultPoint resultPoint7;
        ResultPoint resultPoint8;
        try {
            ResultPoint[] detect = new WhiteRectangleDetector(this.image).detect();
            resultPoint3 = detect[0];
            resultPoint4 = detect[1];
            resultPoint2 = detect[2];
            resultPoint = detect[3];
        } catch (NotFoundException unused) {
            int i = this.image.width / 2;
            int i2 = this.image.height / 2;
            int i3 = i + 7;
            int i4 = i2 - 7;
            ResultPoint resultPoint9 = getFirstDifferent(new Point(i3, i4), false, 1, -1).toResultPoint();
            int i5 = i2 + 7;
            ResultPoint resultPoint10 = getFirstDifferent(new Point(i3, i5), false, 1, 1).toResultPoint();
            int i6 = i - 7;
            ResultPoint resultPoint11 = getFirstDifferent(new Point(i6, i5), false, -1, 1).toResultPoint();
            resultPoint = getFirstDifferent(new Point(i6, i4), false, -1, -1).toResultPoint();
            resultPoint2 = resultPoint11;
            resultPoint3 = resultPoint9;
            resultPoint4 = resultPoint10;
        }
        int round = round((((resultPoint3.getX() + resultPoint.getX()) + resultPoint4.getX()) + resultPoint2.getX()) / 4.0f);
        int round2 = round((((resultPoint3.getY() + resultPoint.getY()) + resultPoint4.getY()) + resultPoint2.getY()) / 4.0f);
        try {
            ResultPoint[] detect2 = new WhiteRectangleDetector(this.image, 15, round, round2).detect();
            resultPoint5 = detect2[0];
            resultPoint6 = detect2[1];
            resultPoint7 = detect2[2];
            resultPoint8 = detect2[3];
        } catch (NotFoundException unused2) {
            int i7 = round + 7;
            int i8 = round2 - 7;
            resultPoint5 = getFirstDifferent(new Point(i7, i8), false, 1, -1).toResultPoint();
            int i9 = round2 + 7;
            resultPoint6 = getFirstDifferent(new Point(i7, i9), false, 1, 1).toResultPoint();
            int i10 = round - 7;
            resultPoint7 = getFirstDifferent(new Point(i10, i9), false, -1, 1).toResultPoint();
            resultPoint8 = getFirstDifferent(new Point(i10, i8), false, -1, -1).toResultPoint();
        }
        return new Point(round((((resultPoint5.getX() + resultPoint8.getX()) + resultPoint6.getX()) + resultPoint7.getX()) / 4.0f), round((((resultPoint5.getY() + resultPoint8.getY()) + resultPoint6.getY()) + resultPoint7.getY()) / 4.0f));
    }

    private ResultPoint[] getMatrixCornerPoints(Point[] pointArr) throws NotFoundException {
        float f = (((r0 * 2) + (this.nbLayers > 4 ? 1 : 0)) + ((this.nbLayers - 4) / 8)) / (this.nbCenterLayers * 2.0f);
        int i = pointArr[0].x - pointArr[2].x;
        int i2 = i + (i > 0 ? 1 : -1);
        int i3 = pointArr[0].y - pointArr[2].y;
        int i4 = i3 + (i3 > 0 ? 1 : -1);
        float f2 = i2 * f;
        int round = round(pointArr[2].x - f2);
        float f3 = i4 * f;
        int round2 = round(pointArr[2].y - f3);
        int round3 = round(pointArr[0].x + f2);
        int round4 = round(pointArr[0].y + f3);
        int i5 = pointArr[1].x - pointArr[3].x;
        int i6 = i5 + (i5 > 0 ? 1 : -1);
        int i7 = pointArr[1].y - pointArr[3].y;
        int i8 = i7 + (i7 > 0 ? 1 : -1);
        float f4 = i6 * f;
        int round5 = round(pointArr[3].x - f4);
        float f5 = f * i8;
        int round6 = round(pointArr[3].y - f5);
        int round7 = round(pointArr[1].x + f4);
        int round8 = round(pointArr[1].y + f5);
        if (isValid(round3, round4) && isValid(round7, round8) && isValid(round, round2) && isValid(round5, round6)) {
            return new ResultPoint[]{new ResultPoint(round3, round4), new ResultPoint(round7, round8), new ResultPoint(round, round2), new ResultPoint(round5, round6)};
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void getParameters(boolean[] zArr) {
        int i;
        int i2;
        if (this.compact) {
            i = 2;
            i2 = 6;
        } else {
            i = 5;
            i2 = 11;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = this.nbLayers << 1;
            this.nbLayers = i4;
            if (zArr[i3]) {
                this.nbLayers = i4 + 1;
            }
        }
        for (int i5 = i; i5 < i + i2; i5++) {
            int i6 = this.nbDataBlocks << 1;
            this.nbDataBlocks = i6;
            if (zArr[i5]) {
                this.nbDataBlocks = i6 + 1;
            }
        }
        this.nbLayers++;
        this.nbDataBlocks++;
    }

    private boolean isValid(int i, int i2) {
        return i >= 0 && i < this.image.width && i2 > 0 && i2 < this.image.height;
    }

    private boolean isWhiteOrBlackRectangle(Point point, Point point2, Point point3, Point point4) {
        int color;
        int color2;
        int color3;
        Point point5 = new Point(point.x - 3, point.y + 3);
        Point point6 = new Point(point2.x - 3, point2.y - 3);
        Point point7 = new Point(point3.x + 3, point3.y - 3);
        Point point8 = new Point(point4.x + 3, point4.y + 3);
        int color4 = getColor(point8, point5);
        return (color4 == 0 || (color = getColor(point5, point6)) != color4 || color == 0 || (color2 = getColor(point6, point7)) != color4 || color2 == 0 || (color3 = getColor(point7, point8)) != color4 || color3 == 0) ? false : true;
    }

    private static int round(float f) {
        return (int) (f + 0.5f);
    }

    private BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) throws NotFoundException {
        int i;
        if (this.compact) {
            i = (this.nbLayers * 4) + 11;
        } else {
            int i2 = this.nbLayers;
            i = i2 <= 4 ? (i2 * 4) + 15 : (i2 * 4) + ((((i2 - 4) / 8) + 1) * 2) + 15;
        }
        int i3 = i;
        float f = i3 - 0.5f;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i3, i3, 0.5f, 0.5f, f, 0.5f, f, f, 0.5f, f, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private boolean[] sampleLine(Point point, Point point2, int i) {
        boolean[] zArr = new boolean[i];
        float distance = distance(point, point2);
        float f = distance / (i - 1);
        float f2 = ((point2.x - point.x) * f) / distance;
        float f3 = (f * (point2.y - point.y)) / distance;
        float f4 = point.x;
        float f5 = point.y;
        for (int i2 = 0; i2 < i; i2++) {
            zArr[i2] = this.image.get(round(f4), round(f5));
            f4 += f2;
            f5 += f3;
        }
        return zArr;
    }

    public AztecDetectorResult detect() throws NotFoundException {
        Point[] bullEyeCornerPoints = getBullEyeCornerPoints(getMatrixCenter());
        extractParameters(bullEyeCornerPoints);
        ResultPoint[] matrixCornerPoints = getMatrixCornerPoints(bullEyeCornerPoints);
        BitMatrix bitMatrix = this.image;
        int i = this.shift;
        return new AztecDetectorResult(sampleGrid(bitMatrix, matrixCornerPoints[i % 4], matrixCornerPoints[(i + 3) % 4], matrixCornerPoints[(i + 2) % 4], matrixCornerPoints[(i + 1) % 4]), matrixCornerPoints, this.compact, this.nbDataBlocks, this.nbLayers);
    }
}
