.class Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;I)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$2;->this$0:Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;

    iput p2, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$2;->this$0:Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->access$000(Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;)Lcom/jieli/lib/dv/control/player/IPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$2;->this$0:Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;->access$000(Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl;)Lcom/jieli/lib/dv/control/player/IPlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/dv/control/player/protocol/TCPRTStreamImpl$2;->val$state:I

    invoke-interface {v0, v1}, Lcom/jieli/lib/dv/control/player/IPlayerListener;->onStateChanged(I)V

    :cond_0
    return-void
.end method
