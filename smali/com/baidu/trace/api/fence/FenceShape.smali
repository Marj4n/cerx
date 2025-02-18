.class public final enum Lcom/baidu/trace/api/fence/FenceShape;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/api/fence/FenceShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/trace/api/fence/FenceShape;

.field public static final enum circle:Lcom/baidu/trace/api/fence/FenceShape;

.field public static final enum district:Lcom/baidu/trace/api/fence/FenceShape;

.field public static final enum polygon:Lcom/baidu/trace/api/fence/FenceShape;

.field public static final enum polyline:Lcom/baidu/trace/api/fence/FenceShape;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/baidu/trace/api/fence/FenceShape;

    const-string v1, "circle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/api/fence/FenceShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    new-instance v0, Lcom/baidu/trace/api/fence/FenceShape;

    const-string v1, "polygon"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/trace/api/fence/FenceShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/fence/FenceShape;->polygon:Lcom/baidu/trace/api/fence/FenceShape;

    new-instance v0, Lcom/baidu/trace/api/fence/FenceShape;

    const-string v1, "polyline"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/trace/api/fence/FenceShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/fence/FenceShape;->polyline:Lcom/baidu/trace/api/fence/FenceShape;

    new-instance v0, Lcom/baidu/trace/api/fence/FenceShape;

    const-string v1, "district"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/trace/api/fence/FenceShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/fence/FenceShape;->district:Lcom/baidu/trace/api/fence/FenceShape;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/baidu/trace/api/fence/FenceShape;

    sget-object v6, Lcom/baidu/trace/api/fence/FenceShape;->circle:Lcom/baidu/trace/api/fence/FenceShape;

    aput-object v6, v1, v2

    sget-object v2, Lcom/baidu/trace/api/fence/FenceShape;->polygon:Lcom/baidu/trace/api/fence/FenceShape;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/trace/api/fence/FenceShape;->polyline:Lcom/baidu/trace/api/fence/FenceShape;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/baidu/trace/api/fence/FenceShape;->a:[Lcom/baidu/trace/api/fence/FenceShape;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/trace/api/fence/FenceShape;
    .locals 1

    const-class v0, Lcom/baidu/trace/api/fence/FenceShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/trace/api/fence/FenceShape;

    return-object p0
.end method

.method public static values()[Lcom/baidu/trace/api/fence/FenceShape;
    .locals 1

    sget-object v0, Lcom/baidu/trace/api/fence/FenceShape;->a:[Lcom/baidu/trace/api/fence/FenceShape;

    invoke-virtual {v0}, [Lcom/baidu/trace/api/fence/FenceShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/api/fence/FenceShape;

    return-object v0
.end method
