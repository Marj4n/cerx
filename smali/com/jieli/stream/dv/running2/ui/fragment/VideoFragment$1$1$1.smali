.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;->onCompleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->photos_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$1;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
