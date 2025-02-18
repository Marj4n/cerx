.class Lcom/xyzlf/share/library/channel/ShareByQZone$1;
.super Ljava/lang/Object;
.source "ShareByQZone.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyzlf/share/library/channel/ShareByQZone;->share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyzlf/share/library/channel/ShareByQZone;

.field final synthetic val$listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;


# direct methods
.method constructor <init>(Lcom/xyzlf/share/library/channel/ShareByQZone;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByQZone$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByQZone;

    iput-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByQZone$1;->val$listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByQZone$1;->val$listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    const/4 v2, 0x3

    .line 66
    invoke-interface {v0, v1, v2}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByQZone$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByQZone;

    iget-object v0, v0, Lcom/xyzlf/share/library/channel/ShareByQZone;->context:Landroid/content/Context;

    sget v1, Lcom/xyzlf/com/share/library/R$string;->share_cancel:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByQZone$1;->val$listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/16 v1, 0x10

    .line 50
    invoke-interface {p1, v1, v0}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByQZone$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByQZone;

    iget-object p1, p1, Lcom/xyzlf/share/library/channel/ShareByQZone;->context:Landroid/content/Context;

    sget v1, Lcom/xyzlf/com/share/library/R$string;->share_success:I

    invoke-static {p1, v1, v0}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByQZone$1;->val$listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 57
    invoke-interface {v0, v1, v2}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    :cond_0
    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByQZone$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByQZone;

    iget-object v0, v0, Lcom/xyzlf/share/library/channel/ShareByQZone;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
