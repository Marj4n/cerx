.class Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;
.super Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;
.source "MediaEffectDilation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediaeffect/MediaEffectDilation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaEffectDilationDrawer"
.end annotation


# instance fields
.field private mTexHeight:F

.field private final mTexOffset:[F

.field private mTexWidth:F

.field private final muTexOffsetLoc:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 41
    invoke-direct {p0, v0, v1, p1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x52

    new-array p1, p1, [F

    .line 37
    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    .line 42
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->getProgram()I

    move-result p1

    const-string v0, "uTexOffset"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->muTexOffsetLoc:I

    .line 43
    invoke-static {p1, v0}, Lcom/serenegiant/glutils/GLHelper;->checkLocation(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected preDraw([I[FI)V
    .locals 1

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;->preDraw([I[FI)V

    .line 52
    iget p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->muTexOffsetLoc:I

    if-ltz p1, :cond_0

    const/16 p2, 0x29

    .line 53
    iget-object p3, p0, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    :cond_0
    return-void
.end method

.method public setTexSize(II)V
    .locals 19

    move-object/from16 v1, p0

    .line 61
    iget-object v2, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mSync:Ljava/lang/Object;

    monitor-enter v2

    move/from16 v0, p2

    int-to-float v0, v0

    .line 62
    :try_start_0
    iput v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexHeight:F

    move/from16 v3, p1

    int-to-float v3, v3

    .line 63
    iput v3, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexWidth:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    div-float/2addr v4, v0

    .line 68
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/4 v5, 0x1

    aput v6, v0, v5

    .line 70
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/4 v5, 0x2

    aput v6, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/4 v5, 0x3

    neg-float v7, v4

    aput v7, v0, v5

    .line 71
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/4 v5, 0x4

    aput v6, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/4 v5, 0x5

    aput v4, v0, v5

    .line 72
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/4 v5, 0x6

    neg-float v8, v3

    aput v8, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/4 v5, 0x7

    aput v6, v0, v5

    .line 73
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x8

    aput v3, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x9

    aput v6, v0, v5

    .line 75
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0xa

    aput v6, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0xb

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, v7, v9

    aput v10, v0, v5

    .line 76
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0xc

    aput v6, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0xd

    mul-float v11, v4, v9

    aput v11, v0, v5

    .line 77
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0xe

    mul-float v12, v8, v9

    aput v12, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0xf

    aput v6, v0, v5

    .line 78
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x10

    mul-float v9, v9, v3

    aput v9, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x11

    aput v6, v0, v5

    .line 79
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x12

    aput v8, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x13

    aput v7, v0, v5

    .line 80
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x14

    aput v8, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x15

    aput v4, v0, v5

    .line 81
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x16

    aput v3, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x17

    aput v7, v0, v5

    .line 82
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x18

    aput v3, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x19

    aput v4, v0, v5

    .line 84
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x1a

    aput v6, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x1b

    const/high16 v13, 0x40400000    # 3.0f

    mul-float v14, v7, v13

    aput v14, v0, v5

    .line 85
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x1c

    aput v6, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x1d

    mul-float v15, v4, v13

    aput v15, v0, v5

    .line 86
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x1e

    mul-float v16, v8, v13

    aput v16, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x1f

    aput v6, v0, v5

    .line 87
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x20

    mul-float v13, v13, v3

    aput v13, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x21

    aput v6, v0, v5

    .line 88
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x22

    aput v12, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x23

    aput v7, v0, v5

    .line 89
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x24

    aput v12, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x25

    aput v4, v0, v5

    .line 90
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x26

    aput v9, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x27

    aput v7, v0, v5

    .line 91
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x28

    aput v9, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x29

    aput v4, v0, v5

    .line 92
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x2a

    aput v8, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x2b

    aput v10, v0, v5

    .line 93
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x2c

    aput v8, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x2d

    aput v11, v0, v5

    .line 94
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x2e

    aput v3, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x2f

    aput v10, v0, v5

    .line 95
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x30

    aput v3, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x31

    aput v11, v0, v5

    .line 97
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x32

    aput v6, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x33

    const/high16 v17, 0x40800000    # 4.0f

    mul-float v18, v7, v17

    aput v18, v0, v5

    .line 98
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x34

    aput v6, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x35

    mul-float v18, v4, v17

    aput v18, v0, v5

    .line 99
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x36

    mul-float v18, v8, v17

    aput v18, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x37

    aput v6, v0, v5

    .line 100
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x38

    mul-float v17, v17, v3

    aput v17, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x39

    aput v6, v0, v5

    .line 101
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x3a

    aput v16, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x3b

    aput v7, v0, v5

    .line 102
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x3c

    aput v16, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x3d

    aput v4, v0, v5

    .line 103
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x3e

    aput v13, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x3f

    aput v7, v0, v5

    .line 104
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x40

    aput v13, v0, v5

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v5, 0x41

    aput v4, v0, v5

    .line 105
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x42

    aput v12, v0, v4

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x43

    aput v10, v0, v4

    .line 106
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x44

    aput v12, v0, v4

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x45

    aput v11, v0, v4

    .line 107
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x46

    aput v9, v0, v4

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x47

    aput v10, v0, v4

    .line 108
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x48

    aput v9, v0, v4

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x49

    aput v11, v0, v4

    .line 109
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x4a

    aput v8, v0, v4

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x4b

    aput v14, v0, v4

    .line 110
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x4c

    aput v8, v0, v4

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x4d

    aput v15, v0, v4

    .line 111
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x4e

    aput v3, v0, v4

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x4f

    aput v14, v0, v4

    .line 112
    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v4, 0x50

    aput v3, v0, v4

    iget-object v0, v1, Lcom/serenegiant/mediaeffect/MediaEffectDilation$MediaEffectDilationDrawer;->mTexOffset:[F

    const/16 v3, 0x51

    aput v15, v0, v3

    .line 113
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
