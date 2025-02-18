.class Lcom/roughike/bottombar/BadgeCircle;
.super Ljava/lang/Object;
.source "BadgeCircle.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static make(II)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    .line 52
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 53
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 54
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 55
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method
