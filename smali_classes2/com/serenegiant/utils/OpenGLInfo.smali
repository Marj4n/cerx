.class public Lcom/serenegiant/utils/OpenGLInfo;
.super Ljava/lang/Object;
.source "OpenGLInfo.java"


# static fields
.field private static final EGL_CLIENT_APIS:I = 0x308d


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final formatExtensions(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, " "

    .line 172
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 174
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static get()Lorg/json/JSONObject;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v1, "EGL_CLIENT_APIS"

    const-string v2, "EGL_VERSION"

    const-string v3, "EGL_VENDOR"

    const-string v4, "GL_EXTENSIONS"

    const-string v5, "GL_MAX_VIEWPORT_DIMS"

    const-string v6, "GL_MAX_TEXTURE_SIZE"

    const-string v7, "GL_MAX_RENDERBUFFER_SIZE"

    const-string v8, "GL_MAX_CUBE_MAP_TEXTURE_SIZE"

    const-string v9, "GL_MAX_FRAGMENT_UNIFORM_VECTORS"

    const-string v10, "GL_MAX_TEXTURE_IMAGE_UNITS"

    const-string v11, "GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS"

    const-string v12, "GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS"

    const-string v13, "GL_MAX_VARYING_VECTORS"

    const-string v14, "GL_MAX_VERTEX_UNIFORM_VECTORS"

    const-string v15, "GL_MAX_VERTEX_ATTRIBS"

    move-object/from16 v16, v1

    const-string v1, "GL_RENDERER"

    move-object/from16 v17, v2

    const-string v2, "GL_VERSION"

    move-object/from16 v18, v3

    const-string v3, "GL_VENDOR"

    move-object/from16 v19, v4

    .line 38
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x3

    move-object/from16 v20, v4

    const/4 v4, 0x0

    move-object/from16 v21, v5

    const/4 v5, 0x0

    .line 40
    :try_start_0
    invoke-static {v0, v4, v5, v5, v5}, Lcom/serenegiant/glutils/EGLBase;->createFrom(ILcom/serenegiant/glutils/EGLBase$IContext;ZIZ)Lcom/serenegiant/glutils/EGLBase;

    move-result-object v4

    const/4 v5, 0x1

    .line 41
    invoke-virtual {v4, v5, v5}, Lcom/serenegiant/glutils/EGLBase;->createOffscreen(II)Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    move-result-object v22

    .line 42
    invoke-interface/range {v22 .. v22}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_19

    const/4 v5, 0x2

    move-object/from16 v23, v4

    .line 44
    :try_start_1
    invoke-static {v5}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    .line 45
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v0, 0x1f00

    .line 47
    :try_start_2
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    const/16 v0, 0x1f02

    .line 52
    :try_start_4
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v0

    .line 54
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    const/16 v0, 0x1f01

    .line 57
    :try_start_6
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 59
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_2
    const v0, 0x8869

    .line 62
    :try_start_8
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v5, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catch_3
    move-exception v0

    .line 65
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_3
    const v0, 0x8dfb

    .line 68
    :try_start_a
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v5, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    :catch_4
    move-exception v0

    .line 71
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_4
    const v0, 0x8dfc

    .line 74
    :try_start_c
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v5, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5

    :catch_5
    move-exception v0

    .line 77
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_5
    const v0, 0x8b4d

    .line 80
    :try_start_e
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v5, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_6

    :catch_6
    move-exception v0

    .line 83
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :goto_6
    const v0, 0x8b4c

    .line 86
    :try_start_10
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_7

    :catch_7
    move-exception v0

    .line 89
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :goto_7
    const v0, 0x8872

    .line 92
    :try_start_12
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v5, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_8

    :catch_8
    move-exception v0

    .line 95
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :goto_8
    const v0, 0x8dfd

    .line 98
    :try_start_14
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_9

    :catch_9
    move-exception v0

    .line 101
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :goto_9
    const v0, 0x851c

    .line 104
    :try_start_16
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_a

    :catch_a
    move-exception v0

    .line 107
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :goto_a
    const v0, 0x84e8

    .line 110
    :try_start_18
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_b

    :catch_b
    move-exception v0

    .line 113
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :goto_b
    const/16 v0, 0xd33

    .line 116
    :try_start_1a
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    goto :goto_c

    :catch_c
    move-exception v0

    .line 119
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :goto_c
    const/16 v0, 0xd3a

    .line 122
    :try_start_1c
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 123
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    move-object/from16 v1, v21

    :try_start_1d
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    goto :goto_e

    :catch_d
    move-exception v0

    goto :goto_d

    :catch_e
    move-exception v0

    move-object/from16 v1, v21

    .line 125
    :goto_d
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :goto_e
    const/16 v0, 0x1f03

    .line 128
    :try_start_1f
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/serenegiant/utils/OpenGLInfo;->formatExtensions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_10
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    move-object/from16 v1, v19

    :try_start_20
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_f
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    goto :goto_10

    :catch_f
    move-exception v0

    goto :goto_f

    :catch_10
    move-exception v0

    move-object/from16 v1, v19

    .line 130
    :goto_f
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_10
    const-string v0, "GL_INFO"
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    move-object/from16 v1, v20

    .line 132
    :try_start_22
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    const/16 v0, 0x3053

    move-object/from16 v3, v23

    .line 135
    :try_start_23
    invoke-virtual {v3, v0}, Lcom/serenegiant/glutils/EGLBase;->queryString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_12
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    move-object/from16 v4, v18

    :try_start_24
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_11
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto :goto_12

    :catch_11
    move-exception v0

    goto :goto_11

    :catchall_0
    move-exception v0

    goto :goto_19

    :catch_12
    move-exception v0

    move-object/from16 v4, v18

    .line 137
    :goto_11
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    :goto_12
    const/16 v0, 0x3054

    .line 140
    :try_start_26
    invoke-virtual {v3, v0}, Lcom/serenegiant/glutils/EGLBase;->queryString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_14
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    move-object/from16 v4, v17

    :try_start_27
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_13
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto :goto_14

    :catch_13
    move-exception v0

    goto :goto_13

    :catch_14
    move-exception v0

    move-object/from16 v4, v17

    .line 142
    :goto_13
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    :goto_14
    const/16 v0, 0x308d

    .line 145
    :try_start_29
    invoke-virtual {v3, v0}, Lcom/serenegiant/glutils/EGLBase;->queryString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_16
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    move-object/from16 v4, v16

    :try_start_2a
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_15
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto :goto_16

    :catch_15
    move-exception v0

    goto :goto_15

    :catch_16
    move-exception v0

    move-object/from16 v4, v16

    .line 147
    :goto_15
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    :goto_16
    :try_start_2c
    const-string v0, "EGL_EXTENSIONS:"

    const/16 v4, 0x3055

    .line 150
    invoke-virtual {v3, v4}, Lcom/serenegiant/glutils/EGLBase;->queryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/serenegiant/utils/OpenGLInfo;->formatExtensions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_17
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    goto :goto_17

    :catch_17
    move-exception v0

    :try_start_2d
    const-string v4, "EGL_EXTENSIONS"

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_17
    const-string v0, "EGL_INFO"

    .line 154
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 156
    :try_start_2e
    invoke-interface/range {v22 .. v22}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 157
    invoke-virtual {v3}, Lcom/serenegiant/glutils/EGLBase;->release()V

    goto :goto_1b

    :catchall_1
    move-exception v0

    goto :goto_18

    :catchall_2
    move-exception v0

    move-object/from16 v1, v20

    :goto_18
    move-object/from16 v3, v23

    .line 156
    :goto_19
    invoke-interface/range {v22 .. v22}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 157
    invoke-virtual {v3}, Lcom/serenegiant/glutils/EGLBase;->release()V

    throw v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_18

    :catch_18
    move-exception v0

    goto :goto_1a

    :catch_19
    move-exception v0

    move-object/from16 v1, v20

    .line 160
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXCEPTION"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1b
    return-object v1
.end method
