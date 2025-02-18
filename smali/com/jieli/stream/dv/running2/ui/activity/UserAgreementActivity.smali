.class public Lcom/jieli/stream/dv/running2/ui/activity/UserAgreementActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "UserAgreementActivity.java"


# instance fields
.field private final USER_PROTOCOL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    const-string v0, "http://cam.jieli.net:28111/app/app.user.service.protocol.html"

    .line 9
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/UserAgreementActivity;->USER_PROTOCOL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 12
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v0, "http://cam.jieli.net:28111/app/app.user.service.protocol.html"

    .line 14
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/UserAgreementActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
