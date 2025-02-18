.class public final Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;
.super Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;
.source "EffectRendererHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/EffectRendererHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MyRendererTask"
.end annotation


# instance fields
.field private mCurrentParams:[F

.field private mEffect:I

.field private final mParams:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field

.field private muParamsLoc:I


# direct methods
.method public constructor <init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V
    .locals 0

    .line 381
    invoke-direct/range {p0 .. p6}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V

    .line 365
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mParams:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/glutils/EffectRendererHolder;II)V
    .locals 0

    .line 373
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;II)V

    .line 365
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mParams:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;)I
    .locals 0

    .line 363
    iget p0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mEffect:I

    return p0
.end method

.method private handleSetParam(I[F)V
    .locals 1

    if-ltz p1, :cond_1

    .line 519
    iget v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mEffect:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mParams:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 520
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mCurrentParams:[F

    .line 521
    iget-object p1, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mParams:Landroid/util/SparseArray;

    iget v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mEffect:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 522
    invoke-direct {p0}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->updateParams()V

    :goto_1
    return-void
.end method

.method private updateParams()V
    .locals 4

    .line 532
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mCurrentParams:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x12

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 534
    iget v2, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->muParamsLoc:I

    if-ltz v2, :cond_1

    if-lez v0, :cond_1

    .line 535
    iget-object v2, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-virtual {v2}, Lcom/serenegiant/glutils/GLDrawer2D;->glUseProgram()V

    .line 536
    iget v2, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->muParamsLoc:I

    iget-object v3, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mCurrentParams:[F

    invoke-static {v2, v0, v3, v1}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    :cond_1
    return-void
.end method


# virtual methods
.method public changeEffect(I)V
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->checkFinished()V

    .line 442
    iget v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mEffect:I

    if-eq v0, p1, :cond_0

    const/16 v0, 0x64

    .line 443
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->offer(II)Z

    :cond_0
    return-void
.end method

.method protected handleChangeEffect(I)V
    .locals 2

    .line 460
    iput p1, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mEffect:I

    packed-switch p1, :pswitch_data_0

    .line 500
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->getParent()Lcom/serenegiant/glutils/AbstractRendererHolder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 496
    :pswitch_0
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 493
    :pswitch_1
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 490
    :pswitch_2
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 487
    :pswitch_3
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto :goto_1

    .line 484
    :pswitch_4
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto :goto_1

    .line 481
    :pswitch_5
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto :goto_1

    .line 478
    :pswitch_6
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto :goto_1

    .line 475
    :pswitch_7
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto :goto_1

    .line 472
    :pswitch_8
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto :goto_1

    .line 469
    :pswitch_9
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :pswitch_a
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :pswitch_b
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    const-string v1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;)V

    goto :goto_1

    .line 500
    :goto_0
    :try_start_1
    check-cast v0, Lcom/serenegiant/glutils/EffectRendererHolder;

    iget-object v1, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    .line 501
    invoke-virtual {v0, p1, v1}, Lcom/serenegiant/glutils/EffectRendererHolder;->handleDefaultEffect(ILcom/serenegiant/glutils/IDrawer2dES2;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 503
    iget-object v1, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-virtual {v1}, Lcom/serenegiant/glutils/GLDrawer2D;->resetShader()V

    .line 504
    invoke-static {}, Lcom/serenegiant/glutils/EffectRendererHolder;->access$1200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    const-string v1, "uParams"

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->glGetUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->muParamsLoc:I

    .line 509
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mParams:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mCurrentParams:[F

    .line 510
    invoke-direct {p0}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->updateParams()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected internalOnStart()V
    .locals 4

    .line 391
    invoke-super {p0}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->internalOnStart()V

    .line 392
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mParams:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 393
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mParams:Landroid/util/SparseArray;

    const/16 v1, 0xc

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mParams:Landroid/util/SparseArray;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mParams:Landroid/util/SparseArray;

    const/16 v1, 0x12

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 416
    iput v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->mEffect:I

    .line 417
    invoke-virtual {p0, v0}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->handleChangeEffect(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e2e147b    # 0.17f
        0x3f59999a    # 0.85f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e2e147b    # 0.17f
        0x3f59999a    # 0.85f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e428f5c    # 0.19f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3e19999a    # 0.15f
        0x3ecccccd    # 0.4f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    .line 434
    invoke-super {p0, p1, p2, p3, p4}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->processRequest(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 431
    :cond_0
    check-cast p4, [F

    check-cast p4, [F

    invoke-direct {p0, p2, p4}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->handleSetParam(I[F)V

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {p0, p2}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->handleChangeEffect(I)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public setParams(I[F)V
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->checkFinished()V

    const/16 v0, 0x65

    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->offer(IIILjava/lang/Object;)Z

    return-void
.end method
