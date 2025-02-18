.class public interface abstract Lcom/serenegiant/net/AbstractChannelDataLink$Callback;
.super Ljava/lang/Object;
.source "AbstractChannelDataLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/AbstractChannelDataLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onConnect(Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;)V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onError(Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;Ljava/lang/Exception;)V
.end method

.method public abstract onReceive(Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;Ljava/lang/Object;)V
.end method
