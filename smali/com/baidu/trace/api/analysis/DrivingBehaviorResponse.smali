.class public final Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;
.super Lcom/baidu/trace/model/BaseResponse;


# instance fields
.field private a:D

.field private b:I

.field private c:D

.field private d:D

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/baidu/trace/api/analysis/StartPoint;

.field private j:Lcom/baidu/trace/api/analysis/EndPoint;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/SpeedingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshBreakingPoint;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshSteeringPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;DIDDIIIILcom/baidu/trace/api/analysis/StartPoint;Lcom/baidu/trace/api/analysis/EndPoint;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "DIDDIIII",
            "Lcom/baidu/trace/api/analysis/StartPoint;",
            "Lcom/baidu/trace/api/analysis/EndPoint;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/SpeedingInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshBreakingPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshSteeringPoint;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    move-wide v1, p4

    iput-wide v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->a:D

    move v1, p6

    iput v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->b:I

    move-wide v1, p7

    iput-wide v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->c:D

    move-wide v1, p9

    iput-wide v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->d:D

    move v1, p11

    iput v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->e:I

    move v1, p12

    iput v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->f:I

    move/from16 v1, p13

    iput v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->g:I

    move/from16 v1, p14

    iput v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->h:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->i:Lcom/baidu/trace/api/analysis/StartPoint;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->j:Lcom/baidu/trace/api/analysis/EndPoint;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->k:Ljava/util/List;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->l:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->m:Ljava/util/List;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->n:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAverageSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->c:D

    return-wide v0
.end method

.method public final getDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->a:D

    return-wide v0
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->b:I

    return v0
.end method

.method public final getEndPoint()Lcom/baidu/trace/api/analysis/EndPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->j:Lcom/baidu/trace/api/analysis/EndPoint;

    return-object v0
.end method

.method public final getHarshAccelerationNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->f:I

    return v0
.end method

.method public final getHarshAccelerationPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->l:Ljava/util/List;

    return-object v0
.end method

.method public final getHarshBreakingNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->g:I

    return v0
.end method

.method public final getHarshBreakingPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshBreakingPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->m:Ljava/util/List;

    return-object v0
.end method

.method public final getHarshSteeringNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->h:I

    return v0
.end method

.method public final getHarshSteeringPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshSteeringPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->n:Ljava/util/List;

    return-object v0
.end method

.method public final getMaxSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->d:D

    return-wide v0
.end method

.method public final getSpeedingNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->e:I

    return v0
.end method

.method public final getSpeedings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/SpeedingInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->k:Ljava/util/List;

    return-object v0
.end method

.method public final getStartPoint()Lcom/baidu/trace/api/analysis/StartPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->i:Lcom/baidu/trace/api/analysis/StartPoint;

    return-object v0
.end method

.method public final setAverageSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->c:D

    return-void
.end method

.method public final setDistance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->a:D

    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->b:I

    return-void
.end method

.method public final setEndPoint(Lcom/baidu/trace/api/analysis/EndPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->j:Lcom/baidu/trace/api/analysis/EndPoint;

    return-void
.end method

.method public final setHarshAccelerationNum(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->f:I

    return-void
.end method

.method public final setHarshAccelerationPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshAccelerationPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->l:Ljava/util/List;

    return-void
.end method

.method public final setHarshBreakingNum(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->g:I

    return-void
.end method

.method public final setHarshBreakingPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshBreakingPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->m:Ljava/util/List;

    return-void
.end method

.method public final setHarshSteeringNum(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->h:I

    return-void
.end method

.method public final setHarshSteeringPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/HarshSteeringPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->n:Ljava/util/List;

    return-void
.end method

.method public final setMaxSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->d:D

    return-void
.end method

.method public final setSpeedingNum(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->e:I

    return-void
.end method

.method public final setSpeedings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/trace/api/analysis/SpeedingInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->k:Ljava/util/List;

    return-void
.end method

.method public final setStartPoint(Lcom/baidu/trace/api/analysis/StartPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->i:Lcom/baidu/trace/api/analysis/StartPoint;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->k:Ljava/util/List;

    const-string v3, "]"

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->k:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/trace/api/analysis/SpeedingInfo;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/baidu/trace/api/analysis/SpeedingInfo;->getPoints()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/baidu/trace/api/analysis/SpeedingInfo;->getPoints()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/baidu/trace/api/analysis/SpeedingInfo;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    const-string v9, ","

    if-ge v8, v7, :cond_1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/trace/api/analysis/SpeedingPoint;

    invoke-virtual {v10}, Lcom/baidu/trace/api/analysis/SpeedingPoint;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v7, -0x1

    if-ge v8, v10, :cond_0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DrivingBehaviorResponse [tag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->a:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", averageSpeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->c:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", maxSpeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->d:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", speedingNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", harshAccelerationNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", harshBreakingNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", harshSteeringNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", startPoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->i:Lcom/baidu/trace/api/analysis/StartPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", endPoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->j:Lcom/baidu/trace/api/analysis/EndPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", speedingPoints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", harshAccelerationPoints="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->l:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", harshBreakingPoints="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->m:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", harshSteeringPoints="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/trace/api/analysis/DrivingBehaviorResponse;->n:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
