.class public final Lcom/baidu/trace/api/fence/MonitoredStatusInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Lcom/baidu/trace/api/fence/MonitoredStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/trace/api/fence/MonitoredStatus;->unknown:Lcom/baidu/trace/api/fence/MonitoredStatus;

    iput-object v0, p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->b:Lcom/baidu/trace/api/fence/MonitoredStatus;

    return-void
.end method

.method public constructor <init>(JLcom/baidu/trace/api/fence/MonitoredStatus;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/trace/api/fence/MonitoredStatus;->unknown:Lcom/baidu/trace/api/fence/MonitoredStatus;

    iput-object v0, p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->b:Lcom/baidu/trace/api/fence/MonitoredStatus;

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->a:J

    iput-object p3, p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->b:Lcom/baidu/trace/api/fence/MonitoredStatus;

    return-void
.end method


# virtual methods
.method public final getFenceId()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->a:J

    return-wide v0
.end method

.method public final getMonitoredStatus()Lcom/baidu/trace/api/fence/MonitoredStatus;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->b:Lcom/baidu/trace/api/fence/MonitoredStatus;

    return-object v0
.end method

.method public final setFenceId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->a:J

    return-void
.end method

.method public final setMonitoredStatus(Lcom/baidu/trace/api/fence/MonitoredStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->b:Lcom/baidu/trace/api/fence/MonitoredStatus;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MonitoredStatusInfo [fenceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", monitoredStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/fence/MonitoredStatusInfo;->b:Lcom/baidu/trace/api/fence/MonitoredStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
