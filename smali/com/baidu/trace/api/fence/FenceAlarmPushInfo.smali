.class public Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/baidu/trace/api/fence/MonitoredAction;

.field protected e:Lcom/baidu/trace/api/fence/AlarmPoint;

.field protected f:Lcom/baidu/trace/api/fence/AlarmPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/baidu/trace/api/fence/MonitoredAction;Lcom/baidu/trace/api/fence/AlarmPoint;Lcom/baidu/trace/api/fence/AlarmPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->a:J

    iput-object p3, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->d:Lcom/baidu/trace/api/fence/MonitoredAction;

    iput-object p6, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->e:Lcom/baidu/trace/api/fence/AlarmPoint;

    iput-object p7, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->f:Lcom/baidu/trace/api/fence/AlarmPoint;

    return-void
.end method


# virtual methods
.method public getCurrentPoint()Lcom/baidu/trace/api/fence/AlarmPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->e:Lcom/baidu/trace/api/fence/AlarmPoint;

    return-object v0
.end method

.method public getFenceId()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->a:J

    return-wide v0
.end method

.method public getFenceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitoredAction()Lcom/baidu/trace/api/fence/MonitoredAction;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->d:Lcom/baidu/trace/api/fence/MonitoredAction;

    return-object v0
.end method

.method public getMonitoredPerson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPrePoint()Lcom/baidu/trace/api/fence/AlarmPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->f:Lcom/baidu/trace/api/fence/AlarmPoint;

    return-object v0
.end method

.method public setCurrentPoint(Lcom/baidu/trace/api/fence/AlarmPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->e:Lcom/baidu/trace/api/fence/AlarmPoint;

    return-void
.end method

.method public setFenceId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->a:J

    return-void
.end method

.method public setFenceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setMonitoredAction(Lcom/baidu/trace/api/fence/MonitoredAction;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->d:Lcom/baidu/trace/api/fence/MonitoredAction;

    return-void
.end method

.method public setMonitoredPerson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setPrePoint(Lcom/baidu/trace/api/fence/AlarmPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->f:Lcom/baidu/trace/api/fence/AlarmPoint;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FenceAlarmPushInfo [fenceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fenceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredPerson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->d:Lcom/baidu/trace/api/fence/MonitoredAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->e:Lcom/baidu/trace/api/fence/AlarmPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prePoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->f:Lcom/baidu/trace/api/fence/AlarmPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
