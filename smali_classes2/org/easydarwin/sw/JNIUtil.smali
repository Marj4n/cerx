.class public Lorg/easydarwin/sw/JNIUtil;
.super Ljava/lang/Object;
.source "JNIUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Utils"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs native callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method public static nV21To420SP([BII)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "NV21To420SP"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lorg/easydarwin/sw/JNIUtil;->callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static rotateMatrix([BIIII)V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v0, p1

    const-string p0, "RotateByteMatrix"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lorg/easydarwin/sw/JNIUtil;->callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static rotateShortMatrix([BIIII)V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v0, p1

    const-string p0, "RotateShortMatrix"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lorg/easydarwin/sw/JNIUtil;->callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static yV12ToYUV420P([BII)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "YV12ToYUV420P"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lorg/easydarwin/sw/JNIUtil;->callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
