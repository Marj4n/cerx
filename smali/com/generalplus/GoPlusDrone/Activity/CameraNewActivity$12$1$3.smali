.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12$1$3;
.super Ljava/lang/Object;
.source "CameraNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12$1;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12$1;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12$1$3;->this$2:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12$1$3;->this$2:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12$1;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$1400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    return-void
.end method
