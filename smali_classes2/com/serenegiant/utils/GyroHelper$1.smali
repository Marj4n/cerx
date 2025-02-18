.class Lcom/serenegiant/utils/GyroHelper$1;
.super Ljava/lang/Object;
.source "GyroHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/utils/GyroHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TO_DEGREE:F = 57.29578f


# instance fields
.field private final mInclinationMatrix:[F

.field private final mRotateMatrix:[F

.field private final outR:[F

.field private final outR2:[F

.field final synthetic this$0:Lcom/serenegiant/utils/GyroHelper;


# direct methods
.method constructor <init>(Lcom/serenegiant/utils/GyroHelper;)V
    .locals 1

    .line 149
    iput-object p1, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 162
    iput-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->outR:[F

    new-array v0, p1, [F

    .line 163
    iput-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->outR2:[F

    new-array v0, p1, [F

    .line 189
    iput-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->mRotateMatrix:[F

    new-array p1, p1, [F

    .line 190
    iput-object p1, p0, Lcom/serenegiant/utils/GyroHelper$1;->mInclinationMatrix:[F

    return-void
.end method

.method private getOrientation([F[F)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v0}, Lcom/serenegiant/utils/GyroHelper;->access$000(Lcom/serenegiant/utils/GyroHelper;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/16 v2, 0x81

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/utils/GyroHelper$1;->outR:[F

    const/16 v0, 0x82

    invoke-static {p1, v0, v2, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->outR2:[F

    invoke-static {p1, v3, v2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 177
    iget-object p1, p0, Lcom/serenegiant/utils/GyroHelper$1;->outR2:[F

    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->outR:[F

    invoke-static {p1, v3, v2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->outR:[F

    invoke-static {p1, v3, v2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 185
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/utils/GyroHelper$1;->outR:[F

    invoke-static {p1, p2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    return-void

    .line 168
    :cond_3
    invoke-static {p1, p2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    return-void
.end method

.method private highPassFilter([F[FF)V
    .locals 4

    const/4 v0, 0x0

    .line 157
    aget v1, p1, v0

    mul-float v1, v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p3

    aget v3, p2, v0

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 158
    aget v1, p1, v0

    mul-float v1, v1, p3

    aget v3, p2, v0

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 159
    aget v1, p1, v0

    mul-float p3, p3, v1

    aget p2, p2, v0

    mul-float v2, v2, p2

    add-float/2addr p3, v2

    aput p3, p1, v0

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 199
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 200
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v1, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {p1}, Lcom/serenegiant/utils/GyroHelper;->access$100(Lcom/serenegiant/utils/GyroHelper;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v1}, Lcom/serenegiant/utils/GyroHelper;->access$300(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {p1}, Lcom/serenegiant/utils/GyroHelper;->access$100(Lcom/serenegiant/utils/GyroHelper;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 229
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v1}, Lcom/serenegiant/utils/GyroHelper;->access$600(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    monitor-exit p1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {p1}, Lcom/serenegiant/utils/GyroHelper;->access$100(Lcom/serenegiant/utils/GyroHelper;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 206
    :try_start_2
    iget-object v5, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v5}, Lcom/serenegiant/utils/GyroHelper;->access$200(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v5

    const v6, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v5, v0, v6}, Lcom/serenegiant/utils/GyroHelper$1;->highPassFilter([F[FF)V

    .line 207
    iget-object v5, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v5}, Lcom/serenegiant/utils/GyroHelper;->access$200(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v5

    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->mRotateMatrix:[F

    iget-object v2, p0, Lcom/serenegiant/utils/GyroHelper$1;->mInclinationMatrix:[F

    iget-object v5, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v5}, Lcom/serenegiant/utils/GyroHelper;->access$300(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v5

    iget-object v6, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v6}, Lcom/serenegiant/utils/GyroHelper;->access$200(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v6

    invoke-static {v0, v2, v5, v6}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 210
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->mRotateMatrix:[F

    iget-object v2, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v2}, Lcom/serenegiant/utils/GyroHelper;->access$400(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/serenegiant/utils/GyroHelper$1;->getOrientation([F[F)V

    .line 211
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v0}, Lcom/serenegiant/utils/GyroHelper;->access$400(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v0

    aget v2, v0, v3

    const v5, 0x42652ee1

    mul-float v2, v2, v5

    aput v2, v0, v3

    .line 212
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v0}, Lcom/serenegiant/utils/GyroHelper;->access$400(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v0

    aget v2, v0, v1

    mul-float v2, v2, v5

    aput v2, v0, v1

    .line 213
    iget-object v0, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v0}, Lcom/serenegiant/utils/GyroHelper;->access$400(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v0

    aget v1, v0, v4

    mul-float v1, v1, v5

    aput v1, v0, v4

    .line 214
    monitor-exit p1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 222
    :cond_3
    iget-object p1, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {p1}, Lcom/serenegiant/utils/GyroHelper;->access$100(Lcom/serenegiant/utils/GyroHelper;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v1}, Lcom/serenegiant/utils/GyroHelper;->access$500(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget-object v1, p0, Lcom/serenegiant/utils/GyroHelper$1;->this$0:Lcom/serenegiant/utils/GyroHelper;

    invoke-static {v1}, Lcom/serenegiant/utils/GyroHelper;->access$300(Lcom/serenegiant/utils/GyroHelper;)[F

    move-result-object v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    monitor-exit p1

    :goto_0
    return-void

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0
.end method
