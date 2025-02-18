.class Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl$1;
.super Ljava/lang/Object;
.source "GalleryPhotoItemBindingImpl.java"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl$1;->this$0:Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl$1;->this$0:Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;

    invoke-static {v0}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->access$000(Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl$1;->this$0:Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;

    iget-object v1, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mViewModel:Lcom/gizthon/camera/model/PhotoBean;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v1, v0}, Lcom/gizthon/camera/model/PhotoBean;->setSelected(Z)V

    :cond_1
    return-void
.end method
