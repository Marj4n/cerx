.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$7;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->initDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$7;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$7;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-virtual {p1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->onClickGallery()V

    return-void
.end method
