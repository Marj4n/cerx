.class Lcom/jieli/stream/dv/running2/task/DebugHelper$1;
.super Ljava/lang/Object;
.source "DebugHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/task/DebugHelper;->notifyDebugStart(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

.field final synthetic val$interval:I

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$len:I


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/task/DebugHelper;Ljava/lang/String;II)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;->val$ip:Ljava/lang/String;

    iput p3, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;->val$len:I

    iput p4, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;->val$interval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$200(Lcom/jieli/stream/dv/running2/task/DebugHelper;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$200(Lcom/jieli/stream/dv/running2/task/DebugHelper;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 122
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/task/IDebugListener;

    .line 123
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;->val$ip:Ljava/lang/String;

    iget v3, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;->val$len:I

    iget v4, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;->val$interval:I

    invoke-interface {v1, v2, v3, v4}, Lcom/jieli/stream/dv/running2/task/IDebugListener;->onStartDebug(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method
