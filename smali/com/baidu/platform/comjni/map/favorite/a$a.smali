.class public Lcom/baidu/platform/comjni/map/favorite/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comjni/map/favorite/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/baidu/platform/comjni/map/favorite/a$a;->b()V

    return-void
.end method

.method private static b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/platform/comjni/map/favorite/a$a;->a:Z

    return-void
.end method
