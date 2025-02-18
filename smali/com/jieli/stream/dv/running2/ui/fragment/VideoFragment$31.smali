.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$31;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onState(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 2404
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$31;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2407
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$31;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 2408
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$31;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    return-void
.end method
