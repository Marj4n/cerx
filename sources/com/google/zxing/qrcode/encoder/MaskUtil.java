package com.google.zxing.qrcode.encoder;

/* loaded from: classes.dex */
public final class MaskUtil {
    private MaskUtil() {
    }

    public static int applyMaskPenaltyRule1(ByteMatrix byteMatrix) {
        return applyMaskPenaltyRule1Internal(byteMatrix, true) + applyMaskPenaltyRule1Internal(byteMatrix, false);
    }

    private static int applyMaskPenaltyRule1Internal(ByteMatrix byteMatrix, boolean z) {
        int height = z ? byteMatrix.getHeight() : byteMatrix.getWidth();
        int width = z ? byteMatrix.getWidth() : byteMatrix.getHeight();
        byte[][] array = byteMatrix.getArray();
        byte b = -1;
        int i = 0;
        for (int i2 = 0; i2 < height; i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < width; i4++) {
                byte b2 = z ? array[i2][i4] : array[i4][i2];
                if (b2 == b) {
                    i3++;
                    if (i3 == 5) {
                        i += 3;
                    } else if (i3 > 5) {
                        i++;
                    }
                } else {
                    b = b2;
                    i3 = 1;
                }
            }
        }
        return i;
    }

    public static int applyMaskPenaltyRule2(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i = 0;
        for (int i2 = 0; i2 < height - 1; i2++) {
            int i3 = 0;
            while (i3 < width - 1) {
                byte b = array[i2][i3];
                int i4 = i3 + 1;
                if (b == array[i2][i4]) {
                    int i5 = i2 + 1;
                    if (b == array[i5][i3] && b == array[i5][i4]) {
                        i += 3;
                    }
                }
                i3 = i4;
            }
        }
        return i;
    }

    public static int applyMaskPenaltyRule3(ByteMatrix byteMatrix) {
        int i;
        int i2;
        int i3;
        int i4;
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i5 = 0;
        for (int i6 = 0; i6 < height; i6++) {
            for (int i7 = 0; i7 < width; i7++) {
                int i8 = i7 + 6;
                if (i8 < width && array[i6][i7] == 1 && array[i6][i7 + 1] == 0 && array[i6][i7 + 2] == 1 && array[i6][i7 + 3] == 1 && array[i6][i7 + 4] == 1 && array[i6][i7 + 5] == 0 && array[i6][i8] == 1 && (((i3 = i7 + 10) < width && array[i6][i7 + 7] == 0 && array[i6][i7 + 8] == 0 && array[i6][i7 + 9] == 0 && array[i6][i3] == 0) || (i7 - 4 >= 0 && array[i6][i7 - 1] == 0 && array[i6][i7 - 2] == 0 && array[i6][i7 - 3] == 0 && array[i6][i4] == 0))) {
                    i5 += 40;
                }
                int i9 = i6 + 6;
                if (i9 < height && array[i6][i7] == 1 && array[i6 + 1][i7] == 0 && array[i6 + 2][i7] == 1 && array[i6 + 3][i7] == 1 && array[i6 + 4][i7] == 1 && array[i6 + 5][i7] == 0 && array[i9][i7] == 1 && (((i = i6 + 10) < height && array[i6 + 7][i7] == 0 && array[i6 + 8][i7] == 0 && array[i6 + 9][i7] == 0 && array[i][i7] == 0) || (i6 - 4 >= 0 && array[i6 - 1][i7] == 0 && array[i6 - 2][i7] == 0 && array[i6 - 3][i7] == 0 && array[i2][i7] == 0))) {
                    i5 += 40;
                }
            }
        }
        return i5;
    }

    public static int applyMaskPenaltyRule4(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i = 0;
        for (int i2 = 0; i2 < height; i2++) {
            for (int i3 = 0; i3 < width; i3++) {
                if (array[i2][i3] == 1) {
                    i++;
                }
            }
        }
        return (Math.abs((int) (((i / (byteMatrix.getHeight() * byteMatrix.getWidth())) * 100.0d) - 50.0d)) / 5) * 10;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004d A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean getDataMaskBit(int r1, int r2, int r3) {
        /*
            boolean r0 = com.google.zxing.qrcode.encoder.QRCode.isValidMaskPattern(r1)
            if (r0 == 0) goto L4f
            r0 = 1
            switch(r1) {
                case 0: goto L47;
                case 1: goto L48;
                case 2: goto L44;
                case 3: goto L40;
                case 4: goto L39;
                case 5: goto L31;
                case 6: goto L29;
                case 7: goto L21;
                default: goto La;
            }
        La:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.StringBuffer r3 = new java.lang.StringBuffer
            r3.<init>()
            java.lang.String r0 = "Invalid mask pattern: "
            r3.append(r0)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L21:
            int r1 = r3 * r2
            int r1 = r1 % 3
            int r3 = r3 + r2
            r2 = r3 & 1
            goto L3d
        L29:
            int r3 = r3 * r2
            r1 = r3 & 1
            int r3 = r3 % 3
            int r1 = r1 + r3
            goto L3e
        L31:
            int r3 = r3 * r2
            r1 = r3 & 1
            int r3 = r3 % 3
            int r1 = r1 + r3
            goto L4a
        L39:
            int r1 = r3 >>> 1
            int r2 = r2 / 3
        L3d:
            int r1 = r1 + r2
        L3e:
            r1 = r1 & r0
            goto L4a
        L40:
            int r3 = r3 + r2
            int r1 = r3 % 3
            goto L4a
        L44:
            int r1 = r2 % 3
            goto L4a
        L47:
            int r3 = r3 + r2
        L48:
            r1 = r3 & 1
        L4a:
            if (r1 != 0) goto L4d
            goto L4e
        L4d:
            r0 = 0
        L4e:
            return r0
        L4f:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "Invalid mask pattern"
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.encoder.MaskUtil.getDataMaskBit(int, int, int):boolean");
    }
}
