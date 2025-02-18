.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$21;
.super Landroid/os/Handler;
.source "CameraNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;
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

    .line 1501
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$21;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1503
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 1506
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1508
    :cond_0
    sget-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isR:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1509
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isR:Z

    .line 1510
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$21$1;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$21$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$21;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1523
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1524
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$21;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/generalplus/GoPlusDrone/R$string;->language22:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1525
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$21;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$1400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/generalplus/GoPlusDrone/R$mipmap;->icon_record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
