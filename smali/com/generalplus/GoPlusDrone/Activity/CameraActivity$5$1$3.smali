.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$3;
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

    .line 478
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1$3;->this$2:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 481
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTakeRecorder:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->callOnClick()Z

    return-void
.end method
