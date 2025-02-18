.class public final Lcom/baidu/trace/api/analysis/ThresholdOption;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->a:D

    iput-wide p3, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->b:D

    iput-wide p5, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->c:D

    iput-wide p7, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->d:D

    return-void
.end method


# virtual methods
.method public final getHarshAccelerationThreshold()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->b:D

    return-wide v0
.end method

.method public final getHarshBreakingThreshold()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->c:D

    return-wide v0
.end method

.method public final getHarshSteeringThreshold()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->d:D

    return-wide v0
.end method

.method public final getSpeedingThreshold()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->a:D

    return-wide v0
.end method

.method public final setHarshAccelerationThreshold(D)Lcom/baidu/trace/api/analysis/ThresholdOption;
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->b:D

    return-object p0
.end method

.method public final setHarshBreakingThreshold(D)Lcom/baidu/trace/api/analysis/ThresholdOption;
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->c:D

    return-object p0
.end method

.method public final setHarshSteeringThreshold(D)Lcom/baidu/trace/api/analysis/ThresholdOption;
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->d:D

    return-object p0
.end method

.method public final setSpeedingThreshold(D)Lcom/baidu/trace/api/analysis/ThresholdOption;
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->a:D

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ThresholdOption{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "speedingThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ", harshAccelerationThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ", harshBreakingThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ", harshSteeringThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/analysis/ThresholdOption;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
