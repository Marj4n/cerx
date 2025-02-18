.class public Lcom/baidu/platform/comapi/map/g;
.super Lcom/baidu/platform/comapi/map/J;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/J;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platform/comapi/map/g;->c:I

    const-string v1, "compass"

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/g;->b:Ljava/lang/String;

    iput v0, p0, Lcom/baidu/platform/comapi/map/g;->d:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/platform/comapi/map/g;->g:I

    return-void
.end method
