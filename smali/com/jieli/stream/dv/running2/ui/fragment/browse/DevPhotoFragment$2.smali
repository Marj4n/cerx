.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;
.super Ljava/lang/Object;
.source "DevPhotoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->tryToParseData(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Boolean;)V
    .locals 2

    .line 383
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 384
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getPictureInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$402(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;Ljava/util/List;)Ljava/util/List;

    .line 385
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 387
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$FileComparator;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$FileComparator;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 388
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 392
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 394
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    const/4 v0, 0x0

    const/16 v1, 0x12

    invoke-static {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;II)V

    goto :goto_0

    .line 396
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->TAG:Ljava/lang/String;

    const-string v0, "-tryToParseData- parseJSonData photoInfoList is null!!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->TAG:Ljava/lang/String;

    const-string v0, "-tryToParseData- parseJSonData failed!!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0

    .line 380
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$2;->onCompleted(Ljava/lang/Boolean;)V

    return-void
.end method
