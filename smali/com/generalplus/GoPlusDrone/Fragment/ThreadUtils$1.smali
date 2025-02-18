.class final Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pool:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$task:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$1;->val$pool:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$1;->val$task:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$1;->val$pool:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$1;->val$task:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
