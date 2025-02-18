.class public abstract Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x2

.field private static final COMPLETING:I = 0x1

.field private static final EXCEPTIONAL:I = 0x3

.field private static final NEW:I


# instance fields
.field private isSchedule:Z

.field private volatile state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1023
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->state:I

    return-void
.end method

.method static synthetic access$002(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;Z)Z
    .locals 0

    .line 1013
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->isSchedule:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1078
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->state:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 1082
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->state:I

    .line 1083
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$4;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$4;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Deliver;->access$100(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract onCancel()V
.end method

.method public abstract onFail(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public run()V
    .locals 2

    .line 1039
    :try_start_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    .line 1040
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->state:I

    if-eqz v1, :cond_0

    return-void

    .line 1044
    :cond_0
    iget-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->isSchedule:Z

    if-eqz v1, :cond_1

    .line 1045
    new-instance v1, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$1;

    invoke-direct {v1, p0, v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$1;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Deliver;->access$100(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 1052
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->state:I

    .line 1053
    new-instance v1, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$2;

    invoke-direct {v1, p0, v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$2;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Deliver;->access$100(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1062
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->state:I

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x3

    .line 1066
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->state:I

    .line 1067
    new-instance v1, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$3;

    invoke-direct {v1, p0, v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$3;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Deliver;->access$100(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
