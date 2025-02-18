.class Lcom/xyzlf/share/library/channel/ShareByWeibo2$1;
.super Ljava/lang/Object;
.source "ShareByWeibo2.java"

# interfaces
.implements Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyzlf/share/library/channel/ShareByWeibo2;->share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;


# direct methods
.method constructor <init>(Lcom/xyzlf/share/library/channel/ShareByWeibo2;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->access$000(Lcom/xyzlf/share/library/channel/ShareByWeibo2;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$1;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    invoke-static {v0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->access$000(Lcom/xyzlf/share/library/channel/ShareByWeibo2;Landroid/graphics/Bitmap;)V

    return-void
.end method
