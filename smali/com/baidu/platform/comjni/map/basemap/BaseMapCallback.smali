.class public Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/baidu/platform/comjni/map/basemap/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->a:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReqLayerData(Landroid/os/Bundle;JILandroid/os/Bundle;)I
    .locals 10

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v3, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/baidu/platform/comjni/map/basemap/b;

    if-eqz v4, :cond_0

    invoke-interface {v4, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/b;->a(J)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move-object v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/baidu/platform/comjni/map/basemap/b;->a(Landroid/os/Bundle;JILandroid/os/Bundle;)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static addLayerDataInterface(JLcom/baidu/platform/comjni/map/basemap/b;)V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public static removeLayerDataInterface(J)V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->remove(J)V

    return-void
.end method
