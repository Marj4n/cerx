.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$4;
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

    .line 300
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$4;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 303
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$4;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$500(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$4;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$500(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$4;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$500(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
