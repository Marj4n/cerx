.class Lcom/generalplus/GoPlusDrone/Activity/FileViewController$5;
.super Ljava/lang/Object;
.source "FileViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->playPictureStreaming()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    .line 155
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamClearCommandQueue()V

    .line 156
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendRestartStreaming()I

    .line 157
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const-string v0, "rtsp://192.168.25.1:8080/?action=stream"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 164
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->access$400(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)I

    move-result v2

    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendStartPlayback(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
