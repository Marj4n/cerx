.class public Lcom/generalplus/GoPlusDrone/View/JoystickView;
.super Landroid/view/View;
.source "JoystickView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x7

.field public static final BOTTOM_LEFT:I = 0x8

.field public static final DEFAULT_LOOP_INTERVAL:J = 0x64L

.field public static final FRONT:I = 0x3

.field public static final FRONT_RIGHT:I = 0x4

.field public static final LEFT:I = 0x1

.field public static final LEFT_FRONT:I = 0x2

.field public static final RIGHT:I = 0x5

.field public static final RIGHT_BOTTOM:I = 0x6


# instance fields
.field private final RAD:D

.field private button:Landroid/graphics/Paint;

.field private buttonRadius:I

.field private centerX:D

.field private centerY:D

.field private joystickRadius:I

.field private lastAngle:I

.field private lastPower:I

.field private loopInterval:J

.field private m_bLeft:Z

.field private mainCircle:Landroid/graphics/Paint;

.field private onJoystickMoveListener:Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;

.field private thread:Ljava/lang/Thread;

.field private xPosition:I

.field private yPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide v0, 0x404ca5dc1a47a9e3L    # 57.2957795

    .line 13
    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->RAD:D

    .line 25
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->thread:Ljava/lang/Thread;

    const-wide/16 v0, 0x64

    .line 26
    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->loopInterval:J

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    .line 28
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerX:D

    .line 30
    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    .line 35
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    .line 36
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastPower:I

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->m_bLeft:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide p1, 0x404ca5dc1a47a9e3L    # 57.2957795

    .line 13
    iput-wide p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->RAD:D

    .line 25
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->thread:Ljava/lang/Thread;

    const-wide/16 p1, 0x64

    .line 26
    iput-wide p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->loopInterval:J

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    .line 28
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerX:D

    .line 30
    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    .line 35
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    .line 36
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastPower:I

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->m_bLeft:Z

    .line 45
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->initJoystickView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide p1, 0x404ca5dc1a47a9e3L    # 57.2957795

    .line 13
    iput-wide p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->RAD:D

    .line 25
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->thread:Ljava/lang/Thread;

    const-wide/16 p1, 0x64

    .line 26
    iput-wide p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->loopInterval:J

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    .line 28
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    const-wide/16 p2, 0x0

    .line 29
    iput-wide p2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerX:D

    .line 30
    iput-wide p2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    .line 35
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    .line 36
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastPower:I

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->m_bLeft:Z

    .line 50
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->initJoystickView()V

    return-void
.end method

.method static synthetic access$000(Lcom/generalplus/GoPlusDrone/View/JoystickView;)Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->onJoystickMoveListener:Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/View/JoystickView;)I
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getAngle()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/View/JoystickView;)I
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getPower()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/generalplus/GoPlusDrone/View/JoystickView;)I
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getDirection()I

    move-result p0

    return p0
.end method

.method private getAngle()I
    .locals 14

    .line 166
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    int-to-double v1, v0

    iget-wide v3, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerX:D

    const-wide v5, 0x4056800000000000L    # 90.0

    const/16 v7, 0x5a

    const-wide v8, 0x404ca5dc1a47a9e3L    # 57.2957795

    cmpl-double v10, v1, v3

    if-lez v10, :cond_2

    .line 167
    iget v1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    int-to-double v10, v1

    iget-wide v12, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    cmpg-double v2, v10, v12

    if-gez v2, :cond_0

    int-to-double v1, v1

    sub-double/2addr v1, v12

    int-to-double v10, v0

    sub-double/2addr v10, v3

    div-double/2addr v1, v10

    .line 168
    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double v0, v0, v8

    add-double/2addr v0, v5

    double-to-int v0, v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    return v0

    :cond_0
    int-to-double v5, v1

    cmpl-double v2, v5, v12

    if-lez v2, :cond_1

    int-to-double v1, v1

    sub-double/2addr v1, v12

    int-to-double v5, v0

    sub-double/2addr v5, v3

    div-double/2addr v1, v5

    .line 172
    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double v0, v0, v8

    double-to-int v0, v0

    add-int/2addr v0, v7

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    return v0

    .line 175
    :cond_1
    iput v7, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    return v7

    :cond_2
    int-to-double v1, v0

    cmpg-double v10, v1, v3

    if-gez v10, :cond_5

    .line 178
    iget v1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    int-to-double v10, v1

    iget-wide v12, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    cmpg-double v2, v10, v12

    if-gez v2, :cond_3

    int-to-double v1, v1

    sub-double/2addr v1, v12

    int-to-double v10, v0

    sub-double/2addr v10, v3

    div-double/2addr v1, v10

    .line 179
    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double v0, v0, v8

    sub-double/2addr v0, v5

    double-to-int v0, v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    return v0

    :cond_3
    int-to-double v5, v1

    cmpl-double v2, v5, v12

    if-lez v2, :cond_4

    int-to-double v1, v1

    sub-double/2addr v1, v12

    int-to-double v5, v0

    sub-double/2addr v5, v3

    div-double/2addr v1, v5

    .line 183
    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double v0, v0, v8

    double-to-int v0, v0

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    return v0

    :cond_4
    const/16 v0, -0x5a

    .line 186
    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    return v0

    .line 189
    :cond_5
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_6

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    return v0

    .line 192
    :cond_6
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    if-gez v0, :cond_7

    const/16 v0, -0xb4

    .line 193
    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    return v0

    :cond_7
    const/16 v0, 0xb4

    .line 195
    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    return v0
.end method

.method private getDirection()I
    .locals 3

    .line 216
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastPower:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->lastAngle:I

    const/16 v2, 0x5a

    if-gtz v0, :cond_1

    mul-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v0, 0x5a

    goto :goto_0

    :cond_1
    if-lez v0, :cond_3

    if-gt v0, v2, :cond_2

    rsub-int/lit8 v1, v0, 0x5a

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v2

    rsub-int v1, v0, 0x168

    :cond_3
    :goto_0
    add-int/lit8 v1, v1, 0x16

    .line 230
    div-int/lit8 v1, v1, 0x2d

    const/4 v0, 0x1

    add-int/2addr v1, v0

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0
.end method

.method private getLeftPower()I
    .locals 4

    .line 211
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    iget v1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->buttonRadius:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->joystickRadius:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v0, v0

    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->joystickRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 212
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getPower()I
    .locals 11

    .line 202
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->m_bLeft:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getLeftPower()I

    move-result v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 205
    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    int-to-double v3, v2

    iget-wide v5, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerX:D

    sub-double/2addr v3, v5

    int-to-double v7, v2

    sub-double/2addr v7, v5

    mul-double v3, v3, v7

    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    int-to-double v5, v2

    iget-wide v7, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    sub-double/2addr v5, v7

    int-to-double v9, v2

    sub-double/2addr v9, v7

    mul-double v5, v5, v9

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->joystickRadius:I

    int-to-double v0, v0

    div-double/2addr v2, v0

    double-to-int v0, v2

    return v0
.end method

.method private measure(I)I
    .locals 1

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-nez v0, :cond_0

    const/16 p1, 0xc8

    :cond_0
    return p1
.end method


# virtual methods
.method protected initJoystickView()V
    .locals 3

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->mainCircle:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 59
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->mainCircle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->mainCircle:Landroid/graphics/Paint;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->button:Landroid/graphics/Paint;

    const v1, -0xff7f01

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->button:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->button:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 119
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerX:D

    .line 120
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    .line 123
    iget-wide v2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerX:D

    double-to-int v2, v2

    int-to-float v2, v2

    double-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->joystickRadius:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->mainCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    iget v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    int-to-float v1, v1

    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->buttonRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->button:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->measure(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->measure(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 94
    invoke-virtual {p0, p1, p1}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 77
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    .line 78
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 80
    div-int/lit8 p1, p1, 0x2

    int-to-double p1, p1

    const-wide/high16 p3, 0x3fd0000000000000L    # 0.25

    mul-double p3, p3, p1

    double-to-int p3, p3

    iput p3, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->buttonRadius:I

    const-wide/high16 p3, 0x3fe8000000000000L    # 0.75

    mul-double p1, p1, p3

    double-to-int p1, p1

    .line 81
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->joystickRadius:I

    .line 83
    iget-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->m_bLeft:Z

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->buttonRadius:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    .line 134
    iget v1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerX:D

    sub-double/2addr v2, v4

    int-to-double v6, v1

    sub-double/2addr v6, v4

    mul-double v2, v2, v6

    int-to-double v4, v0

    iget-wide v6, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    sub-double/2addr v4, v6

    int-to-double v0, v0

    sub-double/2addr v0, v6

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 136
    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->joystickRadius:I

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    .line 137
    iget v3, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerX:D

    sub-double/2addr v3, v5

    int-to-double v7, v2

    mul-double v3, v3, v7

    div-double/2addr v3, v0

    add-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    .line 138
    iget v3, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    sub-double/2addr v3, v5

    int-to-double v7, v2

    mul-double v3, v3, v7

    div-double/2addr v3, v0

    add-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->invalidate()V

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 142
    iget-wide v2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerX:D

    double-to-int v0, v2

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->xPosition:I

    .line 143
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->m_bLeft:Z

    if-nez v0, :cond_1

    .line 144
    iget-wide v2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->centerY:D

    double-to-int v0, v2

    iput v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->yPosition:I

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 147
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->onJoystickMoveListener:Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;

    if-eqz v0, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getAngle()I

    move-result v2

    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getPower()I

    move-result v3

    .line 149
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getDirection()I

    move-result v4

    .line 148
    invoke-interface {v0, v2, v3, v4}, Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;->onValueChanged(III)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->onJoystickMoveListener:Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;

    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 153
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->thread:Ljava/lang/Thread;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 154
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 156
    :cond_3
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->thread:Ljava/lang/Thread;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 158
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->onJoystickMoveListener:Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;

    if-eqz p1, :cond_4

    .line 159
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getAngle()I

    move-result v0

    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getPower()I

    move-result v2

    .line 160
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->getDirection()I

    move-result v3

    .line 159
    invoke-interface {p1, v0, v2, v3}, Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;->onValueChanged(III)V

    :cond_4
    return v1
.end method

.method public run()V
    .locals 2

    .line 250
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/generalplus/GoPlusDrone/View/JoystickView$1;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/View/JoystickView$1;-><init>(Lcom/generalplus/GoPlusDrone/View/JoystickView;)V

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->post(Ljava/lang/Runnable;)Z

    .line 259
    :try_start_0
    iget-wide v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->loopInterval:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setLeft(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->m_bLeft:Z

    return-void
.end method

.method public setOnJoystickMoveListener(Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;J)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->onJoystickMoveListener:Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;

    .line 241
    iput-wide p2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView;->loopInterval:J

    return-void
.end method
