.class final Lcom/baidu/trace/LBSTraceService$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/LBSTraceService;
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
            "Lcom/baidu/trace/LBSTraceService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/trace/LBSTraceService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService$a;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceService$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    const/16 v2, 0x13

    if-eq v1, v2, :cond_7

    const/16 v2, 0x8d

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa1

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa3

    if-eq v1, v2, :cond_4

    const/16 v2, 0x17

    if-eq v1, v2, :cond_3

    const/16 v2, 0x18

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/baidu/trace/LBSTraceService;->a(Lcom/baidu/trace/LBSTraceService;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/baidu/trace/LBSTraceService;->a(Lcom/baidu/trace/LBSTraceService;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x12

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/trace/LBSTraceService;->a(SILcom/baidu/trace/c/f$a;)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/baidu/trace/LBSTraceService;->a(I)V

    return-void

    :pswitch_3
    invoke-virtual {v0}, Lcom/baidu/trace/LBSTraceService;->c()V

    return-void

    :pswitch_4
    invoke-virtual {v0}, Lcom/baidu/trace/LBSTraceService;->b()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/baidu/trace/LBSTraceService;->h()V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/baidu/trace/LBSTraceService;->g()V

    return-void

    :cond_4
    invoke-virtual {v0, p1}, Lcom/baidu/trace/LBSTraceService;->b(Landroid/os/Message;)V

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/baidu/trace/LBSTraceService;->a(Landroid/os/Message;)V

    return-void

    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/baidu/trace/LBSTraceService;->e(I)V

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/baidu/trace/LBSTraceService;->e()V

    return-void

    :cond_8
    invoke-virtual {v0}, Lcom/baidu/trace/LBSTraceService;->d()V

    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/baidu/trace/LBSTraceService;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
