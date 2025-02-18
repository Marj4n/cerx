.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$21;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tryToParseData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 1512
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$21;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Boolean;)V
    .locals 1

    .line 1515
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1516
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$21;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Ljava/util/List;)Ljava/util/List;

    .line 1517
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$21;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto :goto_0

    .line 1519
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$21;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->TAG:Ljava/lang/String;

    const-string v0, "-tryToParseData- parseJSonData failed!!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$21;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 1521
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$21;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0

    .line 1512
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$21;->onCompleted(Ljava/lang/Boolean;)V

    return-void
.end method
