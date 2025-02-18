.class public Lcom/serenegiant/utils/GyroHelper;
.super Ljava/lang/Object;
.source "GyroHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SENSOR_TYPES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccelValues:[F

.field private final mAzimuthValues:[F

.field private final mGravityValues:[F

.field private final mGyroValues:[F

.field private final mMagnetValues:[F

.field private mRegistered:Z

.field private mRotation:I

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorSync:Ljava/lang/Object;

.field private final mSync:Ljava/lang/Object;

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/serenegiant/utils/GyroHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/utils/GyroHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 38
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/utils/GyroHelper;->SENSOR_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x9
        0x1
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mSync:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorSync:Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 51
    iput-object v1, p0, Lcom/serenegiant/utils/GyroHelper;->mMagnetValues:[F

    new-array v1, v0, [F

    .line 52
    iput-object v1, p0, Lcom/serenegiant/utils/GyroHelper;->mGravityValues:[F

    new-array v1, v0, [F

    .line 53
    iput-object v1, p0, Lcom/serenegiant/utils/GyroHelper;->mAzimuthValues:[F

    new-array v1, v0, [F

    .line 54
    iput-object v1, p0, Lcom/serenegiant/utils/GyroHelper;->mAccelValues:[F

    new-array v0, v0, [F

    .line 55
    iput-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mGyroValues:[F

    .line 149
    new-instance v0, Lcom/serenegiant/utils/GyroHelper$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/utils/GyroHelper$1;-><init>(Lcom/serenegiant/utils/GyroHelper;)V

    iput-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 59
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "sensor"

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lcom/serenegiant/utils/GyroHelper;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/serenegiant/utils/GyroHelper;->mRotation:I

    return p0
.end method

.method static synthetic access$100(Lcom/serenegiant/utils/GyroHelper;)Ljava/lang/Object;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/serenegiant/utils/GyroHelper;)[F
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/serenegiant/utils/GyroHelper;->mMagnetValues:[F

    return-object p0
.end method

.method static synthetic access$300(Lcom/serenegiant/utils/GyroHelper;)[F
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/serenegiant/utils/GyroHelper;->mGravityValues:[F

    return-object p0
.end method

.method static synthetic access$400(Lcom/serenegiant/utils/GyroHelper;)[F
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/serenegiant/utils/GyroHelper;->mAzimuthValues:[F

    return-object p0
.end method

.method static synthetic access$500(Lcom/serenegiant/utils/GyroHelper;)[F
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/serenegiant/utils/GyroHelper;->mAccelValues:[F

    return-object p0
.end method

.method static synthetic access$600(Lcom/serenegiant/utils/GyroHelper;)[F
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/serenegiant/utils/GyroHelper;->mGyroValues:[F

    return-object p0
.end method


# virtual methods
.method public getAzimuth()F
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mAzimuthValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getPan()F
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mAzimuthValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getTilt()F
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mAzimuthValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public release()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 66
    :try_start_0
    iput-object v1, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setScreenRotation(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/serenegiant/utils/GyroHelper;->mRotation:I

    return-void
.end method

.method public start()V
    .locals 11

    .line 74
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/utils/GyroHelper;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 76
    iget-object v2, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/serenegiant/utils/GyroHelper;->mMagnetValues:[F

    iget-object v4, p0, Lcom/serenegiant/utils/GyroHelper;->mGravityValues:[F

    iget-object v5, p0, Lcom/serenegiant/utils/GyroHelper;->mAzimuthValues:[F

    const/4 v6, 0x0

    aput v6, v5, v2

    aput v6, v4, v2

    aput v6, v3, v2

    .line 82
    iget-object v3, p0, Lcom/serenegiant/utils/GyroHelper;->mAccelValues:[F

    iget-object v4, p0, Lcom/serenegiant/utils/GyroHelper;->mGyroValues:[F

    aput v6, v4, v2

    aput v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 86
    iput-boolean v2, p0, Lcom/serenegiant/utils/GyroHelper;->mRegistered:Z

    .line 87
    sget-object v3, Lcom/serenegiant/utils/GyroHelper;->SENSOR_TYPES:[I

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget v7, v3, v5

    .line 88
    iget-object v8, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v8, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 89
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    const/16 v9, 0x9

    if-ne v7, v9, :cond_1

    .line 91
    sget-object v6, Lcom/serenegiant/utils/GyroHelper;->TAG:Ljava/lang/String;

    const-string v9, "hasGravity"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :cond_1
    if-eqz v6, :cond_2

    if-eq v7, v2, :cond_4

    .line 95
    :cond_2
    iget-object v7, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v9, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    invoke-virtual {v7, v9, v8, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_2

    .line 99
    :cond_3
    sget-object v8, Lcom/serenegiant/utils/GyroHelper;->TAG:Ljava/lang/String;

    const-string v9, "no sensor for sensor type %d"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 102
    :cond_5
    monitor-exit v0

    return-void

    .line 77
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already released"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/utils/GyroHelper;->mRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/serenegiant/utils/GyroHelper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    const/4 v1, 0x0

    .line 117
    :try_start_2
    iput-boolean v1, p0, Lcom/serenegiant/utils/GyroHelper;->mRegistered:Z

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
