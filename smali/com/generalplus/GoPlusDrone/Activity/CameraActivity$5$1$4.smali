.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$4;->this$2:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 497
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$4;->this$2:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$802(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 498
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$4;->this$2:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$800(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$MyTimerTask;

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$4;->this$2:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-direct {v2, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$MyTimerTask;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
