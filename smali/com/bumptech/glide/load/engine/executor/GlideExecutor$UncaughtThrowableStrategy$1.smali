.class final enum Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$1;
.super Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;-><init>(Ljava/lang/String;ILcom/bumptech/glide/load/engine/executor/GlideExecutor$1;)V

    return-void
.end method


# virtual methods
.method protected handle(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    const-string v1, "GlideExecutor"

    .line 288
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Request threw uncaught throwable"

    .line 289
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
