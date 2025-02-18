.class Lcom/xyzlf/share/library/channel/ShareByWeibo2$3;
.super Lcom/xyzlf/share/library/request/AbstractAsyncTask;
.source "ShareByWeibo2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xyzlf/share/library/channel/ShareByWeibo2;->localSyncTask()V
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


# direct methods
.method constructor <init>(Lcom/xyzlf/share/library/channel/ShareByWeibo2;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$3;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

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

    .line 108
    invoke-virtual {p0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2$3;->doLoadData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doLoadData()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$3;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeibo2;

    invoke-static {v0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->access$300(Lcom/xyzlf/share/library/channel/ShareByWeibo2;)Lcom/xyzlf/share/library/bean/ShareEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->access$200(Lcom/xyzlf/share/library/channel/ShareByWeibo2;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
