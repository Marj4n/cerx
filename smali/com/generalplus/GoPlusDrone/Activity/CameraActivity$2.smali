.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 175
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$002(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;I)I

    .line 179
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->text(I)V

    .line 180
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-virtual {p1, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textSave(I)V

    .line 186
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->littleShow()V

    .line 187
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rlRightMenu:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
