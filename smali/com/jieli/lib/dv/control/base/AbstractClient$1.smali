.class final Lcom/jieli/lib/dv/control/base/AbstractClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/dv/control/player/JlLibLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/dv/control/base/AbstractClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 19
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
