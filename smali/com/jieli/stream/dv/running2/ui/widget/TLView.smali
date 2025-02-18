.class public Lcom/jieli/stream/dv/running2/ui/widget/TLView;
.super Landroid/view/ViewGroup;
.source "TLView.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DAY_MILLIS:J = 0x5265c00L

.field private static final HOUR_MILLIS:J = 0x36ee80L

.field private static final MIN_MILLIS:J = 0xea60L

.field private static final MSG_GET_THUMBNAIL:I = 0x100

.field private static final MSG_SET_TIME:I = 0x102

.field private static final SEC_MILLIS:J = 0x3e8L

.field private static final TAG_LEFT_IMAGEVIEW:Ljava/lang/String; = "tag_left_image_view"

.field private static final TAG_LEFT_PROG:Ljava/lang/String; = "tag_left_progress"

.field private static final TAG_LEFT_THUMBNAIL:Ljava/lang/String; = "tag_left_thumbnail"

.field private static final TAG_LEFT_TIME:Ljava/lang/String; = "tag_left_time"

.field private static final TAG_RIGHT_IMAGEVIEW:Ljava/lang/String; = "tag_right_image_view"

.field private static final TAG_RIGHT_PROG:Ljava/lang/String; = "tag_right_progress"

.field private static final TAG_RIGHT_THUMBNAIL:Ljava/lang/String; = "tag_right_thumbnail"

.field private static final TAG_RIGHT_TIME:Ljava/lang/String; = "tag_right_time"

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static timeFormat:Ljava/text/SimpleDateFormat;

.field static final yyyy_MMddHHmmss:Ljava/text/SimpleDateFormat;


# instance fields
.field private acalendar:Ljava/util/Calendar;

.field private blackline:Landroid/graphics/Paint;

.field private blacktext30:Landroid/text/TextPaint;

.field private dateAndTimePaint:Landroid/text/TextPaint;

.field day_pixels:F

.field private eventPaint:Landroid/graphics/Paint;

.field finger1id:I

.field volatile finger1x:F

.field volatile finger1y:F

.field finger2id:I

.field volatile finger2x:F

.field volatile finger2y:F

.field fingers:I

.field private final handler:Landroid/os/Handler;

.field hour_pixels:F

.field private isBuffering:Z

.field private volatile isMove:Z

.field private volatile isRequestNext:Z

.field private volatile isSelectionMode:Z

.field private left:J

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private final mCalendarStuff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCapturePaint:Landroid/graphics/Paint;

.field private mDelayPaint:Landroid/graphics/Paint;

.field private mDensity:F

.field private mDeviceWidth:I

.field private volatile mFinger1Time:J

.field volatile mFinger1x:F

.field volatile mFinger1y:F

.field private volatile mFinger2Time:J

.field volatile mFinger2x:F

.field volatile mFinger2y:F

.field private mGrayLine:Landroid/graphics/Paint;

.field private mHeight:I

.field private mOnValueChangeListener:Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSosPaint:Landroid/graphics/Paint;

.field private volatile mWhichFinger:I

.field private middlePaint:Landroid/graphics/Paint;

.field min_pixels:F

.field pixels_per_milli:F

.field private right:J

.field sec_pixels:F

.field span:F

.field private final tag:Ljava/lang/String;

.field private textPaint:Landroid/text/TextPaint;

.field private textWidth:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 379
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->yyyy_MMddHHmmss:Ljava/text/SimpleDateFormat;

    .line 480
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 485
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->timeFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->tag:Ljava/lang/String;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mCalendarStuff:Ljava/util/List;

    const/4 p1, -0x1

    .line 104
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2id:I

    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isMove:Z

    .line 145
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isSelectionMode:Z

    .line 150
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mWhichFinger:I

    const-wide/16 p2, 0x0

    .line 152
    iput-wide p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1Time:J

    .line 153
    iput-wide p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2Time:J

    .line 157
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isRequestNext:Z

    .line 380
    new-instance p2, Landroid/os/Handler;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/TLView$1;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView$1;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/TLView;)V

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 469
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->textWidth:F

    .line 1055
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isBuffering:Z

    .line 161
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/widget/TLView;)Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mOnValueChangeListener:Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/widget/TLView;)Ljava/util/Calendar;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/widget/TLView;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/widget/TLView;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setLeftProgressVisibility(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/widget/TLView;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setRightProgressVisibility(I)V

    return-void
.end method

.method private drawDateText(Landroid/graphics/Canvas;)V
    .locals 5

    .line 474
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->date2DateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->textWidth:F

    .line 477
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v1

    const/high16 v4, 0x42aa0000    # 85.0f

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->dateAndTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawEvents(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 972
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mCalendarStuff:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 974
    :cond_1
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 975
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 981
    iget-wide v7, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_0

    iget-wide v9, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    cmp-long v11, v3, v9

    if-lez v11, :cond_2

    goto :goto_0

    :cond_2
    sub-long/2addr v3, v7

    long-to-float v3, v3

    .line 985
    iget v4, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    div-float/2addr v3, v4

    iget v9, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v10, v9

    mul-float v12, v3, v10

    sub-long/2addr v5, v7

    long-to-float v3, v5

    div-float/2addr v3, v4

    int-to-float v4, v9

    mul-float v14, v3, v4

    .line 989
    iget v3, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x42a00000    # 80.0f

    iget v5, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x41e00000    # 28.0f

    mul-float v5, v5, v4

    .line 991
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getType()I

    move-result v2

    sub-float v4, v14, v12

    .line 992
    iget v6, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v6, v7

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    cmpl-float v4, v4, v8

    if-lez v4, :cond_5

    if-ne v2, v11, :cond_3

    int-to-float v13, v3

    add-float v15, v13, v5

    .line 997
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mSosPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    if-ne v2, v10, :cond_4

    int-to-float v13, v3

    add-float v15, v13, v5

    .line 999
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->eventPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    if-ne v2, v9, :cond_0

    int-to-float v13, v3

    add-float v15, v13, v5

    .line 1019
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDelayPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_5
    if-ne v2, v11, :cond_6

    int-to-float v13, v3

    mul-float v6, v6, v7

    add-float v14, v12, v6

    add-float v15, v13, v5

    .line 1023
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mSosPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    if-ne v2, v10, :cond_7

    int-to-float v13, v3

    add-float v14, v12, v6

    add-float v15, v13, v5

    .line 1025
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->eventPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_7
    if-ne v2, v9, :cond_0

    int-to-float v13, v3

    add-float v14, v12, v6

    add-float v15, v13, v5

    .line 1041
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDelayPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private drawHourText(Landroid/graphics/Canvas;FFII)V
    .locals 1

    const/16 v0, 0xc

    if-ge p4, v0, :cond_0

    .line 1049
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1051
    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawMiddleLine(Landroid/graphics/Canvas;)V
    .locals 8

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 448
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v3, v1

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v2, v1

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    sub-float v4, v2, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->middlePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawMiddleTimeText(Landroid/graphics/Canvas;)V
    .locals 7

    .line 460
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    iget-wide v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    iget-wide v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 463
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->timeFormat:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    iget-wide v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    sub-long/2addr v3, v1

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 465
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x42aa0000    # 85.0f

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->dateAndTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 466
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->drawDateText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private init()V
    .locals 6

    .line 183
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    .line 185
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 186
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 188
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDeviceWidth:I

    .line 217
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 218
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jieli/stream/dv/running2/R$color;->half_transparent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->textPaint:Landroid/text/TextPaint;

    const/4 v3, -0x1

    .line 223
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    const/high16 v5, 0x41700000    # 15.0f

    mul-float v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 226
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->dateAndTimePaint:Landroid/text/TextPaint;

    .line 227
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 228
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->dateAndTimePaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 231
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/jieli/stream/dv/running2/R$color;->half_transparent:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->eventPaint:Landroid/graphics/Paint;

    .line 236
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->eventPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 238
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->eventPaint:Landroid/graphics/Paint;

    const v4, -0xff0100

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->middlePaint:Landroid/graphics/Paint;

    .line 241
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->middlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 243
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->middlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    .line 246
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    .line 252
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 253
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 254
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 255
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mGrayLine:Landroid/graphics/Paint;

    const v3, -0x777778

    .line 258
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mGrayLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mGrayLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mGrayLine:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mSosPaint:Landroid/graphics/Paint;

    .line 264
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 265
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mSosPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mSosPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mCapturePaint:Landroid/graphics/Paint;

    .line 269
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 270
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mCapturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 271
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mCapturePaint:Landroid/graphics/Paint;

    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDelayPaint:Landroid/graphics/Paint;

    .line 274
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 275
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDelayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDelayPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    .line 283
    iget-wide v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    .line 284
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDeviceWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1x:F

    .line 285
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDeviceWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2x:F

    .line 286
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isSelectionMode:Z

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setSelectionMode(Z)V

    return-void
.end method

.method private setLeftProgressVisibility(I)V
    .locals 2

    const-string v0, "tag_left_thumbnail"

    .line 644
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tag_left_progress"

    .line 647
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setLeftThumbnail([B)V
    .locals 4

    const-string v0, "tag_left_thumbnail"

    .line 569
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "tag_left_image_view"

    .line 571
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 574
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x2

    .line 575
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 576
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    .line 578
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v2, 0x0

    .line 579
    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/widget/TLView$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView$2;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/TLView;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 592
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/TLView$3;

    invoke-direct {v1, p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView$3;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/TLView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setLeftThumbnailVisibility(I)V
    .locals 1

    const-string v0, "tag_left_thumbnail"

    .line 666
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setRightProgressVisibility(I)V
    .locals 2

    const-string v0, "tag_right_thumbnail"

    .line 656
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tag_right_progress"

    .line 658
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setRightThumbnail([B)V
    .locals 4

    const-string v0, "tag_right_thumbnail"

    .line 607
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "tag_right_image_view"

    .line 609
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 612
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x2

    .line 613
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 614
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    .line 616
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v2, 0x0

    .line 617
    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/widget/TLView$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView$4;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/TLView;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 630
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/TLView$5;

    invoke-direct {v1, p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView$5;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/TLView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setRightThumbnailVisibility(I)V
    .locals 1

    const-string v0, "tag_right_thumbnail"

    .line 673
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public date2DateStr(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 482
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentMiddleTime()J
    .locals 6

    .line 402
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    iget-wide v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getInterceptionEndTime()J
    .locals 2

    .line 564
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2Time:J

    return-wide v0
.end method

.method public getInterceptionStartTime()J
    .locals 2

    .line 560
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1Time:J

    return-wide v0
.end method

.method public isSelectionMode()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isSelectionMode:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 681
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 686
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    div-float/2addr v1, v2

    iput v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->pixels_per_milli:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v2, v2, v1

    .line 687
    iput v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->sec_pixels:F

    const v2, 0x476a6000    # 60000.0f

    mul-float v2, v2, v1

    .line 688
    iput v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->min_pixels:F

    const v2, 0x4a5bba00    # 3600000.0f

    mul-float v2, v2, v1

    .line 689
    iput v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->hour_pixels:F

    const v2, 0x4ca4cb80    # 8.64E7f

    mul-float v1, v1, v2

    .line 690
    iput v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->day_pixels:F

    .line 693
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v2, v1

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 696
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mCalendarStuff:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 697
    invoke-direct/range {p0 .. p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->drawEvents(Landroid/graphics/Canvas;)V

    .line 702
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isSelectionMode()Z

    move-result v0

    const/4 v8, 0x2

    if-eqz v0, :cond_4

    .line 708
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1x:F

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    const/high16 v9, 0x43480000    # 200.0f

    mul-float v2, v2, v9

    sub-float v2, v0, v2

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1x:F

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mGrayLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const-string v0, "tag_left_thumbnail"

    .line 709
    invoke-virtual {v6, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 711
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1x:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 717
    :cond_1
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2x:F

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v9

    sub-float v2, v0, v2

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2x:F

    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mGrayLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const-string v0, "tag_right_thumbnail"

    .line 719
    invoke-virtual {v6, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 721
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2x:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 723
    :cond_2
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x42a00000    # 80.0f

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x41e00000    # 28.0f

    mul-float v2, v2, v1

    .line 725
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1x:F

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2x:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 726
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1x:F

    int-to-float v3, v0

    iget v4, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2x:F

    add-float v5, v3, v2

    iget-object v9, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 728
    :cond_3
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2x:F

    int-to-float v3, v0

    iget v4, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1x:F

    add-float v5, v3, v2

    iget-object v9, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 734
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v2, v0

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 747
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    iget-wide v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 749
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->set(II)V

    .line 750
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->set(II)V

    .line 751
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    const/16 v10, 0xc

    invoke-virtual {v0, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 755
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->sec_pixels:F

    const/high16 v11, 0x41c80000    # 25.0f

    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40f00000    # 7.5f

    const/high16 v15, 0x41a00000    # 20.0f

    const/high16 v16, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v13

    if-lez v0, :cond_f

    .line 756
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 757
    iget-object v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    move/from16 v17, v0

    move-wide/from16 v18, v1

    .line 758
    :goto_1
    iget-wide v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    cmp-long v2, v18, v0

    if-gez v2, :cond_f

    .line 759
    iget-wide v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    sub-long v0, v18, v0

    long-to-float v0, v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    div-float/2addr v0, v1

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v1, v1

    mul-float v5, v0, v1

    .line 760
    rem-int/lit8 v4, v17, 0x3c

    .line 761
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->sec_pixels:F

    cmpg-float v1, v0, v16

    if-gez v1, :cond_6

    if-eqz v4, :cond_5

    const/16 v0, 0x1e

    if-ne v4, v0, :cond_e

    .line 763
    :cond_5
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v14

    sub-float v2, v1, v2

    int-to-float v3, v0

    iget-object v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v20, v1

    move v1, v5

    move/from16 v21, v3

    move v3, v5

    move/from16 v22, v4

    move/from16 v4, v21

    move v13, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 764
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v1

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float/2addr v1, v2

    iget-object v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v13, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_6
    move/from16 v22, v4

    move v13, v5

    cmpg-float v1, v0, v12

    if-gez v1, :cond_7

    move/from16 v5, v22

    .line 767
    rem-int/lit8 v4, v5, 0xf

    if-nez v4, :cond_e

    .line 768
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float v2, v1, v2

    int-to-float v4, v0

    iget-object v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v13

    move-object/from16 v20, v3

    move v3, v13

    move/from16 v22, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 769
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v1

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float/2addr v1, v2

    iget-object v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v13, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_7
    cmpg-float v1, v0, v15

    if-gez v1, :cond_b

    const/16 v0, 0xa

    move/from16 v5, v22

    if-eq v5, v0, :cond_a

    const/16 v0, 0x14

    if-eq v5, v0, :cond_a

    const/16 v0, 0x28

    if-eq v5, v0, :cond_a

    const/16 v0, 0x32

    if-ne v5, v0, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    const/16 v0, 0x1e

    if-ne v5, v0, :cond_e

    .line 776
    :cond_9
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v14

    sub-float v2, v1, v2

    int-to-float v4, v0

    iget-object v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v13

    move-object/from16 v20, v3

    move v3, v13

    move/from16 v22, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 777
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v1

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float/2addr v1, v2

    iget-object v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v13, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_a
    :goto_2
    move/from16 v22, v5

    .line 773
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float v2, v1, v2

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v13

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 774
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v1

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float/2addr v1, v2

    iget-object v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v13, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_b
    cmpg-float v0, v0, v11

    if-gez v0, :cond_c

    .line 780
    rem-int/lit8 v4, v22, 0x5

    if-nez v4, :cond_e

    .line 781
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float v2, v1, v2

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v13

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 782
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v1

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float/2addr v1, v2

    iget-object v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v13, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 785
    :cond_c
    rem-int/lit8 v4, v22, 0x5

    if-nez v4, :cond_d

    .line 786
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float v2, v1, v2

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v13

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 787
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v1

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float/2addr v1, v2

    iget-object v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v13, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 789
    :cond_d
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float v2, v1, v2

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v13

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_e
    :goto_3
    add-int/lit8 v17, v17, 0x1

    const-wide/16 v0, 0x3e8

    add-long v18, v18, v0

    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 796
    :cond_f
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->min_pixels:F

    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 797
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 798
    iget-object v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    move v13, v0

    move-wide/from16 v17, v1

    .line 799
    :goto_4
    iget-wide v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    cmp-long v2, v17, v0

    if-gez v2, :cond_14

    .line 800
    iget-wide v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    sub-long v0, v17, v0

    long-to-float v0, v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    div-float/2addr v0, v1

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v1, v1

    mul-float v5, v0, v1

    .line 801
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v16

    sub-float v4, v1, v2

    .line 802
    rem-int/lit8 v19, v13, 0x3c

    .line 803
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->min_pixels:F

    cmpg-float v2, v1, v12

    if-gez v2, :cond_10

    .line 804
    rem-int/lit8 v1, v19, 0xf

    if-nez v1, :cond_13

    int-to-float v3, v0

    .line 805
    iget-object v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v20, v2

    move v2, v4

    move/from16 v22, v3

    move v3, v5

    move v12, v4

    move/from16 v4, v22

    move v8, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 806
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v8, v12, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_10
    move v12, v4

    move v8, v5

    cmpg-float v2, v1, v11

    if-gez v2, :cond_11

    .line 809
    rem-int/lit8 v1, v19, 0xa

    if-nez v1, :cond_13

    int-to-float v4, v0

    .line 810
    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v8

    move v2, v12

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 811
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v8, v12, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_11
    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    .line 814
    rem-int/lit8 v1, v19, 0x5

    if-nez v1, :cond_12

    int-to-float v4, v0

    .line 815
    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v8

    move v2, v12

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 816
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v8, v12, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_12
    int-to-float v4, v0

    .line 818
    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v8

    move v2, v12

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_13
    :goto_5
    add-int/lit8 v13, v13, 0x1

    const-wide/32 v0, 0xea60

    add-long v17, v17, v0

    const/4 v8, 0x2

    const/high16 v12, 0x41200000    # 10.0f

    goto/16 :goto_4

    .line 825
    :cond_14
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->hour_pixels:F

    const/16 v8, 0xb

    const/4 v11, 0x3

    const/4 v12, 0x6

    const/high16 v13, 0x40000000    # 2.0f

    cmpl-float v0, v0, v13

    if-lez v0, :cond_26

    .line 826
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 827
    iget-object v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    move/from16 v17, v0

    move-wide/from16 v18, v1

    .line 829
    :goto_6
    iget-wide v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    cmp-long v2, v18, v0

    if-gez v2, :cond_26

    .line 830
    iget-wide v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    sub-long v0, v18, v0

    long-to-float v0, v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    div-float/2addr v0, v1

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v1, v1

    mul-float v20, v0, v1

    .line 831
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v0, v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v1, v1, v16

    sub-float v23, v0, v1

    .line 832
    rem-int/lit8 v5, v17, 0x18

    .line 833
    rem-int/lit8 v0, v17, 0xc

    if-nez v0, :cond_15

    const/16 v4, 0xc

    goto :goto_7

    :cond_15
    move v4, v0

    .line 836
    :goto_7
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->hour_pixels:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_17

    if-ne v5, v10, :cond_16

    .line 838
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v5, v0

    iget-object v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    move-object/from16 v24, v3

    move/from16 v3, v20

    move v13, v4

    move v4, v5

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_16
    move v13, v4

    :goto_8
    if-ne v13, v12, :cond_25

    .line 840
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_17
    move v13, v4

    const/16 v1, 0x9

    cmpg-float v2, v0, v15

    if-gez v2, :cond_1b

    if-ne v5, v10, :cond_18

    .line 844
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_18
    if-ne v13, v12, :cond_19

    .line 846
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_19
    if-eq v13, v11, :cond_1a

    if-ne v13, v1, :cond_25

    .line 848
    :cond_1a
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    const/high16 v2, 0x40200000    # 2.5f

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v3, v3, v2

    sub-float v2, v1, v3

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v3, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_1b
    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_20

    if-ne v5, v10, :cond_1c

    .line 852
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v4, v0

    iget-object v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    move-object/from16 v24, v3

    move/from16 v3, v20

    move/from16 v26, v5

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v4, v26

    move v5, v13

    .line 853
    invoke-direct/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->drawHourText(Landroid/graphics/Canvas;FFII)V

    goto/16 :goto_c

    :cond_1c
    move/from16 v26, v5

    if-ne v13, v12, :cond_1d

    .line 855
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v4, v26

    move v5, v13

    .line 856
    invoke-direct/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->drawHourText(Landroid/graphics/Canvas;FFII)V

    goto/16 :goto_c

    :cond_1d
    if-eq v13, v11, :cond_1f

    if-ne v13, v1, :cond_1e

    goto :goto_9

    .line 860
    :cond_1e
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    const/high16 v2, 0x40200000    # 2.5f

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v3, v3, v2

    sub-float v2, v1, v3

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v3, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    .line 858
    :cond_1f
    :goto_9
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    :cond_20
    move/from16 v26, v5

    const/high16 v2, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_25

    move/from16 v5, v26

    if-ne v5, v10, :cond_21

    .line 864
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v14

    sub-float v2, v1, v2

    int-to-float v4, v0

    iget-object v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v24, v3

    move/from16 v3, v20

    move/from16 v26, v5

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_21
    move/from16 v26, v5

    if-ne v13, v12, :cond_22

    .line 866
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_22
    if-eq v13, v11, :cond_24

    if-ne v13, v1, :cond_23

    goto :goto_a

    .line 870
    :cond_23
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    .line 868
    :cond_24
    :goto_a
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v4, v26

    move v5, v13

    .line 872
    invoke-direct/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->drawHourText(Landroid/graphics/Canvas;FFII)V

    :cond_25
    :goto_c
    add-int/lit8 v17, v17, 0x1

    const-wide/32 v0, 0x36ee80

    add-long v18, v18, v0

    const/high16 v13, 0x40000000    # 2.0f

    goto/16 :goto_6

    .line 881
    :cond_26
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 882
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 883
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    move-wide v13, v0

    .line 886
    :goto_d
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 887
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 888
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v1, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 889
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 890
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 893
    iget-wide v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    sub-long v0, v13, v0

    long-to-float v0, v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    div-float/2addr v0, v1

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v1, v0

    .line 895
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v2, v0

    iget v8, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v8, v8, v15

    sub-float/2addr v2, v8

    int-to-float v8, v0

    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v24, v1

    const/4 v9, 0x7

    move-object v9, v3

    move/from16 v3, v24

    move-object/from16 v27, v4

    move v4, v8

    move v8, v5

    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-nez v17, :cond_27

    .line 900
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    const/high16 v23, 0x42200000    # 40.0f

    mul-float v3, v2, v23

    sub-float v3, v1, v3

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v2, v2, v1

    sub-float v4, v0, v2

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v24

    move v2, v3

    move/from16 v3, v24

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 901
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 902
    iget-object v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    iput v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->textWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, v24, v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 905
    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v2, v2

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v3, v3, v23

    sub-float/2addr v2, v3

    iget-object v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 909
    :cond_27
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->day_pixels:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v21

    if-gez v1, :cond_29

    add-int/lit8 v17, v17, 0x1

    .line 910
    rem-int/lit8 v17, v17, 0x6

    if-nez v17, :cond_28

    .line 911
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-static {v9, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    iput v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->textWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, v24, v0

    .line 913
    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v2, v2

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v3, v3, v15

    sub-float/2addr v2, v3

    iget-object v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v9, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_28
    :goto_e
    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_f

    :cond_29
    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2a

    add-int/lit8 v17, v17, 0x1

    .line 916
    rem-int/lit8 v17, v17, 0x3

    if-nez v17, :cond_28

    .line 917
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-static {v9, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    iput v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->textWidth:F

    div-float/2addr v0, v1

    sub-float v1, v24, v0

    .line 919
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v0, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v15

    sub-float/2addr v0, v2

    iget-object v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v9, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_2a
    cmpg-float v0, v0, v16

    if-gez v0, :cond_2b

    .line 922
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-static {v9, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    iput v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->textWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v1, v24, v0

    .line 924
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v0, v0

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v2, v15

    sub-float/2addr v0, v2

    iget-object v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v9, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 926
    :cond_2b
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    move-object/from16 v1, v27

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    iput v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->textWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v0, v9

    sub-float v0, v24, v0

    .line 928
    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v2, v2

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v3, v3, v15

    sub-float/2addr v2, v3

    iget-object v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_f
    move/from16 v0, v18

    const/4 v5, 0x1

    :goto_10
    if-gt v5, v8, :cond_2f

    .line 933
    iget-wide v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    sub-long v1, v13, v1

    long-to-float v1, v1

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    div-float/2addr v1, v2

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v4, 0x7

    if-ne v0, v4, :cond_2c

    const/16 v17, 0x0

    goto :goto_11

    :cond_2c
    move/from16 v17, v0

    .line 939
    :goto_11
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->day_pixels:F

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v3, v2, v15

    const/high16 v18, 0x41700000    # 15.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2d

    int-to-float v3, v1

    .line 941
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    mul-float v2, v2, v18

    sub-float v2, v1, v2

    int-to-float v1, v0

    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v19, v1

    move v1, v3

    const/16 v23, 0x7

    move/from16 v4, v19

    move/from16 v19, v5

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_12

    :cond_2d
    move/from16 v19, v5

    const/16 v23, 0x7

    const/high16 v3, 0x432a0000    # 170.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2e

    int-to-float v5, v1

    .line 945
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    mul-float v2, v2, v18

    sub-float v2, v1, v2

    int-to-float v4, v0

    iget-object v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v24, v3

    move v3, v5

    move/from16 v25, v5

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 946
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v1, v16

    add-float v5, v25, v2

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v18

    sub-float/2addr v2, v1

    iget-object v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v5, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_2e
    int-to-float v5, v1

    .line 950
    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v0

    mul-float v2, v2, v18

    sub-float v2, v1, v2

    int-to-float v4, v0

    iget-object v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blackline:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v24, v3

    move v3, v5

    move v9, v5

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 951
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 952
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {v7, v0, v9, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 953
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDensity:F

    mul-float v2, v1, v16

    add-float v5, v9, v2

    iget v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v18

    add-float/2addr v2, v1

    iget-object v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->blacktext30:Landroid/text/TextPaint;

    invoke-virtual {v7, v0, v5, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 954
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_12
    add-int/lit8 v5, v19, 0x1

    add-int/lit8 v0, v17, 0x1

    const-wide/32 v1, 0x5265c00

    add-long/2addr v13, v1

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_10

    .line 958
    :cond_2f
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->add(II)V

    .line 959
    iget-object v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 960
    iget-wide v2, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    cmp-long v0, v13, v2

    if-ltz v0, :cond_30

    .line 964
    iget v1, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1x:F

    const/4 v2, 0x0

    iget v3, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1x:F

    iget v0, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->middlePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_30
    const/4 v8, 0x5

    const/4 v9, 0x0

    goto/16 :goto_d
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 291
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    .line 292
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mHeight:I

    .line 295
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getChildCount()I

    move-result p1

    .line 299
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getPaddingLeft()I

    move-result p2

    .line 300
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getPaddingTop()I

    move-result p3

    .line 301
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    .line 302
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    sub-int v0, p4, p2

    sub-int/2addr p5, p3

    const/4 v1, 0x0

    move v3, p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    .line 311
    invoke-virtual {p0, v2}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 313
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    return-void

    :cond_0
    const/high16 v6, -0x80000000

    .line 317
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {p5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 318
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 319
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v8, v3, v6

    if-lt v8, p4, :cond_1

    add-int/2addr p3, v4

    move v3, p2

    const/4 v4, 0x0

    :cond_1
    add-int/2addr v6, v3

    add-int v8, p3, v7

    .line 327
    invoke-virtual {v5, v3, p3, v6, v8}, Landroid/view/View;->layout(IIII)V

    if-ge v4, v7, :cond_2

    move v4, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 338
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 349
    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 351
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    goto :goto_2

    .line 355
    :cond_0
    invoke-virtual {p0, v7, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->measureChild(Landroid/view/View;II)V

    .line 356
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v3, v8

    .line 357
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v5, v8

    .line 359
    iget v8, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDeviceWidth:I

    div-int v8, v5, v8

    if-le v8, v6, :cond_1

    .line 360
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 363
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 365
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v4, v7}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->combineMeasuredStates(II)I

    move-result v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 370
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 373
    invoke-static {v1, p1, v4}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v4, 0x10

    .line 374
    invoke-static {v0, p2, v1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->resolveSizeAndState(III)I

    move-result p2

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1062
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isBuffering:Z

    if-eqz v0, :cond_0

    .line 1063
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1065
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 1191
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1193
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1id:I

    if-ne p1, v0, :cond_2

    .line 1195
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2id:I

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1id:I

    .line 1196
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2x:F

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1x:F

    .line 1197
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2y:F

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1y:F

    .line 1198
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->fingers:I

    goto :goto_0

    .line 1199
    :cond_2
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2id:I

    if-ne p1, v0, :cond_3

    .line 1201
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->fingers:I

    .line 1205
    :goto_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->invalidate()V

    return v1

    :cond_3
    return v2

    .line 1082
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->tag:Ljava/lang/String;

    const-string v2, "ACTION_POINTER_DOWN="

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->fingers:I

    if-ne v0, v3, :cond_5

    .line 1224
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1086
    :cond_5
    iput v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->fingers:I

    .line 1089
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2id:I

    .line 1090
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2x:F

    .line 1091
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2id:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2y:F

    .line 1093
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->invalidate()V

    return v1

    .line 1097
    :cond_6
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isMove:Z

    .line 1099
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->fingers:I

    if-nez v0, :cond_7

    return v2

    .line 1108
    :cond_7
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1id:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 1111
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1x:F

    .line 1112
    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1y:F

    goto :goto_2

    .line 1117
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1118
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    move v6, v3

    move v3, v0

    move v0, v6

    .line 1122
    :goto_2
    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2id:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ne v4, v2, :cond_9

    .line 1124
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2x:F

    .line 1125
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2y:F

    goto :goto_3

    .line 1127
    :cond_9
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1128
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    move v6, v2

    move v2, p1

    move p1, v6

    .line 1182
    :goto_3
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1x:F

    .line 1183
    iput v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1y:F

    .line 1184
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2x:F

    .line 1185
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger2y:F

    .line 1187
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->invalidate()V

    return v1

    .line 1209
    :cond_a
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->tag:Ljava/lang/String;

    const-string v0, "ACTION_UP="

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->fingers:I

    .line 1212
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->invalidate()V

    .line 1214
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1x:F

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-long v2, p1

    .line 1216
    iget-wide v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    add-long/2addr v4, v2

    .line 1217
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1219
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mOnValueChangeListener:Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;

    if-eqz p1, :cond_b

    .line 1220
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;->onValueChangeEnd(Ljava/util/Calendar;)V

    :cond_b
    return v1

    .line 1069
    :cond_c
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->fingers:I

    .line 1072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1id:I

    .line 1073
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1x:F

    .line 1074
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->finger1y:F

    .line 1077
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->invalidate()V

    return v1
.end method

.method public setData(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mCalendarStuff:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    .line 79
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    .line 80
    iget-wide v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    .line 81
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mCalendarStuff:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->invalidate()V

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Param is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "mCalendarStuff is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mCalendarStuff:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mCalendarStuff:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "mCalendarStuff is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMovingLock(Z)V
    .locals 0

    .line 1057
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isBuffering:Z

    return-void
.end method

.method public setOnValueChangeListener(Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mOnValueChangeListener:Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;

    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 4

    .line 488
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isSelectionMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 490
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setLeftThumbnailVisibility(I)V

    .line 491
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setRightThumbnailVisibility(I)V

    .line 492
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDeviceWidth:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const/high16 v0, 0x43480000    # 200.0f

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1x:F

    .line 493
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mDeviceWidth:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2x:F

    .line 496
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1x:F

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-long v0, p1

    .line 497
    iget-wide v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    add-long/2addr v2, v0

    .line 498
    iput-wide v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1Time:J

    const/4 p1, 0x1

    .line 499
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mWhichFinger:I

    .line 500
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->acalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 501
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isRequestNext:Z

    const-string p1, "tag_left_time"

    .line 504
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 506
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger1x:F

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    mul-float v2, v2, v3

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-long v2, v2

    add-long/2addr v0, v2

    .line 507
    sget-object v2, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string p1, "tag_right_time"

    .line 511
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 513
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2x:F

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    mul-float v2, v2, v3

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-long v2, v2

    add-long/2addr v0, v2

    .line 515
    sget-object v2, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 519
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setLeftThumbnailVisibility(I)V

    .line 520
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setRightThumbnailVisibility(I)V

    const/4 p1, 0x0

    .line 521
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setLeftThumbnail([B)V

    .line 522
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setRightThumbnail([B)V

    .line 523
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isRequestNext:Z

    .line 525
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->postInvalidate()V

    return-void
.end method

.method public setThumbnail([B)V
    .locals 5

    .line 533
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThumbnail: mWhichFinger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mWhichFinger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isRequestNext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isRequestNext:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mWhichFinger:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setRightThumbnail([B)V

    goto :goto_0

    .line 537
    :cond_1
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setLeftThumbnail([B)V

    .line 538
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isRequestNext:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 539
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isRequestNext:Z

    .line 541
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2x:F

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->span:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->width:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-long v0, p1

    .line 542
    iget-wide v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    add-long/2addr v3, v0

    .line 543
    iput-wide v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mFinger2Time:J

    .line 544
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->mWhichFinger:I

    .line 545
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 546
    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTimeOffset(J)V
    .locals 6

    .line 410
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->isMove:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->tag:Ljava/lang/String;

    const-string p2, "Moving.............."

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 416
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->tag:Ljava/lang/String;

    const-string p2, "offsetMilliseconds = 0"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 419
    :cond_1
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    iget-wide v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x320

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    const-wide/16 v0, -0x4b0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    .line 425
    :cond_2
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->left:J

    .line 426
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->right:J

    .line 427
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->postInvalidate()V

    :cond_3
    return-void
.end method
