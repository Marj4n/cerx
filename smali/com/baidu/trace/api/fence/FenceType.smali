.class public final enum Lcom/baidu/trace/api/fence/FenceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/api/fence/FenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/trace/api/fence/FenceType;

.field public static final enum local:Lcom/baidu/trace/api/fence/FenceType;

.field public static final enum server:Lcom/baidu/trace/api/fence/FenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/baidu/trace/api/fence/FenceType;

    const-string v1, "local"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/api/fence/FenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    new-instance v0, Lcom/baidu/trace/api/fence/FenceType;

    const-string v1, "server"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/trace/api/fence/FenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/fence/FenceType;->server:Lcom/baidu/trace/api/fence/FenceType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/baidu/trace/api/fence/FenceType;

    sget-object v4, Lcom/baidu/trace/api/fence/FenceType;->local:Lcom/baidu/trace/api/fence/FenceType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/baidu/trace/api/fence/FenceType;->a:[Lcom/baidu/trace/api/fence/FenceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/trace/api/fence/FenceType;
    .locals 1

    const-class v0, Lcom/baidu/trace/api/fence/FenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/trace/api/fence/FenceType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/trace/api/fence/FenceType;
    .locals 1

    sget-object v0, Lcom/baidu/trace/api/fence/FenceType;->a:[Lcom/baidu/trace/api/fence/FenceType;

    invoke-virtual {v0}, [Lcom/baidu/trace/api/fence/FenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/api/fence/FenceType;

    return-object v0
.end method
