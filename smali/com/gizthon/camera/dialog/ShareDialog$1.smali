.class Lcom/gizthon/camera/dialog/ShareDialog$1;
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

    .line 62
    iput-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog$1;->this$0:Lcom/gizthon/camera/dialog/ShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog$1;->this$0:Lcom/gizthon/camera/dialog/ShareDialog;

    invoke-virtual {p1}, Lcom/gizthon/camera/dialog/ShareDialog;->dismiss()V

    return-void
.end method
