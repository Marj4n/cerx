.class public Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;
.super Ljava/lang/Object;
.source "InfoHudViewHolder.java"


# static fields
.field private static final MSG_UPDATE_HUD:I = 0x1

.field private static count:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoadCost:J

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mRowMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekCost:J

.field private mTableLayoutBinder:Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TableLayout;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mLoadCost:J

    .line 26
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mSeekCost:J

    .line 108
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;

    invoke-direct {v0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(J)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->formatedDurationMilli(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(J)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->formatedSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 20
    sget v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->count:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    .line 20
    sput p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->count:I

    return p0
.end method

.method static synthetic access$308()I
    .locals 2

    .line 20
    sget v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->count:I

    return v0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private appendRow(I)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private appendSection(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    return-void
.end method

.method private static formatedDurationMilli(J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    .line 63
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%.2f sec"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%d msec"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatedSize(J)Ljava/lang/String;
    .locals 6

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v3, 0x186a0

    cmp-long v5, p0, v3

    if-ltz v5, :cond_0

    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float p0, p0

    div-float/2addr p0, v0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.2f MB"

    invoke-static {v3, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v3, 0x64

    cmp-long v5, p0, v3

    if-ltz v5, :cond_1

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.1f KB"

    invoke-static {v3, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%d B"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatedSpeed(JJ)Ljava/lang/String;
    .locals 4

    const-string v0, "0 B/s"

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    return-object v0

    :cond_0
    cmp-long v3, p0, v1

    if-gtz v3, :cond_1

    return-object v0

    :cond_1
    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float p0, p0, p1

    long-to-float p2, p2

    div-float/2addr p0, p2

    const p2, 0x49742400    # 1000000.0f

    const/4 p3, 0x0

    const/4 v0, 0x1

    cmpl-float p2, p0, p2

    if-ltz p2, :cond_2

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    div-float/2addr p0, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, p3

    const-string p0, "%.2f MB/s"

    invoke-static {p2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    cmpl-float p2, p0, p1

    if-ltz p2, :cond_3

    .line 82
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, p3

    const-string p0, "%.1f KB/s"

    invoke-static {p2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    float-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, p3

    const-string p0, "%d B/s"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3

    .line 53
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method public setRowValue(ILjava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 46
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;

    invoke-virtual {p1, v0, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->setValueText(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateLoadCost(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mLoadCost:J

    return-void
.end method

.method public updateSeekCost(J)V
    .locals 0

    .line 93
    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->mSeekCost:J

    return-void
.end method
