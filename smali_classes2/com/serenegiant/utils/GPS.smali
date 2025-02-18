.class public Lcom/serenegiant/utils/GPS;
.super Ljava/lang/Object;
.source "GPS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/utils/GPS$Datum;
    }
.end annotation


# static fields
.field public static final BESSEL:Lcom/serenegiant/utils/GPS$Datum;

.field public static final GRS80:Lcom/serenegiant/utils/GPS$Datum;

.field public static final WGS84:Lcom/serenegiant/utils/GPS$Datum;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 46
    new-instance v8, Lcom/serenegiant/utils/GPS$Datum;

    const-wide v1, 0x415853ed49eb851fL    # 6377397.155

    const-wide v3, 0x41583f1bc0000000L    # 6356079.0

    const-wide v5, 0x4072b271ec0b5675L    # 299.152813

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/utils/GPS$Datum;-><init>(DDDZ)V

    sput-object v8, Lcom/serenegiant/utils/GPS;->BESSEL:Lcom/serenegiant/utils/GPS$Datum;

    .line 47
    new-instance v0, Lcom/serenegiant/utils/GPS$Datum;

    const-wide v10, 0x415854a640000000L    # 6378137.0

    const-wide v12, 0x41583fc4141c970fL    # 6356752.314245

    const-wide v14, 0x4072a41d96746d88L    # 298.257223563

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/serenegiant/utils/GPS$Datum;-><init>(DDDZ)V

    sput-object v0, Lcom/serenegiant/utils/GPS;->WGS84:Lcom/serenegiant/utils/GPS$Datum;

    .line 48
    new-instance v0, Lcom/serenegiant/utils/GPS$Datum;

    const-wide v2, 0x415854a640000000L    # 6378137.0

    const-wide v4, 0x41583fc4141adea9L    # 6356752.31414

    const-wide v6, 0x4072a41d94ebf9a8L    # 298.257222101

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/serenegiant/utils/GPS$Datum;-><init>(DDDZ)V

    sput-object v0, Lcom/serenegiant/utils/GPS;->GRS80:Lcom/serenegiant/utils/GPS$Datum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Lcom/serenegiant/utils/GPS$Datum;DDDDDD)D
    .locals 0

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    .line 67
    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    .line 68
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    .line 69
    invoke-static {p9, p10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p7

    sub-double p9, p1, p5

    sub-double/2addr p3, p7

    add-double/2addr p1, p5

    const-wide/high16 p5, 0x4000000000000000L    # 2.0

    div-double/2addr p1, p5

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p5

    .line 76
    iget-wide p7, p0, Lcom/serenegiant/utils/GPS$Datum;->e2:D

    mul-double p7, p7, p5

    mul-double p7, p7, p5

    const-wide/high16 p5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p5, p7

    invoke-static {p5, p6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p5

    .line 77
    iget-wide p7, p0, Lcom/serenegiant/utils/GPS$Datum;->ae2:D

    mul-double p11, p5, p5

    mul-double p11, p11, p5

    div-double/2addr p7, p11

    .line 78
    iget-wide p11, p0, Lcom/serenegiant/utils/GPS$Datum;->a:D

    div-double/2addr p11, p5

    mul-double p9, p9, p7

    mul-double p3, p3, p11

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double p3, p3, p0

    mul-double p9, p9, p9

    mul-double p3, p3, p3

    add-double/2addr p9, p3

    .line 82
    invoke-static {p9, p10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method
