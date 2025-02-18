package okhttp3;

import java.io.IOException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public interface Interceptor {

    public interface Chain {
        @Nullable
        Connection connection();

        Response proceed(Request request) throws IOException;

        Request request();
    }

    Response intercept(Chain chain) throws IOException;
}
