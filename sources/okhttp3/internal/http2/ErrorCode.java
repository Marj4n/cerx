package okhttp3.internal.http2;

/* loaded from: classes2.dex */
public enum ErrorCode {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8);

    public final int httpCode;

    ErrorCode(int i) {
        this.httpCode = i;
    }

    public static ErrorCode fromHttp2(int i) {
        for (ErrorCode errorCode : values()) {
            if (errorCode.httpCode == i) {
                return errorCode;
            }
        }
        return null;
    }
}
