.class public Lcom/baidu/platform/comapi/map/E$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:Lcom/baidu/mapapi/model/inner/Point;

.field public f:Lcom/baidu/mapapi/model/inner/Point;

.field public g:Lcom/baidu/mapapi/model/inner/Point;

.field public h:Lcom/baidu/mapapi/model/inner/Point;

.field final synthetic i:Lcom/baidu/platform/comapi/map/E;


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/E;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/E$a;->i:Lcom/baidu/platform/comapi/map/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/E$a;->a:J

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/E$a;->b:J

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/E$a;->c:J

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/E$a;->d:J

    new-instance p1, Lcom/baidu/mapapi/model/inner/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/baidu/mapapi/model/inner/Point;-><init>(II)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/E$a;->e:Lcom/baidu/mapapi/model/inner/Point;

    new-instance p1, Lcom/baidu/mapapi/model/inner/Point;

    invoke-direct {p1, v0, v0}, Lcom/baidu/mapapi/model/inner/Point;-><init>(II)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/E$a;->f:Lcom/baidu/mapapi/model/inner/Point;

    new-instance p1, Lcom/baidu/mapapi/model/inner/Point;

    invoke-direct {p1, v0, v0}, Lcom/baidu/mapapi/model/inner/Point;-><init>(II)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/E$a;->g:Lcom/baidu/mapapi/model/inner/Point;

    new-instance p1, Lcom/baidu/mapapi/model/inner/Point;

    invoke-direct {p1, v0, v0}, Lcom/baidu/mapapi/model/inner/Point;-><init>(II)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/E$a;->h:Lcom/baidu/mapapi/model/inner/Point;

    return-void
.end method
