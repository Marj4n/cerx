.class public final Lcom/baidu/trace/bc;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/baidu/trace/bc;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/trace/bc;

    invoke-direct {v0}, Lcom/baidu/trace/bc;-><init>()V

    sput-object v0, Lcom/baidu/trace/bc;->b:Lcom/baidu/trace/bc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()Lcom/baidu/trace/bc;
    .locals 1

    sget-object v0, Lcom/baidu/trace/bc;->b:Lcom/baidu/trace/bc;

    return-object v0
.end method

.method protected static a(Lcom/baidu/trace/a/h;)V
    .locals 1

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v0

    sput v0, Lcom/baidu/trace/c/e;->d:I

    iget p0, p0, Lcom/baidu/trace/a/h;->a:I

    invoke-static {p0}, Lcom/baidu/trace/aw;->b(I)V

    return-void
.end method

.method protected static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected final a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    return-void
.end method

.method protected final a(Lcom/baidu/trace/a/a;)V
    .locals 1

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v0

    sput v0, Lcom/baidu/trace/c/e;->d:I

    iget-byte p1, p1, Lcom/baidu/trace/a/a;->a:B

    sput-byte p1, Lcom/baidu/trace/b;->a:B

    iget-object p1, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x8d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/baidu/trace/a/d;)V
    .locals 1

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v0

    sput v0, Lcom/baidu/trace/c/e;->d:I

    iget-object v0, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-byte p1, p1, Lcom/baidu/trace/a/d;->a:B

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x4d9

    iput v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method protected final a(Lcom/baidu/trace/a/f;)V
    .locals 4

    iget-byte v0, p1, Lcom/baidu/trace/a/f;->a:B

    sput-byte v0, Lcom/baidu/trace/z;->n:B

    iget-byte v0, p1, Lcom/baidu/trace/a/f;->i:B

    sput-byte v0, Lcom/baidu/trace/z;->o:B

    iget-byte v0, p1, Lcom/baidu/trace/a/f;->j:B

    sput-byte v0, Lcom/baidu/trace/z;->w:B

    iget-byte v0, p1, Lcom/baidu/trace/a/f;->c:B

    sput-byte v0, Lcom/baidu/trace/z;->q:B

    sget v0, Lcom/baidu/trace/Trace;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-byte v0, Lcom/baidu/trace/z;->w:B

    sget v2, Lcom/baidu/trace/ar;->c:I

    if-le v0, v2, :cond_0

    sget-byte v0, Lcom/baidu/trace/z;->w:B

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/baidu/trace/ar;->b:I

    :cond_0
    sget v0, Lcom/baidu/trace/Trace;->b:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_1

    sget-byte v0, Lcom/baidu/trace/z;->q:B

    mul-int/lit16 v0, v0, 0x3e8

    sget v3, Lcom/baidu/trace/ar;->b:I

    if-lt v0, v3, :cond_1

    sget-byte v0, Lcom/baidu/trace/z;->q:B

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/baidu/trace/bd;->i:I

    :cond_1
    iget-byte v0, p1, Lcom/baidu/trace/a/f;->b:B

    if-lt v0, v1, :cond_2

    iget-byte v0, p1, Lcom/baidu/trace/a/f;->b:B

    sput-byte v0, Lcom/baidu/trace/z;->p:B

    :cond_2
    iget-byte v0, p1, Lcom/baidu/trace/a/f;->d:B

    sput-byte v0, Lcom/baidu/trace/z;->r:B

    iget-byte v0, p1, Lcom/baidu/trace/a/f;->e:B

    sput-byte v0, Lcom/baidu/trace/z;->s:B

    iget-byte v0, p1, Lcom/baidu/trace/a/f;->f:B

    sput-byte v0, Lcom/baidu/trace/z;->t:B

    iget-byte v0, p1, Lcom/baidu/trace/a/f;->g:B

    sput-byte v0, Lcom/baidu/trace/z;->u:B

    iget-byte p1, p1, Lcom/baidu/trace/a/f;->h:B

    sput-byte p1, Lcom/baidu/trace/z;->v:B

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result p1

    sput p1, Lcom/baidu/trace/c/e;->d:I

    const/4 p1, 0x1

    sget-byte v0, Lcom/baidu/trace/z;->n:B

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    if-eqz p1, :cond_4

    const/16 v0, 0x1d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x4d9

    iput v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void
.end method

.method protected final a(Lcom/baidu/trace/a/i;J)V
    .locals 6

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v0

    sput v0, Lcom/baidu/trace/c/e;->d:I

    iget-object v0, p1, Lcom/baidu/trace/a/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/trace/c/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/baidu/trace/ay;->c:[B

    array-length v4, v4

    if-ge v2, v4, :cond_0

    array-length v4, v0

    if-ge v2, v4, :cond_0

    sget-object v4, Lcom/baidu/trace/ay;->c:[B

    aget-byte v5, v0, v2

    aput-byte v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v0, Lcom/baidu/trace/ay;->c:[B

    array-length v0, v0

    if-ge v3, v0, :cond_1

    sget-object v0, Lcom/baidu/trace/ay;->c:[B

    aput-byte v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-byte v0, p1, Lcom/baidu/trace/a/i;->c:B

    sput-byte v0, Lcom/baidu/trace/ay;->d:B

    iget-object v0, p1, Lcom/baidu/trace/a/i;->d:Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/ay;->e:Ljava/lang/String;

    iget p1, p1, Lcom/baidu/trace/a/i;->b:I

    sput p1, Lcom/baidu/trace/ay;->b:I

    const/4 p1, 0x1

    sput-byte p1, Lcom/baidu/trace/ay;->a:B

    sget-byte v0, Lcom/baidu/trace/ay;->d:B

    if-ne v0, p1, :cond_2

    sget-object p1, Lcom/baidu/trace/ay;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/trace/r;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    sput-object p1, Lcom/baidu/trace/ay;->e:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    if-eqz p1, :cond_3

    const/16 v0, 0xa1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/baidu/trace/ay;->c:[B

    const-string v2, "ak"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget v1, Lcom/baidu/trace/ay;->b:I

    const-string v2, "pushId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "timeStamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-byte p2, Lcom/baidu/trace/ay;->d:B

    const-string p3, "infoType"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    sget-object p2, Lcom/baidu/trace/ay;->e:Ljava/lang/String;

    const-string p3, "infoContent"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method protected final c()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/baidu/trace/g;->b()V

    iget-object v0, p0, Lcom/baidu/trace/bc;->a:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    return v0
.end method
