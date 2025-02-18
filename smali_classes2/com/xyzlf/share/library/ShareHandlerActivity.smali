.class public Lcom/xyzlf/share/library/ShareHandlerActivity;
.super Lcom/xyzlf/share/library/ShareBaseActivity;
.source "ShareHandlerActivity.java"

# interfaces
.implements Lcom/xyzlf/share/library/interfaces/OnShareListener;


# instance fields
.field protected data:Lcom/xyzlf/share/library/bean/ShareEntity;

.field protected isInit:Z

.field protected shareByWeibo:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

.field protected shareByWeixin:Lcom/xyzlf/share/library/channel/ShareByWeixin;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/xyzlf/share/library/ShareBaseActivity;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->tag:Ljava/lang/String;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->isInit:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/xyzlf/share/library/ShareBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2777

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2778

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 130
    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/ShareHandlerActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-super {p0, p1}, Lcom/xyzlf/share/library/ShareBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_share_data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_b

    .line 45
    instance-of v3, v2, Lcom/xyzlf/share/library/bean/ShareEntity;

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 50
    :cond_0
    check-cast v2, Lcom/xyzlf/share/library/bean/ShareEntity;

    iput-object v2, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    if-nez p1, :cond_a

    .line 54
    iget-object p1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->shareByWeixin:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->unregisterWeixinReceiver()V

    .line 56
    iput-object v1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->shareByWeixin:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    .line 58
    :cond_1
    iget p1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->channel:I

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10

    if-eq p1, v1, :cond_5

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    const/16 v1, 0x400

    if-eq p1, v1, :cond_2

    .line 98
    iget p1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->channel:I

    invoke-virtual {p0, p1, v0}, Lcom/xyzlf/share/library/ShareHandlerActivity;->finishWithResult(II)V

    goto :goto_1

    .line 94
    :cond_2
    new-instance p1, Lcom/xyzlf/share/library/channel/ShareBySystem;

    invoke-direct {p1, p0}, Lcom/xyzlf/share/library/channel/ShareBySystem;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {p1, v0, p0}, Lcom/xyzlf/share/library/channel/ShareBySystem;->share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    goto :goto_1

    .line 90
    :cond_3
    new-instance p1, Lcom/xyzlf/share/library/channel/ShareByEmail;

    invoke-direct {p1, p0}, Lcom/xyzlf/share/library/channel/ShareByEmail;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {p1, v0, p0}, Lcom/xyzlf/share/library/channel/ShareByEmail;->share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    goto :goto_1

    .line 86
    :cond_4
    new-instance p1, Lcom/xyzlf/share/library/channel/ShareBySms;

    invoke-direct {p1, p0}, Lcom/xyzlf/share/library/channel/ShareBySms;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {p1, v0, p0}, Lcom/xyzlf/share/library/channel/ShareBySms;->share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    goto :goto_1

    .line 82
    :cond_5
    new-instance p1, Lcom/xyzlf/share/library/channel/ShareByQZone;

    invoke-direct {p1, p0}, Lcom/xyzlf/share/library/channel/ShareByQZone;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {p1, v0, p0}, Lcom/xyzlf/share/library/channel/ShareByQZone;->share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    goto :goto_1

    .line 78
    :cond_6
    new-instance p1, Lcom/xyzlf/share/library/channel/ShareByQQ;

    invoke-direct {p1, p0}, Lcom/xyzlf/share/library/channel/ShareByQQ;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {p1, v0, p0}, Lcom/xyzlf/share/library/channel/ShareByQQ;->share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    goto :goto_1

    .line 73
    :cond_7
    new-instance p1, Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    invoke-direct {p1, p0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->shareByWeibo:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    .line 74
    iget-object v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {p1, v0, p0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    goto :goto_1

    .line 60
    :cond_8
    new-instance p1, Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-direct {p1, p0, v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->shareByWeixin:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    .line 61
    invoke-virtual {p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->registerWeixinReceiver()V

    .line 62
    iget-object p1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->shareByWeixin:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    iget-object v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {p1, v0, p0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    goto :goto_1

    .line 66
    :cond_9
    new-instance p1, Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-direct {p1, p0, v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->shareByWeixin:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    .line 67
    invoke-virtual {p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->registerWeixinReceiver()V

    .line 68
    iget-object p1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->shareByWeixin:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    iget-object v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {p1, v0, p0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    .line 69
    iget-object p1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->tag:Ljava/lang/String;

    const-string v0, "Share wx friend"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    return-void

    .line 46
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->tag:Ljava/lang/String;

    const-string v0, "object error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareHandlerActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/xyzlf/share/library/ShareBaseActivity;->onDestroy()V

    .line 183
    iget-object v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->shareByWeixin:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->unregisterWeixinReceiver()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/xyzlf/share/library/ShareBaseActivity;->onResume()V

    .line 111
    iget-boolean v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->isInit:Z

    if-nez v0, :cond_0

    .line 112
    iget v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->channel:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/xyzlf/share/library/ShareHandlerActivity;->finishWithResult(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/xyzlf/share/library/ShareHandlerActivity;->isInit:Z

    :goto_0
    return-void
.end method

.method public onShare(II)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/xyzlf/share/library/ShareHandlerActivity;->finishWithResult(II)V

    return-void
.end method
