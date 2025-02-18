.class public final enum Lcom/baidu/trace/model/CoordType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/model/CoordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/trace/model/CoordType;

.field public static final enum bd09ll:Lcom/baidu/trace/model/CoordType;

.field public static final enum gcj02:Lcom/baidu/trace/model/CoordType;

.field public static final enum wgs84:Lcom/baidu/trace/model/CoordType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/baidu/trace/model/CoordType;

    const-string v1, "wgs84"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/model/CoordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    new-instance v0, Lcom/baidu/trace/model/CoordType;

    const-string v1, "gcj02"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/trace/model/CoordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/model/CoordType;->gcj02:Lcom/baidu/trace/model/CoordType;

    new-instance v0, Lcom/baidu/trace/model/CoordType;

    const-string v1, "bd09ll"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/trace/model/CoordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/baidu/trace/model/CoordType;

    sget-object v5, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/baidu/trace/model/CoordType;->gcj02:Lcom/baidu/trace/model/CoordType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/baidu/trace/model/CoordType;->a:[Lcom/baidu/trace/model/CoordType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/trace/model/CoordType;
    .locals 1

    const-class v0, Lcom/baidu/trace/model/CoordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/trace/model/CoordType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/trace/model/CoordType;
    .locals 1

    sget-object v0, Lcom/baidu/trace/model/CoordType;->a:[Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0}, [Lcom/baidu/trace/model/CoordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method
