.class public final enum Lcom/baidu/trace/api/bos/BosObjectType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/api/bos/BosObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/trace/api/bos/BosObjectType;

.field public static final enum data:Lcom/baidu/trace/api/bos/BosObjectType;

.field public static final enum image:Lcom/baidu/trace/api/bos/BosObjectType;

.field public static final enum video:Lcom/baidu/trace/api/bos/BosObjectType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/baidu/trace/api/bos/BosObjectType;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/api/bos/BosObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/bos/BosObjectType;->data:Lcom/baidu/trace/api/bos/BosObjectType;

    new-instance v0, Lcom/baidu/trace/api/bos/BosObjectType;

    const-string v1, "image"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/trace/api/bos/BosObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/bos/BosObjectType;->image:Lcom/baidu/trace/api/bos/BosObjectType;

    new-instance v0, Lcom/baidu/trace/api/bos/BosObjectType;

    const-string v1, "video"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/trace/api/bos/BosObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/bos/BosObjectType;->video:Lcom/baidu/trace/api/bos/BosObjectType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/baidu/trace/api/bos/BosObjectType;

    sget-object v5, Lcom/baidu/trace/api/bos/BosObjectType;->data:Lcom/baidu/trace/api/bos/BosObjectType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/baidu/trace/api/bos/BosObjectType;->image:Lcom/baidu/trace/api/bos/BosObjectType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/baidu/trace/api/bos/BosObjectType;->a:[Lcom/baidu/trace/api/bos/BosObjectType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/trace/api/bos/BosObjectType;
    .locals 1

    const-class v0, Lcom/baidu/trace/api/bos/BosObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/trace/api/bos/BosObjectType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/trace/api/bos/BosObjectType;
    .locals 1

    sget-object v0, Lcom/baidu/trace/api/bos/BosObjectType;->a:[Lcom/baidu/trace/api/bos/BosObjectType;

    invoke-virtual {v0}, [Lcom/baidu/trace/api/bos/BosObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/api/bos/BosObjectType;

    return-object v0
.end method
