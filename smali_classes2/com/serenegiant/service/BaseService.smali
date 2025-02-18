.class public abstract Lcom/serenegiant/service/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/service/BaseService$NotificationFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOTIFICATION_ID:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private volatile mDestroyed:Z

.field private mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mSync:Ljava/lang/Object;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/serenegiant/service/BaseService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/service/BaseService;->TAG:Ljava/lang/String;

    .line 56
    sget v0, Lcom/serenegiant/common/R$string;->service_name:I

    sput v0, Lcom/serenegiant/service/BaseService;->NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/service/BaseService;->mSync:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/serenegiant/service/BaseService;->mUIHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/serenegiant/service/BaseService$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/service/BaseService$1;-><init>(Lcom/serenegiant/service/BaseService;)V

    iput-object v0, p0, Lcom/serenegiant/service/BaseService;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/serenegiant/service/BaseService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected cancelNotification(I)V
    .locals 1

    const/4 v0, 0x0

    .line 577
    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/service/BaseService;->cancelNotification(ILjava/lang/String;)V

    return-void
.end method

.method protected cancelNotification(ILjava/lang/String;)V
    .locals 1

    const-string v0, "notification"

    .line 563
    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 564
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 565
    invoke-virtual {p0, p2}, Lcom/serenegiant/service/BaseService;->releaseNotificationChannel(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract contextIntent()Landroid/app/PendingIntent;
.end method

.method protected abstract createIntentFilter()Landroid/content/IntentFilter;
.end method

.method protected getAsyncHandler()Landroid/os/Handler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 728
    iget-boolean v0, p0, Lcom/serenegiant/service/BaseService;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 731
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 728
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isDestroyed()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/serenegiant/service/BaseService;->mDestroyed:Z

    return v0
.end method

.method public onCreate()V
    .locals 4

    .line 66
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    invoke-virtual {p0}, Lcom/serenegiant/service/BaseService;->getApplicationContext()Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/service/BaseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/service/BaseService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 71
    invoke-virtual {p0}, Lcom/serenegiant/service/BaseService;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-lez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/serenegiant/service/BaseService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v3, p0, Lcom/serenegiant/service/BaseService;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/serenegiant/utils/HandlerThreadHandler;->createHandler(Ljava/lang/String;)Lcom/serenegiant/utils/HandlerThreadHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    .line 78
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 4

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/serenegiant/service/BaseService;->mDestroyed:Z

    .line 85
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :catch_0
    :try_start_2
    iput-object v2, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v3, p0, Lcom/serenegiant/service/BaseService;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    :catch_1
    :try_start_4
    iput-object v2, p0, Lcom/serenegiant/service/BaseService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 104
    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_0
    move-exception v1

    .line 104
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method protected abstract onReceiveLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 676
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/service/BaseService;->mDestroyed:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 677
    invoke-virtual {p0, p1, v0, v1}, Lcom/serenegiant/service/BaseService;->queueEvent(Ljava/lang/Runnable;J)V

    return-void

    .line 676
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected queueEvent(Ljava/lang/Runnable;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 688
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/service/BaseService;->mDestroyed:Z

    if-nez v0, :cond_3

    .line 689
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 691
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    .line 693
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 695
    :cond_1
    iget-object p2, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 700
    :goto_0
    monitor-exit v0

    return-void

    .line 698
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "worker thread is not ready"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 700
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 688
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected releaseNotification()V
    .locals 7

    .line 521
    sget v1, Lcom/serenegiant/service/BaseService;->NOTIFICATION_ID:I

    sget v0, Lcom/serenegiant/common/R$string;->service_name:I

    .line 522
    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/serenegiant/common/R$drawable;->ic_notification:I

    sget v4, Lcom/serenegiant/common/R$drawable;->ic_notification:I

    sget v0, Lcom/serenegiant/common/R$string;->service_name:I

    .line 524
    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/serenegiant/common/R$string;->service_stop:I

    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 521
    invoke-virtual/range {v0 .. v6}, Lcom/serenegiant/service/BaseService;->releaseNotification(ILjava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected releaseNotification(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 548
    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService;->stopForeground(Z)V

    .line 549
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/service/BaseService;->cancelNotification(ILjava/lang/String;)V

    return-void
.end method

.method protected releaseNotification(ILjava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 537
    invoke-virtual/range {v0 .. v7}, Lcom/serenegiant/service/BaseService;->showNotification(ILjava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 538
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/service/BaseService;->releaseNotification(ILjava/lang/String;)V

    return-void
.end method

.method protected releaseNotificationChannel(Ljava/lang/String;)V
    .locals 1

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notification"

    .line 588
    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 590
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 592
    sget-object v0, Lcom/serenegiant/service/BaseService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected releaseNotificationGroup(Ljava/lang/String;)V
    .locals 1

    .line 604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notification"

    .line 606
    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 608
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 610
    sget-object v0, Lcom/serenegiant/service/BaseService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected removeEvent(Ljava/lang/Runnable;)V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 712
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected removeEventAll(Ljava/lang/Object;)V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 724
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected removeFromUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected removeFromUiThreadAll(Ljava/lang/Object;)V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 629
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/service/BaseService;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 631
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 629
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 644
    :cond_0
    iget-boolean v0, p0, Lcom/serenegiant/service/BaseService;->mDestroyed:Z

    if-nez v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 647
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 649
    :cond_1
    iget-object p2, p0, Lcom/serenegiant/service/BaseService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 644
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected sendLocalBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/serenegiant/service/BaseService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/serenegiant/service/BaseService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 142
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected showNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11

    .line 382
    sget v1, Lcom/serenegiant/service/BaseService;->NOTIFICATION_ID:I

    sget v0, Lcom/serenegiant/common/R$string;->service_name:I

    .line 383
    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/serenegiant/common/R$drawable;->ic_notification:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v5, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, p4

    .line 382
    invoke-virtual/range {v0 .. v10}, Lcom/serenegiant/service/BaseService;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/PendingIntent;)V

    return-void
.end method

.method protected showNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/serenegiant/service/BaseService$NotificationFactory;)V
    .locals 1

    const-string v0, "notification"

    .line 509
    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 510
    invoke-virtual {p4, p0, p3, p2}, Lcom/serenegiant/service/BaseService$NotificationFactory;->createNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;

    move-result-object p2

    .line 511
    invoke-virtual {p4}, Lcom/serenegiant/service/BaseService$NotificationFactory;->isForegroundService()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 512
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/service/BaseService;->startForeground(ILandroid/app/Notification;)V

    .line 514
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected showNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/PendingIntent;)V
    .locals 12

    .line 403
    sget v1, Lcom/serenegiant/service/BaseService;->NOTIFICATION_ID:I

    sget v0, Lcom/serenegiant/common/R$string;->service_name:I

    move-object v11, p0

    .line 404
    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/serenegiant/common/R$drawable;->ic_notification:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    .line 403
    invoke-virtual/range {v0 .. v10}, Lcom/serenegiant/service/BaseService;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/PendingIntent;)V

    return-void
.end method

.method protected showNotification(ILjava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    .line 426
    invoke-virtual/range {v0 .. v10}, Lcom/serenegiant/service/BaseService;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/PendingIntent;)V

    return-void
.end method

.method protected showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    .line 451
    invoke-virtual/range {v0 .. v10}, Lcom/serenegiant/service/BaseService;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/PendingIntent;)V

    return-void
.end method

.method protected showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/PendingIntent;)V
    .locals 12

    .line 480
    new-instance v11, Lcom/serenegiant/service/BaseService$2;

    const/4 v4, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    move-object v3, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/serenegiant/service/BaseService$2;-><init>(Lcom/serenegiant/service/BaseService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIZLandroid/app/PendingIntent;)V

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-virtual {p0, p1, v2, v3, v11}, Lcom/serenegiant/service/BaseService;->showNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/serenegiant/service/BaseService$NotificationFactory;)V

    return-void
.end method
