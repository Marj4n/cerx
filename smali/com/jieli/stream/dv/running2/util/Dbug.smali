.class public Lcom/jieli/stream/dv/running2/util/Dbug;
.super Ljava/lang/Object;
.source "Dbug.java"


# static fields
.field private static IS_DEBUG:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-boolean v0, Lcom/jieli/stream/dv/running2/util/Dbug;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/jieli/stream/dv/running2/util/Dbug;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    sget-boolean v0, Lcom/jieli/stream/dv/running2/util/Dbug;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static openOrCloseDebug(Z)V
    .locals 0

    .line 11
    sput-boolean p0, Lcom/jieli/stream/dv/running2/util/Dbug;->IS_DEBUG:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    sget-boolean v0, Lcom/jieli/stream/dv/running2/util/Dbug;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/jieli/stream/dv/running2/util/Dbug;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
