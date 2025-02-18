.class Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;
.super Ljava/lang/Thread;
.source "StaDeviceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchStaDevice"
.end annotation


# instance fields
.field private isSearching:Z

.field private mDiscovery:Lcom/jieli/lib/dv/control/mssdp/Discovery;

.field private mOnDiscoveryListener:Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;

.field private timeCount:I

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 334
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 332
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->timeCount:I

    .line 380
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->mOnDiscoveryListener:Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;

    .line 335
    invoke-static {}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->newInstance()Lcom/jieli/lib/dv/control/mssdp/Discovery;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->mDiscovery:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    .line 336
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->mOnDiscoveryListener:Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->registerOnDiscoveryListener(Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;)Z

    .line 337
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->weakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;)Z
    .locals 0

    .line 327
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->isSearching:Z

    return p0
.end method

.method static synthetic access$402(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;Z)Z
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->isSearching:Z

    return p1
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->stopSearch()V

    return-void
.end method

.method private stopSearch()V
    .locals 2

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->isSearching:Z

    .line 342
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->mDiscovery:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->mOnDiscoveryListener:Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->unregisterOnDiscoveryListener(Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;)Z

    .line 344
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->mDiscovery:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->release()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->mDiscovery:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 357
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 358
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchStaDevice thread start running..."

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->isSearching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->mDiscovery:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 361
    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->setFilter(Z)V

    .line 362
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->mDiscovery:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->doDiscovery()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 364
    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->isSearching:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x12c

    .line 365
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_1
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->isSearching:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 369
    :cond_2
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->timeCount:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->timeCount:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 375
    :cond_3
    :goto_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchStaDevice thread stop running..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->isSearching:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->isSearching:Z

    .line 377
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->timeCount:I

    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$SearchStaDevice;->isSearching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
