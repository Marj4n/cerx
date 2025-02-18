.class Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter$2;
.super Ljava/lang/Object;
.source "RecyclerIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter$2;->this$1:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter$2;->this$1:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->access$300(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 349
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter$2;->this$1:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$ProxyAdapter;->this$0:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
