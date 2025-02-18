.class final Lcom/baidu/trace/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/baidu/trace/a/g;

.field private synthetic b:J

.field private synthetic c:Lcom/baidu/trace/ar;


# direct methods
.method constructor <init>(Lcom/baidu/trace/ar;Lcom/baidu/trace/a/g;J)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/at;->c:Lcom/baidu/trace/ar;

    iput-object p2, p0, Lcom/baidu/trace/at;->a:Lcom/baidu/trace/a/g;

    iput-wide p3, p0, Lcom/baidu/trace/at;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    new-instance v1, Lcom/baidu/trace/model/LatLng;

    iget-object v0, p0, Lcom/baidu/trace/at;->a:Lcom/baidu/trace/a/g;

    iget v0, v0, Lcom/baidu/trace/a/g;->i:I

    int-to-double v2, v0

    const-wide v4, 0x41224f8000000000L    # 600000.0

    div-double/2addr v2, v4

    iget-object v0, p0, Lcom/baidu/trace/at;->a:Lcom/baidu/trace/a/g;

    iget v0, v0, Lcom/baidu/trace/a/g;->h:I

    int-to-double v6, v0

    div-double/2addr v6, v4

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/baidu/trace/at;->c:Lcom/baidu/trace/ar;

    iget-wide v2, p0, Lcom/baidu/trace/at;->b:J

    sget-object v4, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    iget-object v5, p0, Lcom/baidu/trace/at;->a:Lcom/baidu/trace/a/g;

    iget-short v5, v5, Lcom/baidu/trace/a/g;->d:S

    int-to-double v5, v5

    invoke-static/range {v0 .. v6}, Lcom/baidu/trace/ar;->a(Lcom/baidu/trace/ar;Lcom/baidu/trace/model/LatLng;JLcom/baidu/trace/model/CoordType;D)V

    return-void
.end method
