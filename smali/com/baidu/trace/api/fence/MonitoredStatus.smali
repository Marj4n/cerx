.class public final enum Lcom/baidu/trace/api/fence/MonitoredStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/api/fence/MonitoredStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/trace/api/fence/MonitoredStatus;

.field public static final enum in:Lcom/baidu/trace/api/fence/MonitoredStatus;

.field public static final enum out:Lcom/baidu/trace/api/fence/MonitoredStatus;

.field public static final enum unknown:Lcom/baidu/trace/api/fence/MonitoredStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/baidu/trace/api/fence/MonitoredStatus;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/api/fence/MonitoredStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/fence/MonitoredStatus;->unknown:Lcom/baidu/trace/api/fence/MonitoredStatus;

    new-instance v0, Lcom/baidu/trace/api/fence/MonitoredStatus;

    const-string v1, "in"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/trace/api/fence/MonitoredStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/fence/MonitoredStatus;->in:Lcom/baidu/trace/api/fence/MonitoredStatus;

    new-instance v0, Lcom/baidu/trace/api/fence/MonitoredStatus;

    const-string v1, "out"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/trace/api/fence/MonitoredStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/fence/MonitoredStatus;->out:Lcom/baidu/trace/api/fence/MonitoredStatus;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/baidu/trace/api/fence/MonitoredStatus;

    sget-object v5, Lcom/baidu/trace/api/fence/MonitoredStatus;->unknown:Lcom/baidu/trace/api/fence/MonitoredStatus;

    aput-object v5, v1, v2

    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredStatus;->in:Lcom/baidu/trace/api/fence/MonitoredStatus;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/baidu/trace/api/fence/MonitoredStatus;->a:[Lcom/baidu/trace/api/fence/MonitoredStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/trace/api/fence/MonitoredStatus;
    .locals 1

    const-class v0, Lcom/baidu/trace/api/fence/MonitoredStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/trace/api/fence/MonitoredStatus;

    return-object p0
.end method

.method public static values()[Lcom/baidu/trace/api/fence/MonitoredStatus;
    .locals 1

    sget-object v0, Lcom/baidu/trace/api/fence/MonitoredStatus;->a:[Lcom/baidu/trace/api/fence/MonitoredStatus;

    invoke-virtual {v0}, [Lcom/baidu/trace/api/fence/MonitoredStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/api/fence/MonitoredStatus;

    return-object v0
.end method
