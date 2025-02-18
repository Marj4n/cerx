.class public final Lcom/serenegiant/utils/MessageTask$Request;
.super Ljava/lang/Object;
.source "MessageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/utils/MessageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Request"
.end annotation


# instance fields
.field arg1:I

.field arg2:I

.field obj:Ljava/lang/Object;

.field request:I

.field request_for_result:I

.field result:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/serenegiant/utils/MessageTask$Request;->request_for_result:I

    iput v0, p0, Lcom/serenegiant/utils/MessageTask$Request;->request:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/serenegiant/utils/MessageTask$Request;->request:I

    .line 53
    iput p2, p0, Lcom/serenegiant/utils/MessageTask$Request;->arg1:I

    .line 54
    iput p3, p0, Lcom/serenegiant/utils/MessageTask$Request;->arg2:I

    .line 55
    iput-object p4, p0, Lcom/serenegiant/utils/MessageTask$Request;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/serenegiant/utils/MessageTask$Request;->request_for_result:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/utils/MessageTask$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/serenegiant/utils/MessageTask$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 69
    instance-of v0, p1, Lcom/serenegiant/utils/MessageTask$Request;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/serenegiant/utils/MessageTask$Request;->request:I

    check-cast p1, Lcom/serenegiant/utils/MessageTask$Request;

    iget v1, p1, Lcom/serenegiant/utils/MessageTask$Request;->request:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/serenegiant/utils/MessageTask$Request;->request_for_result:I

    iget v1, p1, Lcom/serenegiant/utils/MessageTask$Request;->request_for_result:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/serenegiant/utils/MessageTask$Request;->arg1:I

    iget v1, p1, Lcom/serenegiant/utils/MessageTask$Request;->arg1:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/serenegiant/utils/MessageTask$Request;->arg2:I

    iget v1, p1, Lcom/serenegiant/utils/MessageTask$Request;->arg2:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/serenegiant/utils/MessageTask$Request;->obj:Ljava/lang/Object;

    iget-object p1, p1, Lcom/serenegiant/utils/MessageTask$Request;->obj:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 75
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iput-object p1, p0, Lcom/serenegiant/utils/MessageTask$Request;->result:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/serenegiant/utils/MessageTask$Request;->request_for_result:I

    iput p1, p0, Lcom/serenegiant/utils/MessageTask$Request;->request:I

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
