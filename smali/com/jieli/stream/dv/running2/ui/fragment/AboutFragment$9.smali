.class Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$9;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->showWaitingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$9;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDialog()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$9;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->dismissWaitingDialog()V

    return-void
.end method
