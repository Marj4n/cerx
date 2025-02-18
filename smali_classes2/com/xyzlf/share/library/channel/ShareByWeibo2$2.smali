.class Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;
.super Lcom/xyzlf/share/library/request/AbstractAsyncTask;
.source "ShareByWeibo2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyzlf/share/library/channel/ShareByWeibo2;->localSyncTask(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xyzlf/share/library/request/AbstractAsyncTask<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/xyzlf/share/library/channel/ShareByWeibo2;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    iput-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doLoadData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;->doLoadData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doLoadData()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    iget-object v0, v0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/xyzlf/share/library/util/ShareUtil;->saveBitmapToSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    iget-object v0, v0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    iget-object v2, v1, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->access$100(Lcom/xyzlf/share/library/channel/ShareByWeibo2;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xyzlf/share/library/util/ShareUtil;->saveBitmapToSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    invoke-static {v1, v0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->access$200(Lcom/xyzlf/share/library/channel/ShareByWeibo2;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
