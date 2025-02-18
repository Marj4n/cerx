.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->littleShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V
    .locals 0

    .line 1405
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 1409
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1411
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1413
    :goto_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;)V

    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
