.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$1;
.super Ljava/lang/Object;
.source "BrowseFileFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 70
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    const/16 v0, 0xa7

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
