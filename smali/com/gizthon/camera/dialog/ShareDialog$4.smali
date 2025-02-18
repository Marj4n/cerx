.class Lcom/gizthon/camera/dialog/ShareDialog$4;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/dialog/ShareDialog;->initView(Landroidx/databinding/ViewDataBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/dialog/ShareDialog;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/dialog/ShareDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog$4;->this$0:Lcom/gizthon/camera/dialog/ShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 94
    :try_start_0
    iget-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog$4;->this$0:Lcom/gizthon/camera/dialog/ShareDialog;

    invoke-static {p1}, Lcom/gizthon/camera/dialog/ShareDialog;->access$000(Lcom/gizthon/camera/dialog/ShareDialog;)Lcom/gizthon/camera/dialog/ShareDialog$OnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/gizthon/camera/dialog/ShareDialog$OnClickListener;->shareFecebook()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 98
    :goto_0
    iget-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog$4;->this$0:Lcom/gizthon/camera/dialog/ShareDialog;

    invoke-virtual {p1}, Lcom/gizthon/camera/dialog/ShareDialog;->dismiss()V

    return-void
.end method
