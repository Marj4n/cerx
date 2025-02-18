.class public interface abstract Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;
.super Ljava/lang/Object;
.source "UdpBeacon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/UdpBeacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UdpBeaconCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onReceiveBeacon(Ljava/util/UUID;Ljava/lang/String;I)V
.end method
