.class public Lcom/zh_jieli/juson/netcheck/OuterChecker;
.super Ljava/lang/Object;
.source "OuterChecker.java"


# static fields
.field public static final TIMEOUT_MS_DEFAULT:I = 0x1f4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "outerchecker"

    .line 14
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(I)Z
    .locals 2

    int-to-long v0, p0

    .line 25
    invoke-static {v0, v1}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->check(J)Z

    move-result p0

    return p0
.end method

.method public static check(Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap;",
            ">;I)Z"
        }
    .end annotation

    int-to-long v0, p1

    .line 30
    invoke-static {p0, v0, v1}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->check(Ljava/util/List;J)Z

    move-result p0

    return p0
.end method

.method private static native na_check(I)I
.end method

.method private static native na_checkWithAddresses(Ljava/util/List;I)I
.end method
