.class Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$4;
.super Ljava/lang/Object;
.source "BrowseFileDialog.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->controlDeleteDirDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$4;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$4;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->access$400(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    return-void
.end method
