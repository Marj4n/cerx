.class Lcom/generalplus/GoPlusDrone/Activity/FileViewController$4;
.super Ljava/lang/Object;
.source "FileViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->playVideoStreaming()V
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

    .line 133
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$4;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 136
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    .line 137
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendRestartStreaming()I

    .line 138
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$4;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->access$400(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendStartPlayback(I)I

    .line 139
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const-string v0, "rtsp://192.168.25.1:8080/?action=stream"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
