.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;
.super Ljava/lang/Object;
.source "CameraNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->littleShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 1240
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1242
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1244
    :goto_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;)V

    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
