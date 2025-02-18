package com.android.volley.toolbox;

import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyLog;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public abstract class JsonRequest<T> extends Request<T> {
    protected static final String PROTOCOL_CHARSET = "utf-8";
    private static final String PROTOCOL_CONTENT_TYPE = String.format("application/json; charset=%s", PROTOCOL_CHARSET);
    private Response.Listener<T> mListener;
    private final String mRequestBody;

    @Override // com.android.volley.Request
    protected abstract Response<T> parseNetworkResponse(NetworkResponse networkResponse);

    public JsonRequest(String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        this(-1, str, str2, listener, errorListener);
    }

    public JsonRequest(int i, String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.mListener = listener;
        this.mRequestBody = str2;
    }

    @Override // com.android.volley.Request
    protected void onFinish() {
        super.onFinish();
        this.mListener = null;
    }

    @Override // com.android.volley.Request
    protected void deliverResponse(T t) {
        Response.Listener<T> listener = this.mListener;
        if (listener != null) {
            listener.onResponse(t);
        }
    }

    @Override // com.android.volley.Request
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Override // com.android.volley.Request
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // com.android.volley.Request
    public String getBodyContentType() {
        return PROTOCOL_CONTENT_TYPE;
    }

    @Override // com.android.volley.Request
    public byte[] getBody() {
        try {
            if (this.mRequestBody == null) {
                return null;
            }
            return this.mRequestBody.getBytes(PROTOCOL_CHARSET);
        } catch (UnsupportedEncodingException unused) {
            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", this.mRequestBody, PROTOCOL_CHARSET);
            return null;
        }
    }
}
