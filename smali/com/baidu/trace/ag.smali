.class final Lcom/baidu/trace/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Landroid/os/Handler;

.field private synthetic c:Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;

.field private synthetic d:Lcom/baidu/trace/api/fence/OnFenceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/ag;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/trace/ag;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/baidu/trace/ag;->c:Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;

    iput-object p4, p0, Lcom/baidu/trace/ag;->d:Lcom/baidu/trace/api/fence/OnFenceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/trace/ag;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/trace/ag;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/trace/ag;->c:Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;

    iget-object v3, p0, Lcom/baidu/trace/ag;->d:Lcom/baidu/trace/api/fence/OnFenceListener;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/trace/a;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void
.end method
