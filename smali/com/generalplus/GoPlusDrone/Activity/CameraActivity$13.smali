.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$13;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rightView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

.field final synthetic val$scrollView1:Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$13;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$13;->val$scrollView1:Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1021
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$13;->val$scrollView1:Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$13;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1400(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;->smoothScrollBy(II)V

    return-void
.end method
