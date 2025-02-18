package com.google.zxing.common.reedsolomon;

/* loaded from: classes.dex */
final class GenericGFPoly {
    private final int[] coefficients;
    private final GenericGF field;

    GenericGFPoly(GenericGF genericGF, int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.field = genericGF;
        int length = iArr.length;
        int i = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.coefficients = iArr;
            return;
        }
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.coefficients = genericGF.getZero().coefficients;
            return;
        }
        int[] iArr2 = new int[length - i];
        this.coefficients = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
    }

    GenericGFPoly addOrSubtract(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (isZero()) {
            return genericGFPoly;
        }
        if (genericGFPoly.isZero()) {
            return this;
        }
        int[] iArr = this.coefficients;
        int[] iArr2 = genericGFPoly.coefficients;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = GenericGF.addOrSubtract(iArr2[i - length], iArr[i]);
        }
        return new GenericGFPoly(this.field, iArr3);
    }

    GenericGFPoly[] divide(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (genericGFPoly.isZero()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        GenericGFPoly zero = this.field.getZero();
        int inverse = this.field.inverse(genericGFPoly.getCoefficient(genericGFPoly.getDegree()));
        GenericGFPoly genericGFPoly2 = this;
        while (genericGFPoly2.getDegree() >= genericGFPoly.getDegree() && !genericGFPoly2.isZero()) {
            int degree = genericGFPoly2.getDegree() - genericGFPoly.getDegree();
            int multiply = this.field.multiply(genericGFPoly2.getCoefficient(genericGFPoly2.getDegree()), inverse);
            GenericGFPoly multiplyByMonomial = genericGFPoly.multiplyByMonomial(degree, multiply);
            zero = zero.addOrSubtract(this.field.buildMonomial(degree, multiply));
            genericGFPoly2 = genericGFPoly2.addOrSubtract(multiplyByMonomial);
        }
        return new GenericGFPoly[]{zero, genericGFPoly2};
    }

    int evaluateAt(int i) {
        if (i == 0) {
            return getCoefficient(0);
        }
        int[] iArr = this.coefficients;
        int length = iArr.length;
        if (i == 1) {
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                i2 = GenericGF.addOrSubtract(i2, this.coefficients[i3]);
            }
            return i2;
        }
        int i4 = iArr[0];
        for (int i5 = 1; i5 < length; i5++) {
            i4 = GenericGF.addOrSubtract(this.field.multiply(i, i4), this.coefficients[i5]);
        }
        return i4;
    }

    int getCoefficient(int i) {
        return this.coefficients[(r0.length - 1) - i];
    }

    int[] getCoefficients() {
        return this.coefficients;
    }

    int getDegree() {
        return this.coefficients.length - 1;
    }

    boolean isZero() {
        return this.coefficients[0] == 0;
    }

    GenericGFPoly multiply(int i) {
        if (i == 0) {
            return this.field.getZero();
        }
        if (i == 1) {
            return this;
        }
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.field.multiply(this.coefficients[i2], i);
        }
        return new GenericGFPoly(this.field, iArr);
    }

    GenericGFPoly multiply(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (isZero() || genericGFPoly.isZero()) {
            return this.field.getZero();
        }
        int[] iArr = this.coefficients;
        int length = iArr.length;
        int[] iArr2 = genericGFPoly.coefficients;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = GenericGF.addOrSubtract(iArr3[i4], this.field.multiply(i2, iArr2[i3]));
            }
        }
        return new GenericGFPoly(this.field, iArr3);
    }

    GenericGFPoly multiplyByMonomial(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.field.getZero();
        }
        int length = this.coefficients.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.field.multiply(this.coefficients[i3], i2);
        }
        return new GenericGFPoly(this.field, iArr);
    }

    public String toString() {
        char c;
        StringBuffer stringBuffer = new StringBuffer(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    stringBuffer.append(" - ");
                    coefficient = -coefficient;
                } else if (stringBuffer.length() > 0) {
                    stringBuffer.append(" + ");
                }
                if (degree == 0 || coefficient != 1) {
                    int log = this.field.log(coefficient);
                    if (log == 0) {
                        c = '1';
                    } else if (log == 1) {
                        c = 'a';
                    } else {
                        stringBuffer.append("a^");
                        stringBuffer.append(log);
                    }
                    stringBuffer.append(c);
                }
                if (degree != 0) {
                    if (degree == 1) {
                        stringBuffer.append('x');
                    } else {
                        stringBuffer.append("x^");
                        stringBuffer.append(degree);
                    }
                }
            }
        }
        return stringBuffer.toString();
    }
}
