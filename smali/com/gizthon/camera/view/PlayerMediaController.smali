.class public Lcom/gizthon/camera/view/PlayerMediaController;
.super Landroid/widget/FrameLayout;
.source "PlayerMediaController.java"


# static fields
.field private static final FADE_OUT:I = 0x1

.field protected static IC_MEDIA_PAUSE_ID:I = 0x0

.field protected static IC_MEDIA_PLAY_ID:I = 0x0

.field private static final PROGRESS:I = 0x3

.field private static final SHOW_PROGRESS:I = 0x2


# instance fields
.field private mAnchor:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field protected mCurrentTime:Landroid/widget/TextView;

.field private mDragging:Z

.field protected mEndTime:Landroid/widget/TextView;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field protected mPauseButton:Landroid/widget/ImageView;

.field private final mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field protected mProgress:Landroid/widget/SeekBar;

.field private mRoot:Landroid/view/View;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private final mUseFastForward:Z

.field private needHide:Z

.field private sDefaultTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ic_media_pause"

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gizthon/camera/view/PlayerMediaController;->IC_MEDIA_PAUSE_ID:I

    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ic_media_play"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gizthon/camera/view/PlayerMediaController;->IC_MEDIA_PLAY_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/gizthon/camera/view/PlayerMediaController;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x1388

    .line 36
    iput p2, p0, Lcom/gizthon/camera/view/PlayerMediaController;->sDefaultTimeout:I

    .line 96
    new-instance p2, Lcom/gizthon/camera/view/PlayerMediaController$1;

    invoke-direct {p2, p0}, Lcom/gizthon/camera/view/PlayerMediaController$1;-><init>(Lcom/gizthon/camera/view/PlayerMediaController;)V

    iput-object p2, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 p2, 0x1

    .line 259
    iput-boolean p2, p0, Lcom/gizthon/camera/view/PlayerMediaController;->needHide:Z

    .line 260
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/gizthon/camera/view/PlayerMediaController$2;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/view/PlayerMediaController$2;-><init>(Lcom/gizthon/camera/view/PlayerMediaController;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mHandler:Landroid/os/Handler;

    .line 409
    new-instance v0, Lcom/gizthon/camera/view/PlayerMediaController$3;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/PlayerMediaController$3;-><init>(Lcom/gizthon/camera/view/PlayerMediaController;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 447
    new-instance v0, Lcom/gizthon/camera/view/PlayerMediaController$4;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/PlayerMediaController$4;-><init>(Lcom/gizthon/camera/view/PlayerMediaController;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 51
    iput-object p0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mRoot:Landroid/view/View;

    .line 52
    iput-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mContext:Landroid/content/Context;

    .line 53
    iput-boolean p2, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mUseFastForward:Z

    .line 54
    iput-boolean p2, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mFromXml:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1388

    .line 36
    iput v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->sDefaultTimeout:I

    .line 96
    new-instance v0, Lcom/gizthon/camera/view/PlayerMediaController$1;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/PlayerMediaController$1;-><init>(Lcom/gizthon/camera/view/PlayerMediaController;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->needHide:Z

    .line 260
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/gizthon/camera/view/PlayerMediaController$2;

    invoke-direct {v1, p0}, Lcom/gizthon/camera/view/PlayerMediaController$2;-><init>(Lcom/gizthon/camera/view/PlayerMediaController;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mHandler:Landroid/os/Handler;

    .line 409
    new-instance v0, Lcom/gizthon/camera/view/PlayerMediaController$3;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/PlayerMediaController$3;-><init>(Lcom/gizthon/camera/view/PlayerMediaController;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 447
    new-instance v0, Lcom/gizthon/camera/view/PlayerMediaController$4;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/PlayerMediaController$4;-><init>(Lcom/gizthon/camera/view/PlayerMediaController;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 66
    iput-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mContext:Landroid/content/Context;

    .line 67
    iput-boolean p2, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mUseFastForward:Z

    .line 68
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->initFloatingWindow()V

    return-void
.end method

.method static synthetic access$000(Lcom/gizthon/camera/view/PlayerMediaController;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->updateFloatingWindowLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/gizthon/camera/view/PlayerMediaController;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mShowing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/gizthon/camera/view/PlayerMediaController;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->needHide:Z

    return p0
.end method

.method static synthetic access$300(Lcom/gizthon/camera/view/PlayerMediaController;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->setProgress()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/gizthon/camera/view/PlayerMediaController;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mDragging:Z

    return p0
.end method

.method static synthetic access$402(Lcom/gizthon/camera/view/PlayerMediaController;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gizthon/camera/view/PlayerMediaController;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/gizthon/camera/view/PlayerMediaController;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->sDefaultTimeout:I

    return p0
.end method

.method static synthetic access$800(Lcom/gizthon/camera/view/PlayerMediaController;I)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/gizthon/camera/view/PlayerMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/gizthon/camera/view/PlayerMediaController;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->updatePausePlay()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private initFloatingWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->setFocusable(Z)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x40000

    .line 79
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->setDescendantFocusability(I)V

    .line 80
    invoke-virtual {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->requestFocus()Z

    return-void
.end method

.method private setProgress()I
    .locals 7

    .line 312
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mDragging:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    .line 317
    iget-object v2, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v2, :cond_2

    if-lez v1, :cond_1

    const-wide/16 v3, 0x3e8

    int-to-long v5, v0

    mul-long v5, v5, v3

    int-to-long v3, v1

    .line 320
    div-long/2addr v5, v3

    long-to-int v3, v5

    .line 321
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v2

    .line 324
    iget-object v3, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mProgress:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 327
    :cond_2
    iget-object v2, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 328
    invoke-direct {p0, v1}, Lcom/gizthon/camera/view/PlayerMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_3
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 330
    invoke-direct {p0, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :cond_4
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->updatePausePlay()V

    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 7

    .line 297
    div-int/lit16 p1, p1, 0x3e8

    .line 299
    rem-int/lit8 v0, p1, 0x3c

    .line 300
    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 301
    div-int/lit16 p1, p1, 0xe10

    .line 303
    iget-object v2, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-lez p1, :cond_0

    .line 305
    iget-object v5, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mFormatter:Ljava/util/Formatter;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    const-string p1, "%d:%02d:%02d"

    invoke-virtual {v5, p1, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "%02d:%02d"

    invoke-virtual {p1, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateFloatingWindowLayout()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 89
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    return-void
.end method

.method private updatePausePlay()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseButton:Landroid/widget/ImageView;

    sget v1, Lcom/gizthon/camera/view/PlayerMediaController;->IC_MEDIA_PAUSE_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseButton:Landroid/widget/ImageView;

    sget v1, Lcom/gizthon/camera/view/PlayerMediaController;->IC_MEDIA_PLAY_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 361
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 362
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x4f

    if-eq v0, v3, :cond_c

    const/16 v3, 0x55

    if-eq v0, v3, :cond_c

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_3

    if-eqz v1, :cond_2

    .line 376
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 377
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 378
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->updatePausePlay()V

    .line 379
    iget p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->sDefaultTimeout:I

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/view/PlayerMediaController;->show(I)V

    :cond_2
    return v2

    :cond_3
    const/16 v3, 0x56

    if-eq v0, v3, :cond_a

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x19

    if-eq v0, v1, :cond_9

    const/16 v1, 0x18

    if-eq v0, v1, :cond_9

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/16 v1, 0x52

    if-ne v0, v1, :cond_8

    .line 397
    :cond_6
    iget-boolean v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->needHide:Z

    if-nez v0, :cond_7

    .line 398
    invoke-virtual {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v2

    .line 401
    :cond_7
    invoke-virtual {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 402
    invoke-virtual {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->hide()V

    return v2

    .line 406
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 395
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_a
    :goto_2
    if-eqz v1, :cond_b

    .line 384
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 385
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 386
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->updatePausePlay()V

    .line 387
    iget p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->sDefaultTimeout:I

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/view/PlayerMediaController;->show(I)V

    :cond_b
    return v2

    :cond_c
    :goto_3
    if-eqz v1, :cond_d

    .line 368
    invoke-virtual {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->doPauseResume()V

    .line 369
    iget p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->sDefaultTimeout:I

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/view/PlayerMediaController;->show(I)V

    .line 370
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    .line 371
    invoke-virtual {p1}, Landroid/widget/ImageView;->requestFocus()Z

    :cond_d
    return v2
.end method

.method protected doPauseResume()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 433
    :goto_0
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->updatePausePlay()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 510
    const-class v0, Landroid/widget/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getControllerLayoutId()I
    .locals 1

    const v0, 0x7f0c007e

    return v0
.end method

.method public hide()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mAnchor:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mShowing:Z

    if-eqz v0, :cond_1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MediaController"

    const-string v1, "already removed"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mShowing:Z

    :cond_1
    return-void
.end method

.method protected initControllerView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090223

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 157
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f090224

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 163
    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mProgress:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_2
    const v0, 0x7f090226

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mEndTime:Landroid/widget/TextView;

    const v0, 0x7f090225

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 173
    new-instance p1, Ljava/util/Formatter;

    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->getControllerLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mRoot:Landroid/view/View;

    .line 145
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->initControllerView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 60
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->initControllerView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 342
    iget p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->sDefaultTimeout:I

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/view/PlayerMediaController;->show(I)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->hide()V

    :goto_0
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 355
    iget p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->sDefaultTimeout:I

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/view/PlayerMediaController;->show(I)V

    const/4 p1, 0x0

    return p1
.end method

.method protected posCallBack(I)V
    .locals 0

    return-void
.end method

.method public setAnchorView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mAnchor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mAnchor:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->removeAllViews()V

    .line 133
    invoke-virtual {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->makeControllerView()Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    .line 134
    invoke-virtual {p0, p1, v0, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->addView(Landroid/view/View;II)V

    .line 136
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/4 v0, 0x4

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setDefaultTimeout(I)V
    .locals 0

    .line 515
    iput p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->sDefaultTimeout:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 504
    :cond_1
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->disableUnsupportedButtons()V

    .line 505
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 1

    .line 111
    iput-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 112
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->updatePausePlay()V

    return-void
.end method

.method public setNeedHide(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->needHide:Z

    return-void
.end method

.method public show()V
    .locals 1

    .line 182
    iget v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->sDefaultTimeout:I

    invoke-virtual {p0, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 4

    .line 213
    iget-boolean v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mAnchor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->setProgress()I

    .line 215
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->disableUnsupportedButtons()V

    .line 219
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->updateFloatingWindowLayout()V

    .line 220
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mRoot:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iput-boolean v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mShowing:Z

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->updatePausePlay()V

    .line 228
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_2

    .line 231
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v0, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/gizthon/camera/view/PlayerMediaController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method
