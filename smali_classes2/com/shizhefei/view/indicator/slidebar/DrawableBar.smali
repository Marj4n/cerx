.class public Lcom/shizhefei/view/indicator/slidebar/DrawableBar;
.super Ljava/lang/Object;
.source "DrawableBar.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/slidebar/ScrollBar;


# instance fields
.field protected drawable:Landroid/graphics/drawable/Drawable;

.field protected drawableId:I

.field protected gravity:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 20
    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-direct {p0, p1, p2, v0}, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;-><init>(Landroid/content/Context;ILcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-direct {p0, p1, p2, v0}, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->view:Landroid/view/View;

    .line 35
    iput-object p2, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->drawable:Landroid/graphics/drawable/Drawable;

    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 37
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    :goto_0
    iput-object p3, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->gravity:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->drawableId:I

    return v0
.end method

.method public getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->gravity:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method

.method public getHeight(I)I
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    return p1
.end method

.method public getSlideView()Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWidth(I)I
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    return p1
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 49
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->drawableId:I

    .line 50
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setGravity(Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;)Lcom/shizhefei/view/indicator/slidebar/DrawableBar;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/DrawableBar;->gravity:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object p0
.end method
