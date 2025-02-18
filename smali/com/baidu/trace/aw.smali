.class public Lcom/baidu/trace/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/trace/c/g;


# static fields
.field public static a:Ljava/util/Deque; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/baidu/trace/ar$a;",
            ">;"
        }
    .end annotation
.end field

.field protected static b:J = 0x2L

.field protected static c:I = 0x0

.field private static d:B = 0x1t

.field private static e:Ljava/util/Deque; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/baidu/trace/ar$a;",
            ">;"
        }
    .end annotation
.end field

.field private static f:I = 0x0

.field private static g:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 2

    sget-byte v0, Lcom/baidu/trace/z;->s:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    sget-object v1, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/trace/ar$a;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/baidu/trace/bd;->a(ILjava/util/Queue;)V

    :cond_1
    const/4 p0, 0x0

    sput p0, Lcom/baidu/trace/aw;->f:I

    return-void
.end method

.method private a(Ljava/util/Deque;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lcom/baidu/trace/ar$a;",
            ">;)V"
        }
    .end annotation

    sget-byte v0, Lcom/baidu/trace/aw;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-byte v0, Lcom/baidu/trace/z;->r:B

    shl-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    sget-byte v0, Lcom/baidu/trace/z;->r:B

    shl-int/lit8 v0, v0, 0x5

    :goto_0
    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result v1

    :cond_1
    :goto_1
    sget v2, Lcom/baidu/trace/aw;->f:I

    if-ge v2, v0, :cond_4

    if-lez v1, :cond_4

    sget-object v2, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/trace/ar$a;

    add-int/lit8 v1, v1, -0x1

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/baidu/trace/ar$a;->b:[B

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    sget v3, Lcom/baidu/trace/aw;->f:I

    sub-int v3, v0, v3

    iget-object v4, v2, Lcom/baidu/trace/ar$a;->b:[B

    array-length v4, v4

    if-lt v3, v4, :cond_3

    sget-object v3, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    sget v3, Lcom/baidu/trace/aw;->f:I

    iget-object v2, v2, Lcom/baidu/trace/ar$a;->b:[B

    array-length v2, v2

    add-int/2addr v3, v2

    sput v3, Lcom/baidu/trace/aw;->f:I

    goto :goto_1

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method protected static b()V
    .locals 1

    sget-object v0, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    :cond_0
    sget-object v0, Lcom/baidu/trace/aw;->a:Ljava/util/Deque;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/baidu/trace/aw;->a:Ljava/util/Deque;

    :cond_1
    return-void
.end method

.method public static b(I)V
    .locals 2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/baidu/trace/bd;->g:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/trace/bd;->d:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/baidu/trace/bd;->h:Z

    if-eqz v0, :cond_2

    :cond_1
    sget v0, Lcom/baidu/trace/aw;->c:I

    if-lez v0, :cond_2

    sget-object v0, Lcom/baidu/trace/aw;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/baidu/trace/aw;->g:Ljava/lang/String;

    sget v1, Lcom/baidu/trace/aw;->c:I

    invoke-static {v0, v1}, Lcom/baidu/trace/am;->a(Ljava/lang/String;I)V

    :cond_2
    invoke-static {p0}, Lcom/baidu/trace/bd;->a(I)V

    return-void
.end method

.method public static c()V
    .locals 2

    :goto_0
    sget-object v0, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/ar$a;

    sget-object v1, Lcom/baidu/trace/aw;->a:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/baidu/trace/aw;->f:I

    return-void
.end method

.method protected static d()V
    .locals 2

    sget-object v0, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    sput-object v1, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    :cond_0
    sget-object v0, Lcom/baidu/trace/aw;->a:Ljava/util/Deque;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    sput-object v1, Lcom/baidu/trace/aw;->a:Ljava/util/Deque;

    :cond_1
    return-void
.end method

.method private static e()[B
    .locals 10

    sget v0, Lcom/baidu/trace/aw;->f:I

    new-array v1, v0, [B

    sget-object v2, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    sget-object v6, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/trace/ar$a;

    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/baidu/trace/ar$a;->b:[B

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    iget-object v7, v6, Lcom/baidu/trace/ar$a;->b:[B

    array-length v7, v7

    add-int/2addr v7, v5

    if-le v7, v0, :cond_1

    return-object v1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iget-object v8, v6, Lcom/baidu/trace/ar$a;->b:[B

    array-length v8, v8

    if-ge v7, v8, :cond_2

    add-int v8, v5, v7

    iget-object v9, v6, Lcom/baidu/trace/ar$a;->b:[B

    aget-byte v9, v9, v7

    aput-byte v9, v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, v6, Lcom/baidu/trace/ar$a;->b:[B

    array-length v7, v7

    add-int/2addr v5, v7

    sget-object v7, Lcom/baidu/trace/aw;->e:Ljava/util/Deque;

    invoke-interface {v7, v6}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/baidu/trace/aw;->b()V

    const/4 v0, 0x0

    sput v0, Lcom/baidu/trace/aw;->f:I

    sget-object v0, Lcom/baidu/trace/aw;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/baidu/trace/aw;->a:Ljava/util/Deque;

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/trace/aw;->a(Ljava/util/Deque;)V

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/baidu/trace/bd;->g:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/trace/bd;->d:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/baidu/trace/bd;->h:Z

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v1, v2, v0}, Lcom/baidu/trace/am;->a(Ljava/lang/String;ILjava/util/Deque;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/trace/aw;->g:Ljava/lang/String;

    sget v1, Lcom/baidu/trace/aw;->c:I

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    sput-object v0, Lcom/baidu/trace/aw;->g:Ljava/lang/String;

    sget-object v0, Lcom/baidu/trace/bd;->c:Ljava/util/Deque;

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v0

    sget-byte v1, Lcom/baidu/trace/aw;->d:B

    invoke-static {}, Lcom/baidu/trace/aw;->e()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/trace/TraceJniInterface;->setPackData(B[B)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lcom/baidu/trace/a/h;

    invoke-direct {v0}, Lcom/baidu/trace/a/h;-><init>()V

    :try_start_0
    const-string v1, "msg_flag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/baidu/trace/a/h;->a:I

    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    invoke-static {v0}, Lcom/baidu/trace/bc;->a(Lcom/baidu/trace/a/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    return-void
.end method
