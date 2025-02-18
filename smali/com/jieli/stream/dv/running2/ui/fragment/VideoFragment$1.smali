.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 203
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 332
    :pswitch_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 333
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$702(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 334
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 335
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 336
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result p1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x2

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setCameraType(I)V

    .line 343
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 345
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 347
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_CAMERA_SWITCH: isSwitchCamera is true"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    :pswitch_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "!!! MSG_REQUEST_THUMB !!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 328
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 329
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto/16 :goto_0

    .line 318
    :pswitch_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)V

    .line 319
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1302(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)I

    .line 320
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa06

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 306
    :pswitch_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 307
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSaveCycVideo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto/16 :goto_0

    .line 314
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->no_video_tip:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :pswitch_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 295
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->not_supported_in_rtsp_mode:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :cond_4
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v0

    xor-int/2addr v0, v2

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$3;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;)V

    invoke-virtual {p1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRTIntercom(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto/16 :goto_0

    .line 283
    :pswitch_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_PROJECTION_CONTROL:  isProjection="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v3

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    xor-int/lit8 v4, p1, 0x1

    const/16 v5, 0x1e0

    const/16 v6, 0x110

    const/16 v7, 0x1e

    new-instance v8, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$2;

    invoke-direct {v8, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;)V

    invoke-virtual/range {v3 .. v8}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToStreamingPush(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto/16 :goto_0

    .line 276
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_5

    .line 278
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 280
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto/16 :goto_0

    .line 227
    :pswitch_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 228
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 229
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->not_supported_in_rtsp_mode:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    move-result-object p1

    if-nez p1, :cond_7

    .line 233
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;-><init>()V

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$402(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    .line 234
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->setOnCaptureListener(Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;)V

    .line 263
    :cond_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->selectedHeight:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->setHeight(I)V

    .line 264
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->selectedWidth:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->setWidth(I)V

    .line 265
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$502(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    goto/16 :goto_0

    .line 268
    :cond_8
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 269
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->open_rts_tip:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_9
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "photo=isAdjustResolution=="

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_8
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 208
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 209
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->not_supported_in_rtsp_mode:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const/16 p1, 0x7d0

    .line 212
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_c

    .line 213
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---is playing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-boolean p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRecordPrepared:Z

    if-eqz p1, :cond_b

    .line 215
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->stopLocalRecording()V

    goto :goto_0

    .line 218
    :cond_b
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto :goto_0

    .line 220
    :cond_c
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialod_wait:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_d
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->open_rts_tip:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_e
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0xa00
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
