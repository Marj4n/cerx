.class public final Lcom/baidu/trace/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/b/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/trace/b/a$a;

.field private static b:Lcom/baidu/trace/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/baidu/trace/b/a$a;->a:Lcom/baidu/trace/b/a$a;

    sput-object v0, Lcom/baidu/trace/b/a;->a:Lcom/baidu/trace/b/a$a;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    return-void
.end method

.method public static a()Lcom/baidu/trace/b/a$a;
    .locals 1

    sget-object v0, Lcom/baidu/trace/b/a;->a:Lcom/baidu/trace/b/a$a;

    return-object v0
.end method

.method public static a(Lcom/baidu/trace/b/a$a;Lcom/baidu/trace/b/e;)V
    .locals 2

    sput-object p0, Lcom/baidu/trace/b/a;->a:Lcom/baidu/trace/b/a$a;

    sget-object v0, Lcom/baidu/trace/b/a$a;->a:Lcom/baidu/trace/b/a$a;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_2

    sget-object p0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/baidu/trace/b/b;->a()V

    sget-object p0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    instance-of p0, p0, Lcom/baidu/trace/b/k;

    if-eqz p0, :cond_1

    sput-object v1, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    :cond_0
    invoke-static {}, Lcom/baidu/trace/b/j;->e()Lcom/baidu/trace/b/j;

    move-result-object p0

    sput-object p0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    :cond_1
    sget-object p0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    invoke-interface {p0, p1}, Lcom/baidu/trace/b/b;->a(Lcom/baidu/trace/b/e;)V

    return-void

    :cond_2
    sget-object v0, Lcom/baidu/trace/b/a$a;->b:Lcom/baidu/trace/b/a$a;

    if-ne v0, p0, :cond_5

    sget-object p0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/baidu/trace/b/b;->a()V

    sget-object p0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    instance-of v0, p0, Lcom/baidu/trace/b/j;

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lcom/baidu/trace/b/b;->c()I

    move-result p0

    sput-object v1, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    goto :goto_0

    :cond_3
    const/16 p0, 0x206c

    :goto_0
    invoke-static {p0}, Lcom/baidu/trace/b/k;->a(I)Lcom/baidu/trace/b/k;

    move-result-object p0

    sput-object p0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    :cond_4
    sget-object p0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    invoke-interface {p0, p1}, Lcom/baidu/trace/b/b;->a(Lcom/baidu/trace/b/e;)V

    :cond_5
    return-void
.end method

.method public static declared-synchronized a([BLandroid/os/Handler;)V
    .locals 3

    const-class v0, Lcom/baidu/trace/b/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/baidu/trace/b/a;->d()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    invoke-interface {v1, p0}, Lcom/baidu/trace/b/b;->a([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    nop

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_3
    throw p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Lcom/baidu/trace/b/b;
    .locals 1

    sget-object v0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    return-object v0
.end method

.method protected static declared-synchronized c()Ljava/io/DataInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/baidu/trace/b/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/baidu/trace/b/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    invoke-interface {v1}, Lcom/baidu/trace/b/b;->d()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d()Z
    .locals 2

    sget-object v0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/baidu/trace/b/b;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public static e()V
    .locals 1

    sget-object v0, Lcom/baidu/trace/b/a;->b:Lcom/baidu/trace/b/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/baidu/trace/b/b;->a()V

    :cond_0
    return-void
.end method
