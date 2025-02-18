.class Lrx/internal/util/IndexedRingBuffer$IndexSection;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/IndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexSection"
.end annotation


# instance fields
.field private final _next:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/util/IndexedRingBuffer$IndexSection;",
            ">;"
        }
    .end annotation
.end field

.field private final unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 524
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public getAndSet(II)I
    .locals 1

    .line 517
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndSet(II)I

    move-result p1

    return p1
.end method

.method getNext()Lrx/internal/util/IndexedRingBuffer$IndexSection;
    .locals 3

    .line 527
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    return-object v0

    .line 530
    :cond_0
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$IndexSection;-><init>()V

    .line 531
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 536
    :cond_1
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    return-object v0
.end method

.method public set(II)V
    .locals 1

    .line 521
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    return-void
.end method
