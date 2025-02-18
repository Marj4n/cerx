.class public final enum Lcom/baidu/platform/comapi/pano/PanoStateError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/platform/comapi/pano/PanoStateError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/platform/comapi/pano/PanoStateError;

.field public static final enum b:Lcom/baidu/platform/comapi/pano/PanoStateError;

.field public static final enum c:Lcom/baidu/platform/comapi/pano/PanoStateError;

.field public static final enum d:Lcom/baidu/platform/comapi/pano/PanoStateError;

.field private static final synthetic e:[Lcom/baidu/platform/comapi/pano/PanoStateError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/baidu/platform/comapi/pano/PanoStateError;

    const-string v1, "PANO_NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/platform/comapi/pano/PanoStateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platform/comapi/pano/PanoStateError;->a:Lcom/baidu/platform/comapi/pano/PanoStateError;

    new-instance v0, Lcom/baidu/platform/comapi/pano/PanoStateError;

    const-string v1, "PANO_UID_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/platform/comapi/pano/PanoStateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platform/comapi/pano/PanoStateError;->b:Lcom/baidu/platform/comapi/pano/PanoStateError;

    new-instance v0, Lcom/baidu/platform/comapi/pano/PanoStateError;

    const-string v1, "PANO_NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/platform/comapi/pano/PanoStateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platform/comapi/pano/PanoStateError;->c:Lcom/baidu/platform/comapi/pano/PanoStateError;

    new-instance v0, Lcom/baidu/platform/comapi/pano/PanoStateError;

    const-string v1, "PANO_NO_TOKEN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/platform/comapi/pano/PanoStateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platform/comapi/pano/PanoStateError;->d:Lcom/baidu/platform/comapi/pano/PanoStateError;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/baidu/platform/comapi/pano/PanoStateError;

    sget-object v6, Lcom/baidu/platform/comapi/pano/PanoStateError;->a:Lcom/baidu/platform/comapi/pano/PanoStateError;

    aput-object v6, v1, v2

    sget-object v2, Lcom/baidu/platform/comapi/pano/PanoStateError;->b:Lcom/baidu/platform/comapi/pano/PanoStateError;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/platform/comapi/pano/PanoStateError;->c:Lcom/baidu/platform/comapi/pano/PanoStateError;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->e:[Lcom/baidu/platform/comapi/pano/PanoStateError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/platform/comapi/pano/PanoStateError;
    .locals 1

    const-class v0, Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/platform/comapi/pano/PanoStateError;

    return-object p0
.end method

.method public static values()[Lcom/baidu/platform/comapi/pano/PanoStateError;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/pano/PanoStateError;->e:[Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-virtual {v0}, [Lcom/baidu/platform/comapi/pano/PanoStateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/platform/comapi/pano/PanoStateError;

    return-object v0
.end method
