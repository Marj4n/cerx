.class public Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;
.super Landroid/view/View;
.source "PlaybackSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;
    }
.end annotation


# static fields
.field public static final BROWSE_CONTENT_MODE:I = 0x1

.field public static final BROWSE_COVER_MODE:I = 0x0

.field public static final REAL_TIME_STREAM_MODE:I = 0x2


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private baseline:F

.field private browseCursorPos:F

.field private browseMaxPostion:I

.field private browseRightPaint:Landroid/graphics/Paint;

.field private browseinterval:I

.field private currentSelected:I

.field private cursorPaint:Landroid/graphics/Paint;

.field private cursorThumbPaint:Landroid/graphics/Paint;

.field private density:F

.field private endPos:F

.field private grayPaint:Landroid/graphics/Paint;

.field private halfHeight:I

.field private left:J

.field private leftTip:Ljava/lang/String;

.field private mHeight:I

.field private mOnStatechangeListener:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;

.field private mWidth:I

.field private mode:I

.field private offset:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field private right:J

.field private rightTip:Ljava/lang/String;

.field private selectFileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

.field private tag:Ljava/lang/String;

.field private textPaint:Landroid/graphics/Paint;

.field private textTipPaint:Landroid/graphics/Paint;

.field private thumbRadio:I

.field private time:J

.field private timeCursorPos:F

.field private timeLeftPaint:Landroid/graphics/Paint;

.field private timeSosPaint:Landroid/graphics/Paint;

.field private tipBackgroundPaint:Landroid/graphics/Paint;

.field private tipHeight:F

.field private tipText:Ljava/lang/String;

.field private tipWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tag:Ljava/lang/String;

    const/4 p1, 0x3

    .line 49
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    const/16 p1, 0x14

    .line 50
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingRight:I

    .line 51
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingLeft:I

    .line 52
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingTop:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 53
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->density:F

    const/4 p2, -0x1

    .line 56
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseinterval:I

    const-string p2, ""

    .line 64
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipText:Ljava/lang/String;

    int-to-float p1, p1

    .line 70
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeCursorPos:F

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->offset:I

    .line 161
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->init()V

    return-void
.end method

.method private dispatchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 359
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getMode()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->handleRealTimeModeTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->handleBrowseContentTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->handleBrowseCoverTouchEvent(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method private drawBrowseRule(Landroid/graphics/Canvas;)V
    .locals 9

    .line 261
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 262
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseRightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 263
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseinterval:I

    if-lez v0, :cond_1

    .line 264
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingLeft:I

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 267
    :goto_0
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    if-ge v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v8, v2, :cond_0

    int-to-float v5, v0

    .line 269
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    int-to-float v4, v2

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    int-to-float v6, v2

    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->grayPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    int-to-float v5, v0

    .line 272
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v4, v2

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v6, v2

    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->grayPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    .line 275
    :goto_1
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseinterval:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 280
    :cond_1
    iget v5, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    int-to-float v4, v0

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 281
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    int-to-float v2, v1

    sub-float v3, v0, v2

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    sub-int/2addr v5, v1

    int-to-float v5, v5

    int-to-float v6, v1

    add-float/2addr v0, v6

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    int-to-float v6, v2

    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorThumbPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTimeRule(Landroid/graphics/Canvas;)V
    .locals 10

    .line 241
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 242
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 243
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeCursorPos:F

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 244
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 245
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 246
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float v1, v1, v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textPaint:Landroid/graphics/Paint;

    const-string v4, "0"

    invoke-virtual {p1, v4, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 247
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 248
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->time:J

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingRight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 249
    iget v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeCursorPos:F

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    int-to-float v6, v0

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    int-to-float v8, v0

    iget-object v9, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v7

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 250
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeCursorPos:F

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    int-to-float v2, v1

    sub-float v4, v0, v2

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    sub-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    sub-int/2addr v5, v1

    int-to-float v5, v5

    int-to-float v6, v1

    add-float/2addr v6, v0

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorThumbPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTip(Landroid/graphics/Canvas;)V
    .locals 11

    .line 288
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    add-float/2addr v3, v0

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    int-to-float v5, v4

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    int-to-float v0, v4

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    div-float v3, v1, v2

    sub-float v3, v0, v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    div-float v0, v1, v2

    .line 295
    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipWidth:F

    div-float v4, v3, v2

    sub-float v4, v0, v4

    iget v5, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingTop:I

    int-to-float v6, v5

    div-float/2addr v3, v2

    add-float/2addr v3, v0

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipHeight:F

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-direct {v1, v4, v6, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 296
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 297
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipText:Ljava/lang/String;

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->baseline:F

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    iget v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v9, v0

    iget-object v10, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipBackgroundPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 299
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 254
    div-int/lit16 p1, p1, 0x3e8

    div-int/lit8 v2, p1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%02d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 255
    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleBrowseContentTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 330
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    int-to-float v0, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    sub-int v3, v2, v1

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v1

    int-to-float v0, v2

    :goto_0
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeCursorPos:F

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 332
    :cond_2
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeCursorPos:F

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingLeft:I

    int-to-float v1, v0

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->endPos:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 334
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->time:J

    long-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->offset:I

    int-to-long v0, p1

    .line 335
    iget-wide v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->left:J

    add-long/2addr v0, v2

    .line 336
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mOnStatechangeListener:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;

    if-eqz v2, :cond_3

    .line 337
    invoke-interface {v2, v0, v1, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;->onBrowseContentChange(JI)V

    :cond_3
    return-void
.end method

.method private handleBrowseCoverTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 304
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    sub-int v3, v2, v1

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v1

    int-to-float v1, v2

    :goto_0
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    .line 305
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->endPos:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    const/4 p1, 0x2

    .line 306
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mode:I

    .line 307
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->leftTip:Ljava/lang/String;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipText:Ljava/lang/String;

    .line 308
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mOnStatechangeListener:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;

    if-eqz p1, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getMode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;->onModeChange(I)V

    :cond_2
    return-void

    :cond_3
    sub-float v0, v2, v1

    .line 312
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingLeft:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseMaxPostion:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_8

    .line 315
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseMaxPostion:I

    if-gez v1, :cond_4

    goto :goto_1

    .line 318
    :cond_4
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->currentSelected:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 319
    :cond_5
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseMaxPostion:I

    if-le v0, p1, :cond_6

    move v0, p1

    :cond_6
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->currentSelected:I

    .line 320
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mOnStatechangeListener:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;

    if-eqz p1, :cond_7

    .line 321
    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;->onBrowseCoverChange(I)V

    goto :goto_1

    .line 323
    :cond_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tag:Ljava/lang/String;

    const-string v0, "mOnStatechangeListener is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private handleRealTimeModeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->endPos:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    sub-int v3, v1, v2

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v2

    int-to-float p1, v1

    .line 346
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mode:I

    .line 351
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->rightTip:Ljava/lang/String;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipText:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mOnStatechangeListener:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;

    if-eqz v0, :cond_2

    .line 353
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;->onModeChange(I)V

    .line 355
    :cond_2
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->handleBrowseCoverTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private init()V
    .locals 6

    .line 165
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->density:F

    .line 166
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "density->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 168
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingTop:I

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingLeft:I

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingRight:I

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->backgroundPaint:Landroid/graphics/Paint;

    .line 170
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$color;->half_transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    .line 176
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41700000    # 15.0f

    mul-float v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->grayPaint:Landroid/graphics/Paint;

    const v4, -0x777778

    .line 180
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->grayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->grayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->grayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorPaint:Landroid/graphics/Paint;

    .line 186
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/jieli/stream/dv/running2/R$color;->bg_playback_seek_thumb:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorThumbPaint:Landroid/graphics/Paint;

    .line 192
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorThumbPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorThumbPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseRightPaint:Landroid/graphics/Paint;

    .line 198
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jieli/stream/dv/running2/R$color;->bg_playback_seek_bar:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseRightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseRightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseRightPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeLeftPaint:Landroid/graphics/Paint;

    .line 204
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jieli/stream/dv/running2/R$color;->bg_playback_seek_bar:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeLeftPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeSosPaint:Landroid/graphics/Paint;

    .line 210
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jieli/stream/dv/running2/R$color;->bg_playback_seek_bar:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeSosPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 212
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeSosPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 213
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeSosPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textTipPaint:Landroid/graphics/Paint;

    .line 216
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jieli/stream/dv/running2/R$color;->text_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textTipPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->density:F

    const/high16 v4, 0x41600000    # 14.0f

    mul-float v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 219
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textTipPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 221
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->playback_seekbar_tip_left:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->leftTip:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->playback_seekbar_tip_right:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->rightTip:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->leftTip:Ljava/lang/String;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipText:Ljava/lang/String;

    .line 224
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 225
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textTipPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->rightTip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 226
    :goto_0
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipWidth:F

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v0, v3

    .line 227
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipWidth:F

    .line 228
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v0, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v0, v0, v3

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipHeight:F

    .line 229
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->textTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 230
    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipHeight:F

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingTop:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    iput v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->baseline:F

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipBackgroundPaint:Landroid/graphics/Paint;

    .line 232
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jieli/stream/dv/running2/R$color;->bg_playback_tip:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 234
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 235
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingRight:I

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingLeft:I

    return-void
.end method

.method private measureHeight(I)I
    .locals 2

    .line 446
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 447
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 2

    .line 432
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 433
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x1f4

    :goto_0
    return p1
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2

    const-string v0, "PlaybackSeekBar mode: "

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5b9e\u65f6\u6d41\u6d4f\u89c8"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5185\u5bb9\u6d4f\u89c8"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5c01\u9762\u6d4f\u89c8"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mode:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 486
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->offset:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 407
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 408
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 409
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 410
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 411
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->drawTimeRule(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getMode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 413
    :cond_1
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->drawBrowseRule(Landroid/graphics/Canvas;)V

    .line 414
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->drawTip(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 420
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 421
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->measureWidth(I)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    .line 422
    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->measureHeight(I)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    int-to-float p1, p1

    const p2, 0x3fe66666    # 1.8f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 423
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    .line 424
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->cursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingRight:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->endPos:F

    .line 425
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mode:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_0

    .line 426
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    .line 428
    :cond_0
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mWidth:I

    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->dispatchEvent(Landroid/view/MotionEvent;)V

    .line 398
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->invalidate()V

    .line 401
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 389
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->halfHeight:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setBrowsePostion(I)V
    .locals 2

    .line 373
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->currentSelected:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 374
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->currentSelected:I

    .line 375
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseMaxPostion:I

    if-lez v0, :cond_0

    sub-int p1, v0, p1

    int-to-float p1, p1

    .line 376
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->endPos:F

    mul-float p1, p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->invalidate()V

    :cond_1
    return-void
.end method

.method public setBrowseinterval(I)V
    .locals 2

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 142
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->endPos:F

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingLeft:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseinterval:I

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    .line 144
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->endPos:F

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingLeft:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseinterval:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 146
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseinterval:I

    :goto_0
    return-void
.end method

.method public setFileInfo(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 4

    .line 95
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->selectFileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 96
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->left:J

    .line 97
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->right:J

    .line 98
    iget-wide v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->left:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->time:J

    .line 100
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->paddingLeft:I

    int-to-float p1, p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->timeCursorPos:F

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->offset:I

    .line 102
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->invalidate()V

    return-void
.end method

.method public setFileInfoCount(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 124
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseMaxPostion:I

    .line 125
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setBrowseinterval(I)V

    .line 126
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseMaxPostion:I

    if-lez p1, :cond_1

    .line 127
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->endPos:F

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->currentSelected:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 129
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->currentSelected:I

    .line 131
    :goto_0
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->endPos:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 132
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->thumbRadio:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->invalidate()V

    return-void
.end method

.method public setMode(I)V
    .locals 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setModeNotCallback(I)V

    .line 86
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseMaxPostion:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mOnStatechangeListener:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;->onModeChange(I)V

    :cond_0
    return-void
.end method

.method public setModeNotCallback(I)V
    .locals 1

    .line 106
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mode:I

    if-nez p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->rightTip:Ljava/lang/String;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->leftTip:Ljava/lang/String;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tipText:Ljava/lang/String;

    .line 111
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->endPos:F

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->browseCursorPos:F

    .line 116
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->tag:Ljava/lang/String;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->invalidate()V

    return-void
.end method

.method public setOnStatechangeListener(Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->mOnStatechangeListener:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;

    return-void
.end method
