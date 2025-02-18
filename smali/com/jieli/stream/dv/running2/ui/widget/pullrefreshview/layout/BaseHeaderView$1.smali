.class Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$1;
.super Ljava/lang/Object;
.source "BaseHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->stopRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/layout/BaseHeaderView;)V

    return-void
.end method
