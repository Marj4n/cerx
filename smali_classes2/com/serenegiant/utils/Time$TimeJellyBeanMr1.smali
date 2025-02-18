.class Lcom/serenegiant/utils/Time$TimeJellyBeanMr1;
.super Lcom/serenegiant/utils/Time;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/utils/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeJellyBeanMr1"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lcom/serenegiant/utils/Time;-><init>(Lcom/serenegiant/utils/Time$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/utils/Time$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/serenegiant/utils/Time$TimeJellyBeanMr1;-><init>()V

    return-void
.end method


# virtual methods
.method public timeNs()J
    .locals 2

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method
