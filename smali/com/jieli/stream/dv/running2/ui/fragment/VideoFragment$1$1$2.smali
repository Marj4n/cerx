.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$2;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;->onFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$2;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$2;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->pictures_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void
.end method
