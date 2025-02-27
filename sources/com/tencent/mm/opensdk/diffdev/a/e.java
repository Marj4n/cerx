package com.tencent.mm.opensdk.diffdev.a;

import com.tencent.mm.opensdk.utils.Log;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;

/* loaded from: classes2.dex */
public final class e {
    public static byte[] a(String str, int i) {
        String str2;
        StringBuilder sb;
        String message;
        if (str != null && str.length() != 0) {
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            HttpGet httpGet = new HttpGet(str);
            if (i >= 0) {
                try {
                    HttpConnectionParams.setSoTimeout(defaultHttpClient.getParams(), i);
                } catch (Exception e) {
                    sb = new StringBuilder("httpGet, Exception ex = ");
                    message = e.getMessage();
                    sb.append(message);
                    str2 = sb.toString();
                    Log.e("MicroMsg.SDK.NetUtil", str2);
                    return null;
                } catch (IncompatibleClassChangeError e2) {
                    sb = new StringBuilder("httpGet, IncompatibleClassChangeError ex = ");
                    message = e2.getMessage();
                    sb.append(message);
                    str2 = sb.toString();
                    Log.e("MicroMsg.SDK.NetUtil", str2);
                    return null;
                } catch (Throwable th) {
                    sb = new StringBuilder("httpGet, Throwable ex = ");
                    message = th.getMessage();
                    sb.append(message);
                    str2 = sb.toString();
                    Log.e("MicroMsg.SDK.NetUtil", str2);
                    return null;
                }
            }
            HttpResponse execute = defaultHttpClient.execute(httpGet);
            if (execute.getStatusLine().getStatusCode() == 200) {
                return EntityUtils.toByteArray(execute.getEntity());
            }
            Log.e("MicroMsg.SDK.NetUtil", "httpGet fail, status code = " + execute.getStatusLine().getStatusCode());
            return null;
        }
        str2 = "httpGet, url is null";
        Log.e("MicroMsg.SDK.NetUtil", str2);
        return null;
    }
}
