.class Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$1;
.super Ljava/lang/Object;
.source "BrowseFirmwareDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 110
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->access$000(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
