.class public final Lcom/baidu/trace/az;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static a(Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/baidu/trace/bb;

    invoke-direct {v0, p0}, Lcom/baidu/trace/bb;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/baidu/trace/bb;->start()V

    return-void
.end method

.method public static a(Lcom/baidu/trace/c/f$a;)V
    .locals 1

    new-instance v0, Lcom/baidu/trace/ba;

    invoke-direct {v0, p0}, Lcom/baidu/trace/ba;-><init>(Lcom/baidu/trace/c/f$a;)V

    invoke-virtual {v0}, Lcom/baidu/trace/ba;->start()V

    return-void
.end method
