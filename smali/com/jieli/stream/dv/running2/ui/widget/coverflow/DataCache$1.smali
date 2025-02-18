.class Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache$1;
.super Ljava/util/LinkedHashMap;
.source "DataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7f3361c930652f53L


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;I)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TE;>;)Z"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 21
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
