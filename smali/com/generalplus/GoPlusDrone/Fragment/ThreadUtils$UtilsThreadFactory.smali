.class final Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UtilsThreadFactory"
.end annotation


# static fields
.field private static final POOL_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final group:Ljava/lang/ThreadGroup;

.field private final namePrefix:Ljava/lang/String;

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1095
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;->POOL_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1100
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 1101
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;->group:Ljava/lang/ThreadGroup;

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-pool-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;->POOL_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1104
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-thread-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;->namePrefix:Ljava/lang/String;

    .line 1106
    iput p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;->priority:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 8

    .line 1111
    new-instance v7, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory$1;

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;->group:Ljava/lang/ThreadGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;->namePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;->getAndIncrement()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory$1;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 1121
    invoke-virtual {v7}, Ljava/lang/Thread;->isDaemon()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1122
    invoke-virtual {v7, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1124
    :cond_0
    iget p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;->priority:I

    invoke-virtual {v7, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v7
.end method
