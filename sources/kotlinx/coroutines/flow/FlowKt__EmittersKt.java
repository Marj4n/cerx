package kotlinx.coroutines.flow;

import com.generalplus.GoPlusDrone.Fragment.BaseFragment;
import com.google.zxing.client.result.optional.NDEFRecord;
import com.tencent.tauth.AuthActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: Emitters.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001as\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032D\u0010\u0004\u001a@\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0003\u0012\u0015\u0012\u0013\u0018\u00010\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005¢\u0006\u0002\b\f2\b\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a[\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0010\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001023\u0010\u0004\u001a/\b\u0001\u0012\u0015\u0012\u0013\u0018\u00010\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0011H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001al\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0010\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00102D\u0010\u0004\u001a@\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0003\u0012\u0015\u0012\u0013\u0018\u00010\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005¢\u0006\u0002\b\fH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001aU\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0010\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00102-\u0010\u0004\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0011¢\u0006\u0002\b\fH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001aU\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0010\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00102-\u0010\u0004\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0011¢\u0006\u0002\b\fH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001as\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00170\u0010\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0017*\b\u0012\u0004\u0012\u0002H\u00020\u00102D\b\u0005\u0010\u0016\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00170\u0003\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005¢\u0006\u0002\b\fH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001as\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00170\u0010\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0017*\b\u0012\u0004\u0012\u0002H\u00020\u00102D\b\u0005\u0010\u0016\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00170\u0003\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0005¢\u0006\u0002\b\fH\u0081\bø\u0001\u0000¢\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"invokeSafely", "", NDEFRecord.TEXT_WELL_KNOWN_TYPE, "Lkotlinx/coroutines/flow/FlowCollector;", AuthActivity.ACTION_KEY, "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", BaseFragment.DATA_NAME, "cause", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "invokeSafely$FlowKt__EmittersKt", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function3;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onCompletion", "Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Function2;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "onEmpty", "onStart", "transform", "R", "value", "unsafeTransform", "kotlinx-coroutines-core"}, k = 5, mv = {1, 4, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes2.dex */
final /* synthetic */ class FlowKt__EmittersKt {
    public static final <T, R> Flow<R> transform(Flow<? extends T> flow, Function3<? super FlowCollector<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt.flow(new FlowKt__EmittersKt$transform$1(flow, function3, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final /* synthetic */ <T> java.lang.Object invokeSafely$FlowKt__EmittersKt(kotlinx.coroutines.flow.FlowCollector<? super T> r4, kotlin.jvm.functions.Function3<? super kotlinx.coroutines.flow.FlowCollector<? super T>, ? super java.lang.Throwable, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r5, java.lang.Throwable r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1
            if (r0 == 0) goto L14
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1 r0 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1 r0 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r4 = r0.L$2
            r6 = r4
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            java.lang.Object r4 = r0.L$1
            kotlin.jvm.functions.Function3 r4 = (kotlin.jvm.functions.Function3) r4
            java.lang.Object r4 = r0.L$0
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L54
            goto L51
        L37:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3f:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L54
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L54
            r0.L$2 = r6     // Catch: java.lang.Throwable -> L54
            r0.label = r3     // Catch: java.lang.Throwable -> L54
            java.lang.Object r4 = r5.invoke(r4, r6, r0)     // Catch: java.lang.Throwable -> L54
            if (r4 != r1) goto L51
            return r1
        L51:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L54:
            r4 = move-exception
            if (r6 == 0) goto L5c
            if (r6 == r4) goto L5c
            kotlin.ExceptionsKt.addSuppressed(r4, r6)
        L5c:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(kotlinx.coroutines.flow.FlowCollector, kotlin.jvm.functions.Function3, java.lang.Throwable, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <T, R> Flow<R> unsafeTransform(Flow<? extends T> flow, Function3<? super FlowCollector<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1(flow, function3);
    }

    public static final <T> Flow<T> onStart(Flow<? extends T> flow, Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(flow, function2);
    }

    public static final <T> Flow<T> onCompletion(Flow<? extends T> flow, Function3<? super FlowCollector<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(flow, function3);
    }

    public static final <T> Flow<T> onEmpty(Flow<? extends T> flow, Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1(flow, function2);
    }
}
