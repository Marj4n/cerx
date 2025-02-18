.class Lcom/serenegiant/usb/CameraDialog$1;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/usb/CameraDialog;


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/CameraDialog;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/serenegiant/usb/CameraDialog$1;->this$0:Lcom/serenegiant/usb/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x102001b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/usb/CameraDialog$1;->this$0:Lcom/serenegiant/usb/CameraDialog;

    invoke-virtual {p1}, Lcom/serenegiant/usb/CameraDialog;->updateDevices()V

    :goto_0
    return-void
.end method
