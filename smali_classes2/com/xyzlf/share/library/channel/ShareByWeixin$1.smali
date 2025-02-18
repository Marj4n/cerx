.class Lcom/xyzlf/share/library/channel/ShareByWeixin$1;
.super Ljava/lang/Object;
.source "ShareByWeixin.java"

# interfaces
.implements Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyzlf/share/library/channel/ShareByWeixin;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;


# direct methods
.method constructor <init>(Lcom/xyzlf/share/library/channel/ShareByWeixin;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$200(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Send null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$500(Lcom/xyzlf/share/library/channel/ShareByWeixin;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$100(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Lcom/xyzlf/share/library/bean/ShareEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyzlf/share/library/bean/ShareEntity;->isShareBigImg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$200(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "share img"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$300(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Lcom/xyzlf/share/library/interfaces/OnShareListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->shareImg(Landroid/graphics/Bitmap;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$200(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {v0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$400(Lcom/xyzlf/share/library/channel/ShareByWeixin;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
