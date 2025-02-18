.class public Lcom/serenegiant/utils/GPS$Datum;
.super Ljava/lang/Object;
.source "GPS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/utils/GPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Datum"
.end annotation


# instance fields
.field public final a:D

.field public final ae2:D

.field public final b:D

.field public final e2:D

.field public final inv_ellipticity:D


# direct methods
.method public constructor <init>(DDDZ)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/serenegiant/utils/GPS$Datum;->a:D

    .line 31
    iput-wide p3, p0, Lcom/serenegiant/utils/GPS$Datum;->b:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    div-double p5, v0, p5

    .line 32
    :goto_0
    iput-wide p5, p0, Lcom/serenegiant/utils/GPS$Datum;->inv_ellipticity:D

    mul-double p5, p1, p1

    mul-double p3, p3, p3

    sub-double p3, p5, p3

    div-double/2addr p3, p5

    .line 34
    iput-wide p3, p0, Lcom/serenegiant/utils/GPS$Datum;->e2:D

    sub-double/2addr v0, p3

    mul-double p1, p1, v0

    .line 35
    iput-wide p1, p0, Lcom/serenegiant/utils/GPS$Datum;->ae2:D

    return-void
.end method
