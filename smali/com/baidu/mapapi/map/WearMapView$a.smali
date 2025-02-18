.class final enum Lcom/baidu/mapapi/map/WearMapView$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/WearMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/WearMapView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mapapi/map/WearMapView$a;

.field public static final enum b:Lcom/baidu/mapapi/map/WearMapView$a;

.field public static final enum c:Lcom/baidu/mapapi/map/WearMapView$a;

.field private static final synthetic d:[Lcom/baidu/mapapi/map/WearMapView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$a;

    const-string v1, "ROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/WearMapView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/WearMapView$a;->a:Lcom/baidu/mapapi/map/WearMapView$a;

    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$a;

    const-string v1, "RECTANGLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapapi/map/WearMapView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/WearMapView$a;->b:Lcom/baidu/mapapi/map/WearMapView$a;

    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$a;

    const-string v1, "UNDETECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/mapapi/map/WearMapView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/WearMapView$a;->c:Lcom/baidu/mapapi/map/WearMapView$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/baidu/mapapi/map/WearMapView$a;

    sget-object v5, Lcom/baidu/mapapi/map/WearMapView$a;->a:Lcom/baidu/mapapi/map/WearMapView$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/baidu/mapapi/map/WearMapView$a;->b:Lcom/baidu/mapapi/map/WearMapView$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/baidu/mapapi/map/WearMapView$a;->d:[Lcom/baidu/mapapi/map/WearMapView$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/WearMapView$a;
    .locals 1

    const-class v0, Lcom/baidu/mapapi/map/WearMapView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/WearMapView$a;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/WearMapView$a;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/map/WearMapView$a;->d:[Lcom/baidu/mapapi/map/WearMapView$a;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/WearMapView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/WearMapView$a;

    return-object v0
.end method
