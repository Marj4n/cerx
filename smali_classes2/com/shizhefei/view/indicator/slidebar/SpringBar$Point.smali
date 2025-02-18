.class Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;
.super Ljava/lang/Object;
.source "SpringBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/slidebar/SpringBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Point"
.end annotation


# instance fields
.field private radius:F

.field final synthetic this$0:Lcom/shizhefei/view/indicator/slidebar/SpringBar;

.field private x:F

.field private y:F


# direct methods
.method private constructor <init>(Lcom/shizhefei/view/indicator/slidebar/SpringBar;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->this$0:Lcom/shizhefei/view/indicator/slidebar/SpringBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shizhefei/view/indicator/slidebar/SpringBar;Lcom/shizhefei/view/indicator/slidebar/SpringBar$1;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;-><init>(Lcom/shizhefei/view/indicator/slidebar/SpringBar;)V

    return-void
.end method


# virtual methods
.method public getRadius()F
    .locals 1

    .line 202
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->radius:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 186
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 194
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->y:F

    return v0
.end method

.method public setRadius(F)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->radius:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->y:F

    return-void
.end method
