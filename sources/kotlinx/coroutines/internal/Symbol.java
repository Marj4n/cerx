package kotlinx.coroutines.internal;

import com.google.zxing.client.result.optional.NDEFRecord;
import kotlin.Metadata;

/* compiled from: Symbol.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\u0003H\u0016J\u001e\u0010\b\u001a\u0002H\t\"\u0004\b\u0000\u0010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0086\b¢\u0006\u0002\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/internal/Symbol;", "", "symbol", "", "(Ljava/lang/String;)V", "getSymbol", "()Ljava/lang/String;", "toString", "unbox", NDEFRecord.TEXT_WELL_KNOWN_TYPE, "value", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes2.dex */
public final class Symbol {
    private final String symbol;

    public Symbol(String str) {
        this.symbol = str;
    }

    public final String getSymbol() {
        return this.symbol;
    }

    public String toString() {
        return this.symbol;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T unbox(Object value) {
        if (value == this) {
            return null;
        }
        return value;
    }
}
