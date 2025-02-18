.class public Lcom/shizhefei/view/indicator/slidebar/LayoutBar;
.super Ljava/lang/Object;
.source "LayoutBar.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/slidebar/ScrollBar;


# instance fields
.field protected context:Landroid/content/Context;

.field protected gravity:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field protected height:I

.field protected layoutId:I

.field private layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected view:Landroid/view/View;

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 23
    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-direct {p0, p1, p2, v0}, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;-><init>(Landroid/content/Context;ILcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->context:Landroid/content/Context;

    .line 29
    iput p2, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->layoutId:I

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->view:Landroid/view/View;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 32
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->height:I

    .line 33
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->width:I

    .line 34
    iput-object p3, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->gravity:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method


# virtual methods
.method public getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->gravity:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method

.method public getHeight(I)I
    .locals 1

    .line 39
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->height:I

    if-gtz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p1

    :cond_0
    return v0
.end method

.method public getSlideView()Landroid/view/View;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWidth(I)I
    .locals 1

    .line 48
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->width:I

    if-gtz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/LayoutBar;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return p1

    :cond_0
    return v0
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method
