package kotlin.time;

import com.generalplus.GoPlusDrone.Fragment.BaseFragment;
import com.github.mikephil.charting.utils.Utils;
import com.google.zxing.client.result.optional.NDEFRecord;
import com.tencent.tauth.AuthActivity;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: Duration.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0087@\u0018\u0000 s2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001sB\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010%\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u0000H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b'\u0010(J\u001e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0003H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b+\u0010,J\u001e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\tH\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b+\u0010-J\u001b\u0010)\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b.\u0010,J\u0013\u0010/\u001a\u0002002\b\u0010&\u001a\u0004\u0018\u000101HÖ\u0003J\t\u00102\u001a\u00020\tHÖ\u0001J\r\u00103\u001a\u000200¢\u0006\u0004\b4\u00105J\r\u00106\u001a\u000200¢\u0006\u0004\b7\u00105J\r\u00108\u001a\u000200¢\u0006\u0004\b9\u00105J\r\u0010:\u001a\u000200¢\u0006\u0004\b;\u00105J\u001b\u0010<\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b=\u0010,J\u001b\u0010>\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b?\u0010,J\u0017\u0010@\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¢\u0006\u0004\bA\u0010(J\u001e\u0010B\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0003H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bC\u0010,J\u001e\u0010B\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\tH\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bC\u0010-J\u009d\u0001\u0010D\u001a\u0002HE\"\u0004\b\u0000\u0010E2u\u0010F\u001aq\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(J\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(K\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(L\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(M\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(N\u0012\u0004\u0012\u0002HE0GH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bO\u0010PJ\u0088\u0001\u0010D\u001a\u0002HE\"\u0004\b\u0000\u0010E2`\u0010F\u001a\\\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(K\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(L\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(M\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(N\u0012\u0004\u0012\u0002HE0QH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bO\u0010RJs\u0010D\u001a\u0002HE\"\u0004\b\u0000\u0010E2K\u0010F\u001aG\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(L\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(M\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(N\u0012\u0004\u0012\u0002HE0SH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bO\u0010TJ^\u0010D\u001a\u0002HE\"\u0004\b\u0000\u0010E26\u0010F\u001a2\u0012\u0013\u0012\u00110V¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(M\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(N\u0012\u0004\u0012\u0002HE0UH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bO\u0010WJ\u0019\u0010X\u001a\u00020\u00032\n\u0010Y\u001a\u00060Zj\u0002`[¢\u0006\u0004\b\\\u0010]J\u0019\u0010^\u001a\u00020\t2\n\u0010Y\u001a\u00060Zj\u0002`[¢\u0006\u0004\b_\u0010`J\r\u0010a\u001a\u00020b¢\u0006\u0004\bc\u0010dJ\u0019\u0010e\u001a\u00020V2\n\u0010Y\u001a\u00060Zj\u0002`[¢\u0006\u0004\bf\u0010gJ\r\u0010h\u001a\u00020V¢\u0006\u0004\bi\u0010jJ\r\u0010k\u001a\u00020V¢\u0006\u0004\bl\u0010jJ\u000f\u0010m\u001a\u00020bH\u0016¢\u0006\u0004\bn\u0010dJ#\u0010m\u001a\u00020b2\n\u0010Y\u001a\u00060Zj\u0002`[2\b\b\u0002\u0010o\u001a\u00020\t¢\u0006\u0004\bn\u0010pJ\u0016\u0010q\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\br\u0010\u0005R\u0017\u0010\u0006\u001a\u00020\u00008Fø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u001a\u0010\b\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0005R\u0011\u0010\u0010\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0005R\u0011\u0010\u0012\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0005R\u0011\u0010\u0014\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0005R\u0011\u0010\u0016\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0005R\u0011\u0010\u0018\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0005R\u0011\u0010\u001a\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0005R\u001a\u0010\u001c\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u000b\u001a\u0004\b\u001e\u0010\rR\u001a\u0010\u001f\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b \u0010\u000b\u001a\u0004\b!\u0010\rR\u001a\u0010\"\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b#\u0010\u000b\u001a\u0004\b$\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006t"}, d2 = {"Lkotlin/time/Duration;", "", "value", "", "constructor-impl", "(D)D", "absoluteValue", "getAbsoluteValue-UwyO8pc", "hoursComponent", "", "getHoursComponent$annotations", "()V", "getHoursComponent-impl", "(D)I", "inDays", "getInDays-impl", "inHours", "getInHours-impl", "inMicroseconds", "getInMicroseconds-impl", "inMilliseconds", "getInMilliseconds-impl", "inMinutes", "getInMinutes-impl", "inNanoseconds", "getInNanoseconds-impl", "inSeconds", "getInSeconds-impl", "minutesComponent", "getMinutesComponent$annotations", "getMinutesComponent-impl", "nanosecondsComponent", "getNanosecondsComponent$annotations", "getNanosecondsComponent-impl", "secondsComponent", "getSecondsComponent$annotations", "getSecondsComponent-impl", "compareTo", "other", "compareTo-LRDsOJo", "(DD)I", "div", "scale", "div-UwyO8pc", "(DD)D", "(DI)D", "div-LRDsOJo", "equals", "", "", "hashCode", "isFinite", "isFinite-impl", "(D)Z", "isInfinite", "isInfinite-impl", "isNegative", "isNegative-impl", "isPositive", "isPositive-impl", "minus", "minus-LRDsOJo", "plus", "plus-LRDsOJo", "precision", "precision-impl", "times", "times-UwyO8pc", "toComponents", NDEFRecord.TEXT_WELL_KNOWN_TYPE, AuthActivity.ACTION_KEY, "Lkotlin/Function5;", "Lkotlin/ParameterName;", BaseFragment.DATA_NAME, "days", "hours", "minutes", "seconds", "nanoseconds", "toComponents-impl", "(DLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "(DLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(DLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "", "(DLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "toDouble", "unit", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "toDouble-impl", "(DLjava/util/concurrent/TimeUnit;)D", "toInt", "toInt-impl", "(DLjava/util/concurrent/TimeUnit;)I", "toIsoString", "", "toIsoString-impl", "(D)Ljava/lang/String;", "toLong", "toLong-impl", "(DLjava/util/concurrent/TimeUnit;)J", "toLongMilliseconds", "toLongMilliseconds-impl", "(D)J", "toLongNanoseconds", "toLongNanoseconds-impl", "toString", "toString-impl", "decimals", "(DLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;", "unaryMinus", "unaryMinus-UwyO8pc", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes2.dex */
public final class Duration implements Comparable<Duration> {
    private final double value;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final double ZERO = m1279constructorimpl(Utils.DOUBLE_EPSILON);
    private static final double INFINITE = m1279constructorimpl(Double.POSITIVE_INFINITY);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Duration m1277boximpl(double d) {
        return new Duration(d);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static double m1279constructorimpl(double d) {
        return d;
    }

    /* renamed from: div-LRDsOJo, reason: not valid java name */
    public static final double m1280divLRDsOJo(double d, double d2) {
        return d / d2;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1283equalsimpl(double d, Object obj) {
        return (obj instanceof Duration) && Double.compare(d, ((Duration) obj).getValue()) == 0;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1284equalsimpl0(double d, double d2) {
        return Double.compare(d, d2) == 0;
    }

    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1297hashCodeimpl(double d) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    /* renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m1300isNegativeimpl(double d) {
        return d < ((double) 0);
    }

    /* renamed from: isPositive-impl, reason: not valid java name */
    public static final boolean m1301isPositiveimpl(double d) {
        return d > ((double) 0);
    }

    /* renamed from: precision-impl, reason: not valid java name */
    private static final int m1304precisionimpl(double d, double d2) {
        if (d2 < 1) {
            return 3;
        }
        if (d2 < 10) {
            return 2;
        }
        return d2 < ((double) 100) ? 1 : 0;
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m1321compareToLRDsOJo(double d) {
        return m1278compareToLRDsOJo(this.value, d);
    }

    public boolean equals(Object other) {
        return m1283equalsimpl(this.value, other);
    }

    public int hashCode() {
        return m1297hashCodeimpl(this.value);
    }

    public String toString() {
        return m1317toStringimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ double getValue() {
        return this.value;
    }

    private /* synthetic */ Duration(double d) {
        this.value = d;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m1321compareToLRDsOJo(duration.getValue());
    }

    /* compiled from: Duration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fR\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0011"}, d2 = {"Lkotlin/time/Duration$Companion;", "", "()V", "INFINITE", "Lkotlin/time/Duration;", "getINFINITE-UwyO8pc", "()D", "D", "ZERO", "getZERO-UwyO8pc", "convert", "", "value", "sourceUnit", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "targetUnit", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getZERO-UwyO8pc, reason: not valid java name */
        public final double m1324getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        /* renamed from: getINFINITE-UwyO8pc, reason: not valid java name */
        public final double m1323getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        public final double convert(double value, TimeUnit sourceUnit, TimeUnit targetUnit) {
            Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
            Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
            return DurationUnitKt.convertDurationUnit(value, sourceUnit, targetUnit);
        }
    }

    /* renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final double m1320unaryMinusUwyO8pc(double d) {
        return m1279constructorimpl(-d);
    }

    /* renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final double m1303plusLRDsOJo(double d, double d2) {
        return m1279constructorimpl(d + d2);
    }

    /* renamed from: minus-LRDsOJo, reason: not valid java name */
    public static final double m1302minusLRDsOJo(double d, double d2) {
        return m1279constructorimpl(d - d2);
    }

    /* renamed from: times-UwyO8pc, reason: not valid java name */
    public static final double m1306timesUwyO8pc(double d, int i) {
        return m1279constructorimpl(d * i);
    }

    /* renamed from: times-UwyO8pc, reason: not valid java name */
    public static final double m1305timesUwyO8pc(double d, double d2) {
        return m1279constructorimpl(d * d2);
    }

    /* renamed from: div-UwyO8pc, reason: not valid java name */
    public static final double m1282divUwyO8pc(double d, int i) {
        return m1279constructorimpl(d / i);
    }

    /* renamed from: div-UwyO8pc, reason: not valid java name */
    public static final double m1281divUwyO8pc(double d, double d2) {
        return m1279constructorimpl(d / d2);
    }

    /* renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m1299isInfiniteimpl(double d) {
        return Double.isInfinite(d);
    }

    /* renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m1298isFiniteimpl(double d) {
        return (Double.isInfinite(d) || Double.isNaN(d)) ? false : true;
    }

    /* renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final double m1285getAbsoluteValueUwyO8pc(double d) {
        return m1300isNegativeimpl(d) ? m1320unaryMinusUwyO8pc(d) : d;
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m1278compareToLRDsOJo(double d, double d2) {
        return Double.compare(d, d2);
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1310toComponentsimpl(double d, Function5<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf((int) m1287getInDaysimpl(d)), Integer.valueOf(m1286getHoursComponentimpl(d)), Integer.valueOf(m1294getMinutesComponentimpl(d)), Integer.valueOf(m1296getSecondsComponentimpl(d)), Integer.valueOf(m1295getNanosecondsComponentimpl(d)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1309toComponentsimpl(double d, Function4<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf((int) m1288getInHoursimpl(d)), Integer.valueOf(m1294getMinutesComponentimpl(d)), Integer.valueOf(m1296getSecondsComponentimpl(d)), Integer.valueOf(m1295getNanosecondsComponentimpl(d)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1308toComponentsimpl(double d, Function3<? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf((int) m1291getInMinutesimpl(d)), Integer.valueOf(m1296getSecondsComponentimpl(d)), Integer.valueOf(m1295getNanosecondsComponentimpl(d)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m1307toComponentsimpl(double d, Function2<? super Long, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf((long) m1293getInSecondsimpl(d)), Integer.valueOf(m1295getNanosecondsComponentimpl(d)));
    }

    /* renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m1286getHoursComponentimpl(double d) {
        return (int) (m1288getInHoursimpl(d) % 24);
    }

    /* renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m1294getMinutesComponentimpl(double d) {
        return (int) (m1291getInMinutesimpl(d) % 60);
    }

    /* renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m1296getSecondsComponentimpl(double d) {
        return (int) (m1293getInSecondsimpl(d) % 60);
    }

    /* renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m1295getNanosecondsComponentimpl(double d) {
        return (int) (m1292getInNanosecondsimpl(d) % 1.0E9d);
    }

    /* renamed from: toDouble-impl, reason: not valid java name */
    public static final double m1311toDoubleimpl(double d, TimeUnit unit) {
        TimeUnit storageUnit;
        Intrinsics.checkNotNullParameter(unit, "unit");
        storageUnit = DurationKt.getStorageUnit();
        return DurationUnitKt.convertDurationUnit(d, storageUnit, unit);
    }

    /* renamed from: toLong-impl, reason: not valid java name */
    public static final long m1314toLongimpl(double d, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return (long) m1311toDoubleimpl(d, unit);
    }

    /* renamed from: toInt-impl, reason: not valid java name */
    public static final int m1312toIntimpl(double d, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return (int) m1311toDoubleimpl(d, unit);
    }

    /* renamed from: getInDays-impl, reason: not valid java name */
    public static final double m1287getInDaysimpl(double d) {
        return m1311toDoubleimpl(d, TimeUnit.DAYS);
    }

    /* renamed from: getInHours-impl, reason: not valid java name */
    public static final double m1288getInHoursimpl(double d) {
        return m1311toDoubleimpl(d, TimeUnit.HOURS);
    }

    /* renamed from: getInMinutes-impl, reason: not valid java name */
    public static final double m1291getInMinutesimpl(double d) {
        return m1311toDoubleimpl(d, TimeUnit.MINUTES);
    }

    /* renamed from: getInSeconds-impl, reason: not valid java name */
    public static final double m1293getInSecondsimpl(double d) {
        return m1311toDoubleimpl(d, TimeUnit.SECONDS);
    }

    /* renamed from: getInMilliseconds-impl, reason: not valid java name */
    public static final double m1290getInMillisecondsimpl(double d) {
        return m1311toDoubleimpl(d, TimeUnit.MILLISECONDS);
    }

    /* renamed from: getInMicroseconds-impl, reason: not valid java name */
    public static final double m1289getInMicrosecondsimpl(double d) {
        return m1311toDoubleimpl(d, TimeUnit.MICROSECONDS);
    }

    /* renamed from: getInNanoseconds-impl, reason: not valid java name */
    public static final double m1292getInNanosecondsimpl(double d) {
        return m1311toDoubleimpl(d, TimeUnit.NANOSECONDS);
    }

    /* renamed from: toLongNanoseconds-impl, reason: not valid java name */
    public static final long m1316toLongNanosecondsimpl(double d) {
        return m1314toLongimpl(d, TimeUnit.NANOSECONDS);
    }

    /* renamed from: toLongMilliseconds-impl, reason: not valid java name */
    public static final long m1315toLongMillisecondsimpl(double d) {
        return m1314toLongimpl(d, TimeUnit.MILLISECONDS);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009f  */
    /* renamed from: toString-impl, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1317toStringimpl(double r8) {
        /*
            boolean r0 = m1299isInfiniteimpl(r8)
            if (r0 == 0) goto Lc
            java.lang.String r8 = java.lang.String.valueOf(r8)
            goto Lc0
        Lc:
            r0 = 0
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 != 0) goto L16
            java.lang.String r8 = "0s"
            goto Lc0
        L16:
            double r0 = m1285getAbsoluteValueUwyO8pc(r8)
            double r0 = m1292getInNanosecondsimpl(r0)
            r2 = 4517329193108106637(0x3eb0c6f7a0b5ed8d, double:1.0E-6)
            r4 = 0
            r5 = 1
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 >= 0) goto L2e
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
        L2b:
            r1 = 0
            r4 = 1
            goto L8f
        L2e:
            double r2 = (double) r5
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 >= 0) goto L37
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.NANOSECONDS
            r1 = 7
            goto L8f
        L37:
            r2 = 4652007308841189376(0x408f400000000000, double:1000.0)
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 >= 0) goto L44
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.NANOSECONDS
        L42:
            r1 = 0
            goto L8f
        L44:
            r2 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 >= 0) goto L50
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.MICROSECONDS
            goto L42
        L50:
            r2 = 4741671816366391296(0x41cdcd6500000000, double:1.0E9)
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 >= 0) goto L5c
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.MILLISECONDS
            goto L42
        L5c:
            r2 = 4786511204640096256(0x426d1a94a2000000, double:1.0E12)
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 >= 0) goto L68
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
            goto L42
        L68:
            r2 = 4813020802404319232(0x42cb48eb57e00000, double:6.0E13)
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 >= 0) goto L74
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.MINUTES
            goto L42
        L74:
            r2 = 4839562400168542208(0x4329945ca2620000, double:3.6E15)
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 >= 0) goto L80
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.HOURS
            goto L42
        L80:
            r2 = 4920018990336211136(0x44476b344f2a78c0, double:8.64E20)
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 >= 0) goto L8c
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.DAYS
            goto L42
        L8c:
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.DAYS
            goto L2b
        L8f:
            double r2 = m1311toDoubleimpl(r8, r0)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            if (r4 == 0) goto L9f
            java.lang.String r8 = kotlin.time.FormatToDecimalsKt.formatScientific(r2)
            goto Lb2
        L9f:
            if (r1 <= 0) goto La6
            java.lang.String r8 = kotlin.time.FormatToDecimalsKt.formatUpToDecimals(r2, r1)
            goto Lb2
        La6:
            double r6 = java.lang.Math.abs(r2)
            int r8 = m1304precisionimpl(r8, r6)
            java.lang.String r8 = kotlin.time.FormatToDecimalsKt.formatToExactDecimals(r2, r8)
        Lb2:
            r5.append(r8)
            java.lang.String r8 = kotlin.time.DurationUnitKt.shortName(r0)
            r5.append(r8)
            java.lang.String r8 = r5.toString()
        Lc0:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.Duration.m1317toStringimpl(double):java.lang.String");
    }

    /* renamed from: toString-impl$default, reason: not valid java name */
    public static /* synthetic */ String m1319toStringimpl$default(double d, TimeUnit timeUnit, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return m1318toStringimpl(d, timeUnit, i);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static final String m1318toStringimpl(double d, TimeUnit unit, int i) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("decimals must be not negative, but was " + i).toString());
        }
        if (m1299isInfiniteimpl(d)) {
            return String.valueOf(d);
        }
        double m1311toDoubleimpl = m1311toDoubleimpl(d, unit);
        StringBuilder sb = new StringBuilder();
        sb.append(Math.abs(m1311toDoubleimpl) < 1.0E14d ? FormatToDecimalsKt.formatToExactDecimals(m1311toDoubleimpl, RangesKt.coerceAtMost(i, 12)) : FormatToDecimalsKt.formatScientific(m1311toDoubleimpl));
        sb.append(DurationUnitKt.shortName(unit));
        return sb.toString();
    }

    /* renamed from: toIsoString-impl, reason: not valid java name */
    public static final String m1313toIsoStringimpl(double d) {
        StringBuilder sb = new StringBuilder();
        if (m1300isNegativeimpl(d)) {
            sb.append('-');
        }
        sb.append("PT");
        double m1285getAbsoluteValueUwyO8pc = m1285getAbsoluteValueUwyO8pc(d);
        int m1288getInHoursimpl = (int) m1288getInHoursimpl(m1285getAbsoluteValueUwyO8pc);
        int m1294getMinutesComponentimpl = m1294getMinutesComponentimpl(m1285getAbsoluteValueUwyO8pc);
        int m1296getSecondsComponentimpl = m1296getSecondsComponentimpl(m1285getAbsoluteValueUwyO8pc);
        int m1295getNanosecondsComponentimpl = m1295getNanosecondsComponentimpl(m1285getAbsoluteValueUwyO8pc);
        boolean z = true;
        boolean z2 = m1288getInHoursimpl != 0;
        boolean z3 = (m1296getSecondsComponentimpl == 0 && m1295getNanosecondsComponentimpl == 0) ? false : true;
        if (m1294getMinutesComponentimpl == 0 && (!z3 || !z2)) {
            z = false;
        }
        if (z2) {
            sb.append(m1288getInHoursimpl);
            sb.append('H');
        }
        if (z) {
            sb.append(m1294getMinutesComponentimpl);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            sb.append(m1296getSecondsComponentimpl);
            if (m1295getNanosecondsComponentimpl != 0) {
                sb.append('.');
                String padStart = StringsKt.padStart(String.valueOf(m1295getNanosecondsComponentimpl), 9, '0');
                if (m1295getNanosecondsComponentimpl % 1000000 == 0) {
                    sb.append((CharSequence) padStart, 0, 3);
                    Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
                } else if (m1295getNanosecondsComponentimpl % 1000 == 0) {
                    sb.append((CharSequence) padStart, 0, 6);
                    Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
                } else {
                    sb.append(padStart);
                }
            }
            sb.append('S');
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
