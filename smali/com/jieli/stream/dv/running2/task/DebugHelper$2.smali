.class Lcom/jieli/stream/dv/running2/task/DebugHelper$2;
.super Ljava/lang/Object;
.source "DebugHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/task/DebugHelper;->notifyDebugResult(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

.field final synthetic val$dropCount:I

.field final synthetic val$dropSum:I


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/task/DebugHelper;II)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$2;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    iput p2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$2;->val$dropCount:I

    iput p3, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$2;->val$dropSum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$2;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$200(Lcom/jieli/stream/dv/running2/task/DebugHelper;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$2;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$200(Lcom/jieli/stream/dv/running2/task/DebugHelper;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 138
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/task/IDebugListener;

    .line 139
    iget v2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$2;->val$dropCount:I

    iget v3, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$2;->val$dropSum:I

    invoke-interface {v1, v2, v3}, Lcom/jieli/stream/dv/running2/task/IDebugListener;->onDebugResult(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
