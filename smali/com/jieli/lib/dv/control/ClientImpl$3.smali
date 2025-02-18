.class Lcom/jieli/lib/dv/control/ClientImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/ClientImpl;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/jieli/lib/dv/control/ClientImpl;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/ClientImpl;Ljava/lang/String;I)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    iput-object p2, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->a:Ljava/lang/String;

    iput p3, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 324
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/ClientImpl;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 328
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->a:Ljava/lang/String;

    iget v5, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->b:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/ClientImpl;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    add-int/lit8 v1, v1, 0x1

    .line 333
    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/ClientImpl;Ljava/net/Socket;)Ljava/net/Socket;

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 335
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/ClientImpl;I)V

    .line 336
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR_CONNECTION_EXCEPTION\uff1a tryToConnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 342
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/ClientImpl;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    .line 344
    :try_start_1
    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    iget-object v3, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-static {v3}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/ClientImpl;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/ClientImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 346
    :catch_1
    sget-object v2, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    const-string v3, "getOutputStream exception\uff1a 4"

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-static {v2, v1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/ClientImpl;I)V

    .line 350
    :goto_2
    iget-object v2, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/ClientImpl;->b(Lcom/jieli/lib/dv/control/ClientImpl;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_1

    .line 351
    sget-object v0, Lcom/jieli/lib/dv/control/ClientImpl;->a:Ljava/lang/String;

    const-string v2, "ERROR_CONNECTION_EXCEPTION\uff1a mOutputStream is null"

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/ClientImpl;I)V

    goto :goto_3

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/ClientImpl;->a(Lcom/jieli/lib/dv/control/ClientImpl;I)V

    .line 356
    iget-object v0, p0, Lcom/jieli/lib/dv/control/ClientImpl$3;->c:Lcom/jieli/lib/dv/control/ClientImpl;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/ClientImpl;->c(Lcom/jieli/lib/dv/control/ClientImpl;)V

    :goto_3
    return-void

    :cond_2
    const-wide/16 v2, 0x3e8

    .line 360
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0
.end method
