package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Hashtable;

/* loaded from: classes.dex */
public final class EAN13Writer extends UPCEANWriter {
    private static final int codeWidth = 95;

    @Override // com.google.zxing.oned.UPCEANWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Hashtable hashtable) throws WriterException {
        if (barcodeFormat == BarcodeFormat.EAN_13) {
            return super.encode(str, barcodeFormat, i, i2, hashtable);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Can only encode EAN_13, but got ");
        stringBuffer.append(barcodeFormat);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    @Override // com.google.zxing.oned.UPCEANWriter
    public byte[] encode(String str) {
        if (str.length() != 13) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Requested contents should be 13 digits long, but got ");
            stringBuffer.append(str.length());
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        int i = EAN13Reader.FIRST_DIGIT_ENCODINGS[Integer.parseInt(str.substring(0, 1))];
        byte[] bArr = new byte[95];
        int appendPattern = appendPattern(bArr, 0, UPCEANReader.START_END_PATTERN, 1) + 0;
        int i2 = 1;
        while (i2 <= 6) {
            int i3 = i2 + 1;
            int parseInt = Integer.parseInt(str.substring(i2, i3));
            if (((i >> (6 - i2)) & 1) == 1) {
                parseInt += 10;
            }
            appendPattern += appendPattern(bArr, appendPattern, UPCEANReader.L_AND_G_PATTERNS[parseInt], 0);
            i2 = i3;
        }
        int appendPattern2 = appendPattern + appendPattern(bArr, appendPattern, UPCEANReader.MIDDLE_PATTERN, 0);
        int i4 = 7;
        while (i4 <= 12) {
            int i5 = i4 + 1;
            appendPattern2 += appendPattern(bArr, appendPattern2, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i4, i5))], 1);
            i4 = i5;
        }
        appendPattern(bArr, appendPattern2, UPCEANReader.START_END_PATTERN, 1);
        return bArr;
    }
}
