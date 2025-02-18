.class public Lcom/baidu/trace/model/ProcessOption;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcom/baidu/trace/model/TransportMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/trace/model/ProcessOption;->a:Z

    iput-boolean v0, p0, Lcom/baidu/trace/model/ProcessOption;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/model/ProcessOption;->c:Z

    iput v0, p0, Lcom/baidu/trace/model/ProcessOption;->d:I

    sget-object v0, Lcom/baidu/trace/model/TransportMode;->driving:Lcom/baidu/trace/model/TransportMode;

    iput-object v0, p0, Lcom/baidu/trace/model/ProcessOption;->e:Lcom/baidu/trace/model/TransportMode;

    return-void
.end method

.method public constructor <init>(ZZZILcom/baidu/trace/model/TransportMode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/trace/model/ProcessOption;->a:Z

    iput-boolean v0, p0, Lcom/baidu/trace/model/ProcessOption;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/model/ProcessOption;->c:Z

    iput v0, p0, Lcom/baidu/trace/model/ProcessOption;->d:I

    sget-object v0, Lcom/baidu/trace/model/TransportMode;->driving:Lcom/baidu/trace/model/TransportMode;

    iput-object v0, p0, Lcom/baidu/trace/model/ProcessOption;->e:Lcom/baidu/trace/model/TransportMode;

    iput-boolean p1, p0, Lcom/baidu/trace/model/ProcessOption;->a:Z

    iput-boolean p2, p0, Lcom/baidu/trace/model/ProcessOption;->b:Z

    iput-boolean p3, p0, Lcom/baidu/trace/model/ProcessOption;->c:Z

    iput p4, p0, Lcom/baidu/trace/model/ProcessOption;->d:I

    iput-object p5, p0, Lcom/baidu/trace/model/ProcessOption;->e:Lcom/baidu/trace/model/TransportMode;

    return-void
.end method


# virtual methods
.method public getRadiusThreshold()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/model/ProcessOption;->d:I

    return v0
.end method

.method public getTransportMode()Lcom/baidu/trace/model/TransportMode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/model/ProcessOption;->e:Lcom/baidu/trace/model/TransportMode;

    return-object v0
.end method

.method public isNeedDenoise()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/trace/model/ProcessOption;->a:Z

    return v0
.end method

.method public isNeedMapMatch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/trace/model/ProcessOption;->c:Z

    return v0
.end method

.method public isNeedVacuate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/trace/model/ProcessOption;->b:Z

    return v0
.end method

.method public setNeedDenoise(Z)Lcom/baidu/trace/model/ProcessOption;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/trace/model/ProcessOption;->a:Z

    return-object p0
.end method

.method public setNeedMapMatch(Z)Lcom/baidu/trace/model/ProcessOption;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/trace/model/ProcessOption;->c:Z

    return-object p0
.end method

.method public setNeedVacuate(Z)Lcom/baidu/trace/model/ProcessOption;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/trace/model/ProcessOption;->b:Z

    return-object p0
.end method

.method public setRadiusThreshold(I)Lcom/baidu/trace/model/ProcessOption;
    .locals 0

    iput p1, p0, Lcom/baidu/trace/model/ProcessOption;->d:I

    return-object p0
.end method

.method public setTransportMode(Lcom/baidu/trace/model/TransportMode;)Lcom/baidu/trace/model/ProcessOption;
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/model/ProcessOption;->e:Lcom/baidu/trace/model/TransportMode;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcessOption [needDenoise="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/baidu/trace/model/ProcessOption;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needVacuate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/trace/model/ProcessOption;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needMapMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/trace/model/ProcessOption;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", radiusThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/model/ProcessOption;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transportMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/model/ProcessOption;->e:Lcom/baidu/trace/model/TransportMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
