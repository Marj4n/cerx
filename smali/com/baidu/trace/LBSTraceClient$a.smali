.class final Lcom/baidu/trace/LBSTraceClient$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/LBSTraceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/trace/LBSTraceClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/trace/LBSTraceClient;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient$a;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "cur_point"

    const-string v2, "radius"

    const-string v3, "longitude"

    const-string v4, "coord_type"

    const-string v5, "latitude"

    const-string v6, "create_time"

    const-string v7, "time"

    const-string v8, "monitored_person"

    const-string v9, "fence"

    const-string v10, "fence_id"

    const-string v11, "action"

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    move-object/from16 v12, p0

    iget-object v13, v12, Lcom/baidu/trace/LBSTraceClient$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/baidu/trace/LBSTraceClient;

    if-nez v13, :cond_0

    const-string v0, "LBSTraceClient instance is null"

    invoke-static {v0}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x12

    if-eq v14, v15, :cond_26

    const/16 v15, 0x13

    if-eq v14, v15, :cond_25

    const/16 v15, 0x16

    if-eq v14, v15, :cond_24

    const/16 v15, 0x19

    if-eq v14, v15, :cond_23

    const/16 v15, 0x1b

    if-eq v14, v15, :cond_22

    const/16 v15, 0x7c

    const-string v12, "\u6210\u529f"

    move-object/from16 v16, v1

    if-eq v14, v15, :cond_21

    const/16 v15, 0x98

    const-string v1, "\u670d\u52a1\u505c\u6b62\u5931\u8d25"

    move-object/from16 v17, v2

    if-eq v14, v15, :cond_20

    const/16 v15, 0xa2

    const/4 v2, 0x1

    if-eq v14, v15, :cond_b

    const/16 v3, 0x4d9

    if-eq v14, v3, :cond_a

    const/16 v3, 0x2710

    if-eq v14, v3, :cond_9

    const/16 v3, 0x8e

    if-eq v14, v3, :cond_5

    const/16 v4, 0x8f

    if-eq v14, v4, :cond_5

    const/16 v0, 0xab

    if-eq v14, v0, :cond_4

    const/16 v0, 0xac

    if-eq v14, v0, :cond_3

    const/16 v0, 0xb5

    const-string v1, "\u670d\u52a1\u6b63\u5728\u505c\u6b62"

    if-eq v14, v0, :cond_2

    const/16 v0, 0xb6

    if-eq v14, v0, :cond_1

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v12}, Lcom/baidu/trace/model/OnTraceListener;->onStopGatherCallback(ILjava/lang/String;)V

    return-void

    :pswitch_1
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v1, 0x32c9

    const-string v2, "\u91c7\u96c6\u505c\u6b62\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/baidu/trace/model/OnTraceListener;->onStopGatherCallback(ILjava/lang/String;)V

    return-void

    :pswitch_2
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v1, 0x32cb

    const-string v2, "\u91c7\u96c6\u5df2\u505c\u6b62"

    invoke-interface {v0, v1, v2}, Lcom/baidu/trace/model/OnTraceListener;->onStopGatherCallback(ILjava/lang/String;)V

    return-void

    :pswitch_3
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v1, 0x2ee3

    const-string v2, "\u91c7\u96c6\u5df2\u5f00\u542f"

    invoke-interface {v0, v1, v2}, Lcom/baidu/trace/model/OnTraceListener;->onStartGatherCallback(ILjava/lang/String;)V

    return-void

    :pswitch_4
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v1, 0x2ee1

    const-string v2, "\u91c7\u96c6\u5f00\u542f\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/baidu/trace/model/OnTraceListener;->onStartGatherCallback(ILjava/lang/String;)V

    return-void

    :pswitch_5
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v12}, Lcom/baidu/trace/model/OnTraceListener;->onStartGatherCallback(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v2, 0x2afb

    invoke-interface {v0, v2, v1}, Lcom/baidu/trace/model/OnTraceListener;->onStopTraceCallback(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v2, 0x2717

    invoke-interface {v0, v2, v1}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const-string v1, "\u5931\u8d25"

    invoke-interface {v0, v2, v1}, Lcom/baidu/trace/model/OnTraceListener;->onInitBOSCallback(ILjava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v12}, Lcom/baidu/trace/model/OnTraceListener;->onInitBOSCallback(ILjava/lang/String;)V

    return-void

    :cond_5
    :try_start_0
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->b(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/IService;

    move-result-object v2

    invoke-interface {v2}, Lcom/baidu/trace/IService;->unregisterListener()V

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->e(Lcom/baidu/trace/LBSTraceClient;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->d(Lcom/baidu/trace/LBSTraceClient;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->e(Lcom/baidu/trace/LBSTraceClient;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->f(Lcom/baidu/trace/LBSTraceClient;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v0, v0, Landroid/os/Message;->what:I

    if-ne v3, v0, :cond_6

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v12}, Lcom/baidu/trace/model/OnTraceListener;->onStopTraceCallback(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v2, 0x2afc

    const-string v3, "\u670d\u52a1\u505c\u6b62\u6210\u529f\uff0c\u8fd8\u6709\u672a\u4e0a\u4f20\u7684\u7f13\u5b58\u8f68\u8ff9"

    invoke-interface {v0, v2, v3}, Lcom/baidu/trace/model/OnTraceListener;->onStopTraceCallback(ILjava/lang/String;)V

    :cond_7
    :goto_0
    const/4 v0, 0x0

    invoke-static {v13, v0}, Lcom/baidu/trace/LBSTraceClient;->a(Lcom/baidu/trace/LBSTraceClient;Lcom/baidu/trace/IService;)Lcom/baidu/trace/IService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_1
    invoke-static {}, Lcom/baidu/trace/c/h;->a()V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unbind and stop LBSTraceService failed, Exception : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v2, 0x2af9

    invoke-interface {v0, v2, v1}, Lcom/baidu/trace/model/OnTraceListener;->onStopTraceCallback(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/baidu/trace/c/h;->a()V

    throw v0

    :cond_9
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const-string v1, "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

    invoke-interface {v0, v3, v1}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    return-void

    :cond_a
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v1, 0x2711

    const-string v2, "\u670d\u52a1\u5f00\u542f\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    return-void

    :cond_b
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    iget v1, v0, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v12, Lcom/baidu/trace/model/PushMessage;

    invoke-direct {v12}, Lcom/baidu/trace/model/PushMessage;-><init>()V

    new-instance v14, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;

    invoke-direct {v14}, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;-><init>()V

    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v3

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->setFenceId(J)V

    goto :goto_3

    :cond_d
    move-object v0, v3

    :goto_3
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->setFenceName(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->setMonitoredPerson(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v2, :cond_13

    if-ne v9, v1, :cond_12

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_11

    if-eq v2, v3, :cond_10

    goto :goto_5

    :cond_10
    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredAction;->exit:Lcom/baidu/trace/api/fence/MonitoredAction;

    :goto_4
    invoke-virtual {v14, v2}, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->setMonitoredAction(Lcom/baidu/trace/api/fence/MonitoredAction;)V

    goto :goto_5

    :cond_11
    sget-object v2, Lcom/baidu/trace/api/fence/MonitoredAction;->enter:Lcom/baidu/trace/api/fence/MonitoredAction;

    goto :goto_4

    :cond_12
    if-ne v8, v1, :cond_13

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/trace/api/fence/MonitoredAction;->valueOf(Ljava/lang/String;)Lcom/baidu/trace/api/fence/MonitoredAction;

    move-result-object v2

    goto :goto_4

    :cond_13
    :goto_5
    new-instance v2, Lcom/baidu/trace/api/fence/AlarmPoint;

    invoke-direct {v2}, Lcom/baidu/trace/api/fence/AlarmPoint;-><init>()V

    new-instance v10, Lcom/baidu/trace/api/fence/AlarmPoint;

    invoke-direct {v10}, Lcom/baidu/trace/api/fence/AlarmPoint;-><init>()V

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/baidu/trace/api/fence/AlarmPoint;->setLocTime(J)V

    :cond_14
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/baidu/trace/api/fence/AlarmPoint;->setCreateTime(J)V

    :cond_15
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    new-instance v6, Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v12

    :try_start_3
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-direct {v6, v7, v8, v11, v12}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v6}, Lcom/baidu/trace/api/fence/AlarmPoint;->setLocation(Lcom/baidu/trace/model/LatLng;)V

    goto :goto_6

    :cond_16
    move-object v5, v12

    :goto_6
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_19

    if-eq v4, v3, :cond_18

    const/4 v3, 0x3

    if-eq v4, v3, :cond_17

    goto :goto_7

    :cond_17
    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    goto :goto_7

    :cond_18
    sget-object v0, Lcom/baidu/trace/model/CoordType;->gcj02:Lcom/baidu/trace/model/CoordType;

    goto :goto_7

    :cond_19
    sget-object v0, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    :goto_7
    invoke-virtual {v2, v0}, Lcom/baidu/trace/api/fence/AlarmPoint;->setCoordType(Lcom/baidu/trace/model/CoordType;)V

    :cond_1a
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/trace/api/fence/AlarmPoint;->setRadius(D)V

    :cond_1b
    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v3, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    const-class v4, Ljava/lang/String;

    invoke-static {v0, v3, v2, v4}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/AlarmPoint;Ljava/lang/Class;)V

    :cond_1c
    invoke-virtual {v14, v2}, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->setCurrentPoint(Lcom/baidu/trace/api/fence/AlarmPoint;)V

    const-string v0, "pre_point"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "pre_point"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x3

    if-ne v2, v1, :cond_1d

    sget-object v2, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    const-class v3, Ljava/lang/Integer;

    :goto_8
    invoke-static {v0, v2, v10, v3}, Lcom/baidu/trace/a;->a(Lorg/json/JSONObject;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/fence/AlarmPoint;Ljava/lang/Class;)V

    goto :goto_9

    :cond_1d
    const/4 v2, 0x4

    if-ne v2, v1, :cond_1e

    sget-object v2, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    const-class v3, Ljava/lang/String;

    goto :goto_8

    :cond_1e
    :goto_9
    invoke-virtual {v14, v10}, Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;->setPrePoint(Lcom/baidu/trace/api/fence/AlarmPoint;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_1
    move-object v5, v12

    :catch_2
    :cond_1f
    :goto_a
    invoke-virtual {v5, v14}, Lcom/baidu/trace/model/PushMessage;->setFenceAlarmPushInfo(Lcom/baidu/trace/api/fence/FenceAlarmPushInfo;)V

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    invoke-interface {v0, v1, v5}, Lcom/baidu/trace/model/OnTraceListener;->onPushCallback(BLcom/baidu/trace/model/PushMessage;)V

    goto/16 :goto_b

    :cond_20
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v2, 0x2af9

    invoke-interface {v0, v2, v1}, Lcom/baidu/trace/model/OnTraceListener;->onStopTraceCallback(ILjava/lang/String;)V

    return-void

    :cond_21
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v12}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    return-void

    :cond_22
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v1, 0x2afa

    const-string v2, "\u670d\u52a1\u672a\u5f00\u542f"

    invoke-interface {v0, v1, v2}, Lcom/baidu/trace/model/OnTraceListener;->onStopTraceCallback(ILjava/lang/String;)V

    return-void

    :cond_23
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v1, 0x2716

    const-string v2, "\u670d\u52a1\u5df2\u5f00\u542f"

    invoke-interface {v0, v1, v2}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    return-void

    :cond_24
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v1, 0x2715

    const-string v2, "\u670d\u52a1\u6b63\u5728\u5f00\u542f"

    invoke-interface {v0, v1, v2}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    return-void

    :cond_25
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v1, 0x2714

    const-string v2, "\u7f51\u7edc\u672a\u5f00\u542f"

    invoke-interface {v0, v1, v2}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    return-void

    :cond_26
    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v13}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    const/16 v1, 0x2713

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    :cond_27
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
