.class final Lcom/baidu/trace/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/baidu/trace/api/fence/OnFenceListener;

.field private synthetic c:Lcom/baidu/trace/model/BaseResponse;


# direct methods
.method constructor <init>(ILcom/baidu/trace/api/fence/OnFenceListener;Lcom/baidu/trace/model/BaseResponse;)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/ai;->a:I

    iput-object p2, p0, Lcom/baidu/trace/ai;->b:Lcom/baidu/trace/api/fence/OnFenceListener;

    iput-object p3, p0, Lcom/baidu/trace/ai;->c:Lcom/baidu/trace/model/BaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/baidu/trace/ai;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/trace/ai;->b:Lcom/baidu/trace/api/fence/OnFenceListener;

    iget-object v1, p0, Lcom/baidu/trace/ai;->c:Lcom/baidu/trace/model/BaseResponse;

    check-cast v1, Lcom/baidu/trace/api/fence/HistoryAlarmResponse;

    invoke-interface {v0, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onHistoryAlarmCallback(Lcom/baidu/trace/api/fence/HistoryAlarmResponse;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/trace/ai;->b:Lcom/baidu/trace/api/fence/OnFenceListener;

    iget-object v1, p0, Lcom/baidu/trace/ai;->c:Lcom/baidu/trace/model/BaseResponse;

    check-cast v1, Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;

    invoke-interface {v0, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onMonitoredStatusByLocationCallback(Lcom/baidu/trace/api/fence/MonitoredStatusByLocationResponse;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/trace/ai;->b:Lcom/baidu/trace/api/fence/OnFenceListener;

    iget-object v1, p0, Lcom/baidu/trace/ai;->c:Lcom/baidu/trace/model/BaseResponse;

    check-cast v1, Lcom/baidu/trace/api/fence/MonitoredStatusResponse;

    invoke-interface {v0, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onMonitoredStatusCallback(Lcom/baidu/trace/api/fence/MonitoredStatusResponse;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/baidu/trace/ai;->b:Lcom/baidu/trace/api/fence/OnFenceListener;

    iget-object v1, p0, Lcom/baidu/trace/ai;->c:Lcom/baidu/trace/model/BaseResponse;

    check-cast v1, Lcom/baidu/trace/api/fence/FenceListResponse;

    invoke-interface {v0, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onFenceListCallback(Lcom/baidu/trace/api/fence/FenceListResponse;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/baidu/trace/ai;->b:Lcom/baidu/trace/api/fence/OnFenceListener;

    iget-object v1, p0, Lcom/baidu/trace/ai;->c:Lcom/baidu/trace/model/BaseResponse;

    check-cast v1, Lcom/baidu/trace/api/fence/DeleteFenceResponse;

    invoke-interface {v0, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onDeleteFenceCallback(Lcom/baidu/trace/api/fence/DeleteFenceResponse;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/baidu/trace/ai;->b:Lcom/baidu/trace/api/fence/OnFenceListener;

    iget-object v1, p0, Lcom/baidu/trace/ai;->c:Lcom/baidu/trace/model/BaseResponse;

    check-cast v1, Lcom/baidu/trace/api/fence/UpdateFenceResponse;

    invoke-interface {v0, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onUpdateFenceCallback(Lcom/baidu/trace/api/fence/UpdateFenceResponse;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/baidu/trace/ai;->b:Lcom/baidu/trace/api/fence/OnFenceListener;

    iget-object v1, p0, Lcom/baidu/trace/ai;->c:Lcom/baidu/trace/model/BaseResponse;

    check-cast v1, Lcom/baidu/trace/api/fence/CreateFenceResponse;

    invoke-interface {v0, v1}, Lcom/baidu/trace/api/fence/OnFenceListener;->onCreateFenceCallback(Lcom/baidu/trace/api/fence/CreateFenceResponse;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
