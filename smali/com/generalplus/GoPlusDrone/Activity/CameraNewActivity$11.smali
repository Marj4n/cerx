.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$11;
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

    .line 392
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$11;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$11;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-virtual {v0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->pressCapture(Landroid/view/View;)V

    return-void
.end method
