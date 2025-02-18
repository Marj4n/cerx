.class public Lcom/xyzlf/share/library/channel/ShareByEmail;
.super Lcom/xyzlf/share/library/channel/ShareBase;
.source "ShareByEmail.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 26
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "mailto:"

    .line 31
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.extra.TEXT"

    .line 38
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByEmail;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/xyzlf/share/library/util/ShareUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    const/16 v1, 0x40

    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    .line 41
    invoke-interface {p2, v1, v0}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x2

    .line 45
    invoke-interface {p2, v1, p1}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    :cond_3
    :goto_0
    return-void

    .line 27
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByEmail;->context:Landroid/content/Context;

    sget p2, Lcom/xyzlf/com/share/library/R$string;->share_empty_tip:I

    invoke-static {p1, p2, v0}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;IZ)V

    return-void
.end method
