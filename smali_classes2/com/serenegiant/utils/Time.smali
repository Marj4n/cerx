.class public Lcom/serenegiant/utils/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/utils/Time$TimeJellyBeanMr1;
    }
.end annotation


# static fields
.field public static prohibitElapsedRealtimeNanos:Z = true

.field private static sTime:Lcom/serenegiant/utils/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    invoke-static {}, Lcom/serenegiant/utils/Time;->reset()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/utils/Time$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/serenegiant/utils/Time;-><init>()V

    return-void
.end method

.method public static nanoTime()J
    .locals 2

    .line 34
    sget-object v0, Lcom/serenegiant/utils/Time;->sTime:Lcom/serenegiant/utils/Time;

    invoke-virtual {v0}, Lcom/serenegiant/utils/Time;->timeNs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static reset()V
    .locals 2

    .line 38
    sget-boolean v0, Lcom/serenegiant/utils/Time;->prohibitElapsedRealtimeNanos:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isJellyBeanMr1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/serenegiant/utils/Time$TimeJellyBeanMr1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/serenegiant/utils/Time$TimeJellyBeanMr1;-><init>(Lcom/serenegiant/utils/Time$1;)V

    sput-object v0, Lcom/serenegiant/utils/Time;->sTime:Lcom/serenegiant/utils/Time;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcom/serenegiant/utils/Time;

    invoke-direct {v0}, Lcom/serenegiant/utils/Time;-><init>()V

    sput-object v0, Lcom/serenegiant/utils/Time;->sTime:Lcom/serenegiant/utils/Time;

    :goto_0
    return-void
.end method


# virtual methods
.method protected timeNs()J
    .locals 2

    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
