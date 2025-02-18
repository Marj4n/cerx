.class Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;
.super Ljava/lang/Object;
.source "ThumbLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/util/ThumbLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCompleteRunnable"
.end annotation


# instance fields
.field private listenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    .line 224
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;->listenerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 230
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;->listenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v1, v0}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;->onComplete(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
