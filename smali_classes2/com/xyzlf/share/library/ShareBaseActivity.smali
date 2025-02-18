.class public abstract Lcom/xyzlf/share/library/ShareBaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ShareBaseActivity.java"


# instance fields
.field protected channel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finishWithResult(II)V
    .locals 2

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_show_channel"

    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_share_status"

    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/xyzlf/share/library/ShareBaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareBaseActivity;->finish()V

    return-void
.end method

.method protected initChannel()V
    .locals 3

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_show_channel"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xyzlf/share/library/ShareBaseActivity;->channel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareBaseActivity;->finish()V

    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareBaseActivity;->initChannel()V

    return-void
.end method
