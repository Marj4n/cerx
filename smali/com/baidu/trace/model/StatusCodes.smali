.class public Lcom/baidu/trace/model/StatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final AUTHENTICATION_FAILED:I = 0x36b4

.field public static final AUTHENTICATION_UNFINISHED:I = 0x36b3

.field public static final BOS_UNINITIALIZED:I = 0x3e80

.field public static final CACHE_TRACK_NOT_UPLOAD:I = 0x2afc

.field public static final CLOSED:I = 0x2

.field public static final CREATE_FENCE_FAILED:I = 0x3a99

.field public static final DELETE_FENCE_FAILED:I = 0x3a9b

.field public static final FAILED:I = 0x1

.field public static final GATHER_STARTED:I = 0x2ee3

.field public static final GATHER_STOPPED:I = 0x32cb

.field public static final GPS_STATUS_ACTION:Ljava/lang/String; = "com.baidu.trace.action.GPS_STATUS"

.field public static final LOCATED:I = 0x0

.field public static final MSG_AUTHENTICATION_FAILED:Ljava/lang/String; = "\u9274\u6743\u5931\u8d25"

.field public static final MSG_AUTHENTICATION_UNFINISHED:Ljava/lang/String; = "\u9274\u6743\u672a\u5b8c\u6210"

.field public static final MSG_BOS_UNINITIALIZED:Ljava/lang/String; = "\u5b58\u50a8\u670d\u52a1\u672a\u521d\u59cb\u5316"

.field public static final MSG_CACHE_TRACK_NOT_UPLOAD_:Ljava/lang/String; = "\u670d\u52a1\u505c\u6b62\u6210\u529f\uff0c\u8fd8\u6709\u672a\u4e0a\u4f20\u7684\u7f13\u5b58\u8f68\u8ff9"

.field public static final MSG_CREATE_FENCE_FAILED:Ljava/lang/String; = "\u521b\u5efa\u672c\u5730\u56f4\u680f\u5931\u8d25"

.field public static final MSG_DELETE_FENCE_FAILED:Ljava/lang/String; = "\u5220\u9664\u672c\u5730\u56f4\u680f\u5931\u8d25"

.field public static final MSG_FAILED:Ljava/lang/String; = "\u5931\u8d25"

.field public static final MSG_GATHER_STARTED:Ljava/lang/String; = "\u91c7\u96c6\u5df2\u5f00\u542f"

.field public static final MSG_GATHER_STOPPED:Ljava/lang/String; = "\u91c7\u96c6\u5df2\u505c\u6b62"

.field public static final MSG_GPS_CLOSED:Ljava/lang/String; = "\u5df2\u5173\u95edGPS"

.field public static final MSG_GPS_LOCATED:Ljava/lang/String; = "\u5df2\u901a\u8fc7GPS\u5b9a\u4f4d"

.field public static final MSG_GPS_SEARCHING:Ljava/lang/String; = "\u6b63\u5728\u641c\u7d22GPS"

.field public static final MSG_NETWORK_NOT_AVAILABLE:Ljava/lang/String; = "\u7f51\u7edc\u4e0d\u53ef\u7528"

.field public static final MSG_NOT_EXIST_FENCE:Ljava/lang/String; = "\u6307\u5b9afenceId\u4e0d\u5b58\u5728"

.field public static final MSG_NOT_EXIST_OBJECT_KEY:Ljava/lang/String; = "\u6307\u5b9aobjectKey\u4e0d\u5b58\u5728"

.field public static final MSG_NOT_GRANTED_PERMISSIONS:Ljava/lang/String; = "\u672a\u6388\u4e88GPS\u5b9a\u4f4d\u6240\u9700\u6743\u9650"

.field public static final MSG_NOT_START_TRACE:Ljava/lang/String; = "\u670d\u52a1\u672a\u5f00\u542f"

.field public static final MSG_PARAMETER_ERROR:Ljava/lang/String; = "\u53c2\u6570\u9519\u8bef"

.field public static final MSG_PARSE_RESPONSE_FAILED:Ljava/lang/String; = "\u54cd\u5e94\u89e3\u6790\u5931\u8d25"

.field public static final MSG_REQUEST_FAILED:Ljava/lang/String; = "\u8bf7\u6c42\u5931\u8d25"

.field public static final MSG_SERVICE_INTERNAL_ERROR:Ljava/lang/String; = "\u670d\u52a1\u5185\u90e8\u9519\u8bef"

.field public static final MSG_START_GATHER_FAILED:Ljava/lang/String; = "\u91c7\u96c6\u5f00\u542f\u5931\u8d25"

.field public static final MSG_START_GATHER_NOT_STARTED:Ljava/lang/String; = "\u670d\u52a1\u672a\u5f00\u542f"

.field public static final MSG_START_GATHER_REQUEST_FAILED:Ljava/lang/String; = "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

.field public static final MSG_START_TRACE_FAILED:Ljava/lang/String; = "\u670d\u52a1\u5f00\u542f\u5931\u8d25"

.field public static final MSG_START_TRACE_NETWORK_CLOSED:Ljava/lang/String; = "\u7f51\u7edc\u672a\u5f00\u542f"

.field public static final MSG_START_TRACE_NETWORK_CONNECT_FAILED:Ljava/lang/String; = "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

.field public static final MSG_START_TRACE_PARAMETER_ERROR:Ljava/lang/String; = "\u53c2\u6570\u9519\u8bef"

.field public static final MSG_START_TRACE_REQUEST_FAILED:Ljava/lang/String; = "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

.field public static final MSG_STOPPING_TRACE:Ljava/lang/String; = "\u670d\u52a1\u6b63\u5728\u505c\u6b62"

.field public static final MSG_STOP_GATHER_FAILED:Ljava/lang/String; = "\u91c7\u96c6\u505c\u6b62\u5931\u8d25"

.field public static final MSG_STOP_GATHER_NOT_STARTED:Ljava/lang/String; = "\u670d\u52a1\u672a\u5f00\u542f"

.field public static final MSG_STOP_GATHER_REQUEST_FAILED:Ljava/lang/String; = "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

.field public static final MSG_STOP_TRACE_FAILED:Ljava/lang/String; = "\u670d\u52a1\u505c\u6b62\u5931\u8d25"

.field public static final MSG_STOP_TRACE_REQUEST_FAILED:Ljava/lang/String; = "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

.field public static final MSG_SUCCESS:Ljava/lang/String; = "\u6210\u529f"

.field public static final MSG_TRACE_STARTED:Ljava/lang/String; = "\u670d\u52a1\u5df2\u5f00\u542f"

.field public static final MSG_TRACE_STARTING:Ljava/lang/String; = "\u670d\u52a1\u6b63\u5728\u5f00\u542f"

.field public static final MSG_TRACE_STOPPING:Ljava/lang/String; = "\u670d\u52a1\u6b63\u5728\u505c\u6b62"

.field public static final MSG_UPDATE_FENCE_FAILED:Ljava/lang/String; = "\u66f4\u65b0\u672c\u5730\u56f4\u680f\u5931\u8d25"

.field public static final NETWORK_NOT_AVAILABLE:I = 0x36b2

.field public static final NOT_EXIST_FENCE:I = 0x3a98

.field public static final NOT_EXIST_OBJECT_KEY:I = 0x3e81

.field public static final NOT_GRANTED_PERMISSIONS:I = 0x3

.field public static final NOT_START_TRACE:I = 0x2afa

.field public static final PARAMETER_ERROR:I = 0x2

.field public static final PARSE_RESPONSE_FAILED:I = 0x36b0

.field public static final REQUEST_FAILED:I = 0x36b1

.field public static final SEARCHING:I = 0x1

.field public static final SERVICE_INTERNAL_ERROR:I = 0x1

.field public static final START_GATHER_FAILED:I = 0x2ee1

.field public static final START_GATHER_NOT_STARTED:I = 0x2ee2

.field public static final START_GATHER_REQUEST_FAILED:I = 0x2ee0

.field public static final START_TRACE_FAILED:I = 0x2711

.field public static final START_TRACE_NETWORK_CLOSED:I = 0x2714

.field public static final START_TRACE_NETWORK_CONNECT_FAILED:I = 0x2713

.field public static final START_TRACE_PARAMETER_ERROR:I = 0x2712

.field public static final START_TRACE_REQUEST_FAILED:I = 0x2710

.field public static final STOPPING_TRACE:I = 0x2afb

.field public static final STOP_GATHER_FAILED:I = 0x32c9

.field public static final STOP_GATHER_NOT_STARTED:I = 0x32ca

.field public static final STOP_GATHER_REQUEST_FAILED:I = 0x32c8

.field public static final STOP_TRACE_FAILED:I = 0x2af9

.field public static final STOP_TRACE_REQUEST_FAILED:I = 0x2af8

.field public static final SUCCESS:I = 0x0

.field public static final TRACE_STARTED:I = 0x2716

.field public static final TRACE_STARTING:I = 0x2715

.field public static final TRACE_STOPPING:I = 0x2717

.field public static final UPDATE_FENCE_FAILED:I = 0x3a9a


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
