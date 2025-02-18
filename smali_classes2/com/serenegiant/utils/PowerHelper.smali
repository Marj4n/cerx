.class public Lcom/serenegiant/utils/PowerHelper;
.super Ljava/lang/Object;
.source "PowerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wake(Landroid/app/Activity;ZJ)V
    .locals 4

    const-string p1, "PowerHelper"

    :try_start_0
    const-string v0, "power"

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "PowerHelper:disableLock"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    .line 48
    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string p2, "keyguard"

    .line 54
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    .line 55
    invoke-virtual {p2, p1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object p2

    .line 56
    invoke-virtual {p2}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p2, 0x80080

    invoke-virtual {p0, p2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 58
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 64
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
