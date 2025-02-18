.class Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;
.super Ljava/lang/Object;
.source "PreviewPhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/PreviewPhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/PreviewPhotoActivity;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    iput p2, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    invoke-static {}, Lcom/gizthon/camera/dialog/ShareDialog;->newInstance()Lcom/gizthon/camera/dialog/ShareDialog;

    move-result-object p1

    new-instance v0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;-><init>(Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/gizthon/camera/dialog/ShareDialog;->setOnClickListener(Lcom/gizthon/camera/dialog/ShareDialog$OnClickListener;)Lcom/gizthon/camera/dialog/ShareDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    .line 193
    invoke-virtual {p1, v0}, Lcom/gizthon/camera/dialog/ShareDialog;->show(Ljava/lang/Object;)V

    return-void
.end method
