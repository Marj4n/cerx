.class Lcom/baidu/platform/comapi/map/G;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/F;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/F;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {v2}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v2

    iget-wide v2, v2, Lcom/baidu/platform/comapi/map/e;->h:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/l;

    const/4 v4, 0x0

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v3, :cond_5

    sget v4, Lcom/baidu/platform/comapi/map/F;->a:I

    sget v5, Lcom/baidu/platform/comapi/map/F;->b:I

    mul-int v4, v4, v5

    new-array v4, v4, [I

    sget v5, Lcom/baidu/platform/comapi/map/F;->a:I

    sget v6, Lcom/baidu/platform/comapi/map/F;->b:I

    mul-int v5, v5, v6

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {v6}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v6

    iget-object v6, v6, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v6, :cond_2

    return-void

    :cond_2
    iget-object v6, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {v6}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v6

    iget-object v6, v6, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    sget v7, Lcom/baidu/platform/comapi/map/F;->a:I

    sget v8, Lcom/baidu/platform/comapi/map/F;->b:I

    invoke-virtual {v6, v4, v7, v8}, Lcom/baidu/platform/comjni/map/basemap/a;->a([III)[I

    move-result-object v4

    const/4 v6, 0x0

    :goto_1
    sget v7, Lcom/baidu/platform/comapi/map/F;->b:I

    if-ge v6, v7, :cond_4

    const/4 v7, 0x0

    :goto_2
    sget v8, Lcom/baidu/platform/comapi/map/F;->a:I

    if-ge v7, v8, :cond_3

    sget v8, Lcom/baidu/platform/comapi/map/F;->a:I

    mul-int v8, v8, v6

    add-int/2addr v8, v7

    aget v8, v4, v8

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v8, 0x10

    const/high16 v11, 0xff0000

    and-int/2addr v10, v11

    const v11, -0xff0100

    and-int/2addr v8, v11

    or-int/2addr v8, v10

    or-int/2addr v8, v9

    sget v9, Lcom/baidu/platform/comapi/map/F;->b:I

    sub-int/2addr v9, v6

    sub-int/2addr v9, v3

    sget v10, Lcom/baidu/platform/comapi/map/F;->a:I

    mul-int v9, v9, v10

    add-int/2addr v9, v7

    aput v8, v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    sget v4, Lcom/baidu/platform/comapi/map/F;->a:I

    sget v6, Lcom/baidu/platform/comapi/map/F;->b:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_5
    invoke-interface {v1, v4}, Lcom/baidu/platform/comapi/map/l;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_8

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/e;->A()V

    goto :goto_5

    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_9

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/e;->K()V

    goto :goto_5

    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_a

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->b(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/m;

    move-result-object p1

    if-eqz p1, :cond_c

    :goto_3
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->b(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/m;->a()V

    goto :goto_5

    :cond_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_b

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->b(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/m;

    move-result-object p1

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/l;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/l;->c()V

    goto :goto_4

    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    iget-boolean p1, p1, Lcom/baidu/platform/comapi/map/e;->i:Z

    if-nez p1, :cond_d

    sget p1, Lcom/baidu/platform/comapi/map/F;->b:I

    if-lez p1, :cond_d

    sget p1, Lcom/baidu/platform/comapi/map/F;->a:I

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lcom/baidu/platform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    iput-boolean v3, p1, Lcom/baidu/platform/comapi/map/e;->i:Z

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/l;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/l;->b()V

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/l;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/l;->a()V

    goto :goto_7

    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_11

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    iget-boolean p1, p1, Lcom/baidu/platform/comapi/map/e;->l:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    iget-boolean p1, p1, Lcom/baidu/platform/comapi/map/e;->m:Z

    if-eqz p1, :cond_15

    :cond_10
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/l;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/map/l;->b(Lcom/baidu/platform/comapi/map/E;)V

    goto :goto_8

    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_12

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/l;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/l;->e()V

    goto :goto_9

    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/G;->a:Lcom/baidu/platform/comapi/map/F;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/F;->a(Lcom/baidu/platform/comapi/map/F;)Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/l;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_14

    invoke-interface {v1, v2}, Lcom/baidu/platform/comapi/map/l;->a(Z)V

    goto :goto_a

    :cond_14
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_13

    invoke-interface {v1, v3}, Lcom/baidu/platform/comapi/map/l;->a(Z)V

    goto :goto_a

    :cond_15
    :goto_b
    return-void
.end method
