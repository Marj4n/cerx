.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$10;
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

    .line 385
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 388
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->finish()V

    return-void
.end method
