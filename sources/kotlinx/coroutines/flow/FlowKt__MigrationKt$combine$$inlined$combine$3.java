package kotlinx.coroutines.flow;

import com.google.zxing.client.result.optional.NDEFRecord;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$3"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes2.dex */
public final class FlowKt__MigrationKt$combine$$inlined$combine$3<R> implements Flow<R> {
    final /* synthetic */ Flow[] $flows$inlined;
    final /* synthetic */ Function6 $transform$inlined$1;

    public FlowKt__MigrationKt$combine$$inlined$combine$3(Flow[] flowArr, Function6 function6) {
        this.$flows$inlined = flowArr;
        this.$transform$inlined$1 = function6;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector flowCollector, Continuation continuation) {
        Object combineInternal = CombineKt.combineInternal(flowCollector, this.$flows$inlined, new AnonymousClass2(), new AnonymousClass3(null, this), continuation);
        return combineInternal == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? combineInternal : Unit.INSTANCE;
    }

    public Object collect$$forInline(FlowCollector flowCollector, Continuation continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$3.1
            int label;
            /* synthetic */ Object result;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return FlowKt__MigrationKt$combine$$inlined$combine$3.this.collect(null, this);
            }
        };
        InlineMarker.mark(5);
        Flow[] flowArr = this.$flows$inlined;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(null, this);
        InlineMarker.mark(0);
        CombineKt.combineInternal(flowCollector, flowArr, anonymousClass2, anonymousClass3, continuation);
        InlineMarker.mark(2);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }

    /* compiled from: Zip.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"<anonymous>", "", NDEFRecord.TEXT_WELL_KNOWN_TYPE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$3$lambda$2"}, k = 3, mv = {1, 4, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$3$3", f = "Zip.kt", i = {0, 0, 0, 0, 1, 1}, l = {309, 309}, m = "invokeSuspend", n = {"$this$combineInternal", "it", "continuation", "args", "$this$combineInternal", "it"}, s = {"L$0", "L$1", "L$3", "L$4", "L$0", "L$1"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$3$3, reason: invalid class name */
    public static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super R>, Object[], Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        private FlowCollector p$;
        private Object[] p$0;
        final /* synthetic */ FlowKt__MigrationKt$combine$$inlined$combine$3 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Continuation continuation, FlowKt__MigrationKt$combine$$inlined$combine$3 flowKt__MigrationKt$combine$$inlined$combine$3) {
            super(3, continuation);
            this.this$0 = flowKt__MigrationKt$combine$$inlined$combine$3;
        }

        public final Continuation<Unit> create(FlowCollector<? super R> flowCollector, Object[] objArr, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation, this.this$0);
            anonymousClass3.p$ = flowCollector;
            anonymousClass3.p$0 = objArr;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object[] objArr, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create((FlowCollector) obj, objArr, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            FlowCollector flowCollector;
            FlowCollector flowCollector2;
            Object[] objArr;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                flowCollector = this.p$;
                Object[] objArr2 = this.p$0;
                Function6 function6 = this.this$0.$transform$inlined$1;
                Object obj2 = objArr2[0];
                Object obj3 = objArr2[1];
                Object obj4 = objArr2[2];
                Object obj5 = objArr2[3];
                Object obj6 = objArr2[4];
                this.L$0 = flowCollector;
                this.L$1 = objArr2;
                this.L$2 = flowCollector;
                this.L$3 = this;
                this.L$4 = objArr2;
                this.label = 1;
                Object invoke = function6.invoke(obj2, obj3, obj4, obj5, obj6, this);
                if (invoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                flowCollector2 = flowCollector;
                objArr = objArr2;
                obj = invoke;
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                flowCollector = (FlowCollector) this.L$2;
                objArr = (Object[]) this.L$1;
                flowCollector2 = (FlowCollector) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            this.L$0 = flowCollector2;
            this.L$1 = objArr;
            this.label = 2;
            if (flowCollector.emit(obj, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            FlowCollector flowCollector = this.p$;
            Object[] objArr = this.p$0;
            Object invoke = this.this$0.$transform$inlined$1.invoke(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], this);
            InlineMarker.mark(0);
            flowCollector.emit(invoke, this);
            InlineMarker.mark(2);
            InlineMarker.mark(1);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: Zip.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0006\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"<anonymous>", "", NDEFRecord.TEXT_WELL_KNOWN_TYPE, "R", "invoke", "()[Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$3$lambda$1"}, k = 3, mv = {1, 4, 0})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$3$2, reason: invalid class name */
    public static final class AnonymousClass2 extends Lambda implements Function0<Object[]> {
        public AnonymousClass2() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object[] invoke() {
            return new Object[FlowKt__MigrationKt$combine$$inlined$combine$3.this.$flows$inlined.length];
        }
    }
}
