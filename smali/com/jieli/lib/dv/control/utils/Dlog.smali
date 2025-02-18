.class public Lcom/jieli/lib/dv/control/utils/Dlog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-boolean v0, Lcom/jieli/lib/dv/control/utils/Dlog;->a:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    sget-boolean v0, Lcom/jieli/lib/dv/control/utils/Dlog;->a:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    sget-boolean v0, Lcom/jieli/lib/dv/control/utils/Dlog;->a:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/jieli/lib/dv/control/utils/Dlog;->a:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    sget-boolean v0, Lcom/jieli/lib/dv/control/utils/Dlog;->a:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
