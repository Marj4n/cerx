.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/player/OnRealTimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 2523
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudio(II[BJJ)V
    .locals 0

    .line 2540
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2541
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->write(I[B)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2542
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Write audio failed"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 2560
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 3

    .line 2548
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged:state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2551
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    .line 2552
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2553
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onVideo(II[BJJ)V
    .locals 0

    .line 2526
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const/4 p4, 0x0

    const-string p5, "debug_settings"

    invoke-interface {p2, p5, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2527
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1608(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I

    .line 2529
    :cond_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2530
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->write(I[B)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2531
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Write video failed"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2534
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->capture([B)V

    :cond_2
    return-void
.end method
