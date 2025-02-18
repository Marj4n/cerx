.class public Lcom/serenegiant/glutils/EGLBase14$Config;
.super Lcom/serenegiant/glutils/EGLBase$IConfig;
.source "EGLBase14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/EGLBase14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final eglConfig:Landroid/opengl/EGLConfig;


# direct methods
.method private constructor <init>(Landroid/opengl/EGLConfig;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/serenegiant/glutils/EGLBase$IConfig;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase14$Config;->eglConfig:Landroid/opengl/EGLConfig;

    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/EGLConfig;Lcom/serenegiant/glutils/EGLBase14$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase14$Config;-><init>(Landroid/opengl/EGLConfig;)V

    return-void
.end method
