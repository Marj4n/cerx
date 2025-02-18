.class Lcom/jieli/stream/dv/running2/task/DebugHelper$3;
.super Ljava/lang/Object;
.source "DebugHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/task/DebugHelper;->notifyErrorEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/task/DebugHelper;ILjava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$3;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    iput p2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$3;->val$code:I

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$3;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$200(Lcom/jieli/stream/dv/running2/task/DebugHelper;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$3;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$200(Lcom/jieli/stream/dv/running2/task/DebugHelper;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 154
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/task/IDebugListener;

    .line 155
    iget v2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$3;->val$code:I

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$3;->val$msg:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/jieli/stream/dv/running2/task/IDebugListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
