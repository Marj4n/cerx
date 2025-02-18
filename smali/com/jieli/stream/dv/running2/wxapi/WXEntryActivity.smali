.class public Lcom/jieli/stream/dv/running2/wxapi/WXEntryActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final TIMELINE_SUPPORTED_VERSION:I = 0x21020001


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/wxapi/WXEntryActivity;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/ManifestUtil;->getWeixinKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 25
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 31
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/wxapi/WXEntryActivity;->tag:Ljava/lang/String;

    const-string v1, "onNewIntent---"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 33
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/wxapi/WXEntryActivity;->tag:Ljava/lang/String;

    const-string v0, "onReq-----"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/wxapi/WXEntryActivity;->tag:Ljava/lang/String;

    const-string v0, "onResp------"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/wxapi/WXEntryActivity;->finish()V

    return-void
.end method
