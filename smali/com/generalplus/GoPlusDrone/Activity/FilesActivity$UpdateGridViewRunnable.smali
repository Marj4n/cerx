.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateGridViewRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "FilesActivity"

    const-string v1, "UpdateGridViewRunnable ..."

    .line 434
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_0
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$500()Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2800(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable$1;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x3e8

    .line 445
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 448
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2800(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable$2;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable$2;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "UpdateGridViewRunnable ... Done"

    .line 458
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 459
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2902(Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
