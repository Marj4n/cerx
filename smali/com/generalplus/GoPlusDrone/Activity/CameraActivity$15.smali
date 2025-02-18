.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$15;
.super Landroid/os/Handler;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;
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

    .line 1697
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$15;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1699
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$15;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1900(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1702
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1704
    :cond_1
    sget-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isR:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1705
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isR:Z

    .line 1706
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$15$1;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$15$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$15;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1719
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1720
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$15;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/generalplus/GoPlusDrone/R$string;->language22:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1721
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTakeRecorder:Landroid/widget/ImageButton;

    sget v0, Lcom/generalplus/GoPlusDrone/R$drawable;->vedio_button:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1722
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
