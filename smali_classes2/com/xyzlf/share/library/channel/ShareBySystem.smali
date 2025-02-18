.class public Lcom/xyzlf/share/library/channel/ShareBySystem;
.super Lcom/xyzlf/share/library/channel/ShareBase;
.source "ShareBySystem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    .line 38
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 39
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareBySystem;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xyzlf/share/library/channel/ShareBySystem;->context:Landroid/content/Context;

    sget v3, Lcom/xyzlf/com/share/library/R$string;->share_to:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xyzlf/share/library/util/ShareUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    const/16 v1, 0x400

    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    .line 42
    invoke-interface {p2, v1, v0}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x2

    .line 46
    invoke-interface {p2, v1, p1}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    :cond_3
    :goto_1
    return-void

    .line 26
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareBySystem;->context:Landroid/content/Context;

    sget p2, Lcom/xyzlf/com/share/library/R$string;->share_empty_tip:I

    invoke-static {p1, p2, v0}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;IZ)V

    return-void
.end method
