.class Lcom/jieli/lib/dv/control/player/PlaybackStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/player/PlaybackStream;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

.field final synthetic val$code:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;ILjava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    iput p2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;->val$code:I

    iput-object p3, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    iget v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;->val$code:I

    iget-object v2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
