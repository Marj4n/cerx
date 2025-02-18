.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 204
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 209
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 334
    :pswitch_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)V

    .line 335
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1602(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)I

    .line 336
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0xa05

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 319
    :pswitch_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadingDialog"

    invoke-virtual {p1, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 323
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$6;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$6;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;)V

    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSaveCycVideo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto/16 :goto_0

    .line 330
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->no_video_tip:I

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :pswitch_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 307
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->not_supported_in_rtsp_mode:I

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :cond_2
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result v2

    xor-int/2addr v1, v2

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$5;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$5;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;)V

    invoke-virtual {p1, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRTIntercom(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto/16 :goto_0

    .line 289
    :pswitch_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 290
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->requestCapturePermission()V

    goto/16 :goto_0

    .line 292
    :cond_3
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$4;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$4;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;)V

    invoke-virtual/range {v1 .. v6}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToStreamingPush(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 298
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1102(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z

    .line 299
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    .line 300
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 301
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    goto/16 :goto_0

    .line 249
    :pswitch_4
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isSdcardExist()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 250
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$2;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;)V

    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToTakePhoto(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto/16 :goto_0

    .line 259
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 260
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 261
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->not_supported_in_rtsp_mode:I

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    move-result-object p1

    if-nez p1, :cond_6

    .line 265
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    new-instance v2, Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-direct {v2}, Lcom/jieli/stream/dv/running2/data/VideoCapture;-><init>()V

    invoke-static {p1, v2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$702(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    .line 266
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    move-result-object p1

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$3;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$3;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;)V

    invoke-virtual {p1, v2}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->setOnCaptureListener(Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;)V

    .line 279
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    .line 280
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$802(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z

    goto/16 :goto_0

    .line 282
    :cond_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 283
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->open_rts_tip:I

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :pswitch_5
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isSdcardExist()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 212
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I

    move-result p1

    if-eqz p1, :cond_a

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_9

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    .line 219
    :cond_9
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$1;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;)V

    invoke-virtual {p1, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRecordVideo(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 214
    :cond_a
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->open_video_tip:I

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_b
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 231
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 232
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->not_supported_in_rtsp_mode:I

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const/16 p1, 0x7d0

    .line 235
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_e

    .line 236
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 237
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    goto :goto_0

    .line 239
    :cond_d
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    goto :goto_0

    .line 241
    :cond_e
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialod_wait:I

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_f
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->open_rts_tip:I

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_10
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa00
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
