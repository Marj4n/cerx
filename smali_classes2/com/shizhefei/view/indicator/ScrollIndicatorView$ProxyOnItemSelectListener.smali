.class Lcom/shizhefei/view/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyOnItemSelectListener"
.end annotation


# instance fields
.field private onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

.field final synthetic this$0:Lcom/shizhefei/view/indicator/ScrollIndicatorView;


# direct methods
.method private constructor <init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->this$0:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Lcom/shizhefei/view/indicator/ScrollIndicatorView$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;-><init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)V

    return-void
.end method


# virtual methods
.method public getOnItemSelectedListener()Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    return-object v0
.end method

.method public onItemSelected(Landroid/view/View;II)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->this$0:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->access$100(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->this$0:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->access$200(Lcom/shizhefei/view/indicator/ScrollIndicatorView;I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;->onItemSelected(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    return-void
.end method
