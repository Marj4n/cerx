.class public final enum Lcom/baidu/trace/api/bos/ImageDisplay;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/api/bos/ImageDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/trace/api/bos/ImageDisplay;

.field public static final enum baseline:Lcom/baidu/trace/api/bos/ImageDisplay;

.field public static final enum progressive:Lcom/baidu/trace/api/bos/ImageDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/baidu/trace/api/bos/ImageDisplay;

    const-string v1, "baseline"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/api/bos/ImageDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/bos/ImageDisplay;->baseline:Lcom/baidu/trace/api/bos/ImageDisplay;

    new-instance v0, Lcom/baidu/trace/api/bos/ImageDisplay;

    const-string v1, "progressive"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/trace/api/bos/ImageDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/bos/ImageDisplay;->progressive:Lcom/baidu/trace/api/bos/ImageDisplay;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/baidu/trace/api/bos/ImageDisplay;

    sget-object v4, Lcom/baidu/trace/api/bos/ImageDisplay;->baseline:Lcom/baidu/trace/api/bos/ImageDisplay;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/baidu/trace/api/bos/ImageDisplay;->a:[Lcom/baidu/trace/api/bos/ImageDisplay;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/trace/api/bos/ImageDisplay;
    .locals 1

    const-class v0, Lcom/baidu/trace/api/bos/ImageDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/trace/api/bos/ImageDisplay;

    return-object p0
.end method

.method public static values()[Lcom/baidu/trace/api/bos/ImageDisplay;
    .locals 1

    sget-object v0, Lcom/baidu/trace/api/bos/ImageDisplay;->a:[Lcom/baidu/trace/api/bos/ImageDisplay;

    invoke-virtual {v0}, [Lcom/baidu/trace/api/bos/ImageDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/api/bos/ImageDisplay;

    return-object v0
.end method
