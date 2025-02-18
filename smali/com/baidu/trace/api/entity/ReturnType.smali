.class public final enum Lcom/baidu/trace/api/entity/ReturnType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/api/entity/ReturnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/trace/api/entity/ReturnType;

.field public static final enum all:Lcom/baidu/trace/api/entity/ReturnType;

.field public static final enum simple:Lcom/baidu/trace/api/entity/ReturnType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/baidu/trace/api/entity/ReturnType;

    const-string v1, "simple"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/api/entity/ReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/entity/ReturnType;->simple:Lcom/baidu/trace/api/entity/ReturnType;

    new-instance v0, Lcom/baidu/trace/api/entity/ReturnType;

    const-string v1, "all"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/trace/api/entity/ReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/entity/ReturnType;->all:Lcom/baidu/trace/api/entity/ReturnType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/baidu/trace/api/entity/ReturnType;

    sget-object v4, Lcom/baidu/trace/api/entity/ReturnType;->simple:Lcom/baidu/trace/api/entity/ReturnType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/baidu/trace/api/entity/ReturnType;->a:[Lcom/baidu/trace/api/entity/ReturnType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/trace/api/entity/ReturnType;
    .locals 1

    const-class v0, Lcom/baidu/trace/api/entity/ReturnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/trace/api/entity/ReturnType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/trace/api/entity/ReturnType;
    .locals 1

    sget-object v0, Lcom/baidu/trace/api/entity/ReturnType;->a:[Lcom/baidu/trace/api/entity/ReturnType;

    invoke-virtual {v0}, [Lcom/baidu/trace/api/entity/ReturnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/api/entity/ReturnType;

    return-object v0
.end method
