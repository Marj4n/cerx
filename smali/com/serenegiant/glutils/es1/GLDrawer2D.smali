.class public Lcom/serenegiant/glutils/es1/GLDrawer2D;
.super Ljava/lang/Object;
.source "GLDrawer2D.java"

# interfaces
.implements Lcom/serenegiant/glutils/IDrawer2D;


# static fields
.field private static final FLOAT_SZ:I = 0x4

.field private static final TEXCOORD:[F

.field private static final VERTEX_NUM:I = 0x4

.field private static final VERTEX_SZ:I = 0x8

.field private static final VERTICES:[F


# instance fields
.field private final mMvpMatrix:[F

.field private final mTexTarget:I

.field private final pTexCoord:Ljava/nio/FloatBuffer;

.field private final pVertex:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 35
    fill-array-data v1, :array_0

    sput-object v1, Lcom/serenegiant/glutils/es1/GLDrawer2D;->VERTICES:[F

    new-array v0, v0, [F

    .line 36
    fill-array-data v0, :array_1

    sput-object v0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->TEXCOORD:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 41
    iput-object v0, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->mMvpMatrix:[F

    if-eqz p1, :cond_0

    const p1, 0x8d65

    goto :goto_0

    :cond_0
    const/16 p1, 0xde1

    .line 52
    :goto_0
    iput p1, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->mTexTarget:I

    const/16 p1, 0x20

    .line 53
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->pVertex:Ljava/nio/FloatBuffer;

    .line 55
    sget-object v1, Lcom/serenegiant/glutils/es1/GLDrawer2D;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 56
    iget-object v0, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->pVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 57
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 58
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->pTexCoord:Ljava/nio/FloatBuffer;

    .line 59
    sget-object v0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->TEXCOORD:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 60
    iget-object p1, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->pTexCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    iget-object p1, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->mMvpMatrix:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public draw(I[FI)V
    .locals 5

    const p2, 0x8074

    .line 104
    invoke-static {p2}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 105
    iget-object p3, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->pVertex:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget-object p3, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->pVertex:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v3, 0x8

    invoke-static {v1, v2, v3, p3}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const p3, 0x8078

    .line 108
    invoke-static {p3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 109
    iget-object v1, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->pTexCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    iget-object v1, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->pTexCoord:Ljava/nio/FloatBuffer;

    const/4 v4, 0x4

    invoke-static {v4, v2, v3, v1}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const v1, 0x84c0

    .line 111
    invoke-static {v1}, Landroid/opengl/GLES10;->glActiveTexture(I)V

    .line 112
    iget v1, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->mTexTarget:I

    invoke-static {v1, p1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    const/4 p1, 0x5

    .line 114
    invoke-static {p1, v0, v4}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    .line 116
    iget p1, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->mTexTarget:I

    invoke-static {p1, v0}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 117
    invoke-static {p3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    .line 119
    invoke-static {p2}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    return-void
.end method

.method public draw(Lcom/serenegiant/glutils/ITexture;)V
    .locals 2

    .line 124
    invoke-interface {p1}, Lcom/serenegiant/glutils/ITexture;->getTexture()I

    move-result v0

    invoke-interface {p1}, Lcom/serenegiant/glutils/ITexture;->getTexMatrix()[F

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/serenegiant/glutils/es1/GLDrawer2D;->draw(I[FI)V

    return-void
.end method

.method public draw(Lcom/serenegiant/glutils/TextureOffscreen;)V
    .locals 2

    .line 129
    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v0

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/serenegiant/glutils/es1/GLDrawer2D;->draw(I[FI)V

    return-void
.end method

.method public getMvpMatrix([FI)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->mMvpMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getMvpMatrix()[F
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->mMvpMatrix:[F

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setMvpMatrix([FI)Lcom/serenegiant/glutils/IDrawer2D;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/serenegiant/glutils/es1/GLDrawer2D;->mMvpMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method
