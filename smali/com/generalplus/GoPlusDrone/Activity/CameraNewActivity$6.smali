.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$6;
.super Ljava/lang/Object;
.source "CameraNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 320
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$6;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 324
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.gizthon.preview.gallery.list"

    .line 325
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$6;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-virtual {v0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
