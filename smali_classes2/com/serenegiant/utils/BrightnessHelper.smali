.class public Lcom/serenegiant/utils/BrightnessHelper;
.super Ljava/lang/Object;
.source "BrightnessHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBrightness(Landroid/app/Activity;F)V
    .locals 3

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 32
    :cond_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getBrightness(Landroid/app/Activity;)F
    .locals 0

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 38
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    return p1
.end method
