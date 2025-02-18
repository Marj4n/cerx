.class Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;
.super Ljava/lang/Object;
.source "UdpBeacon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/serenegiant/net/UdpBeacon$ReceiverTask;

.field final synthetic val$remoteAddr:Ljava/lang/String;

.field final synthetic val$remotePort:I

.field final synthetic val$remote_beacon:Lcom/serenegiant/net/UdpBeacon$Beacon;


# direct methods
.method constructor <init>(Lcom/serenegiant/net/UdpBeacon$ReceiverTask;Lcom/serenegiant/net/UdpBeacon$Beacon;Ljava/lang/String;I)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;->this$1:Lcom/serenegiant/net/UdpBeacon$ReceiverTask;

    iput-object p2, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;->val$remote_beacon:Lcom/serenegiant/net/UdpBeacon$Beacon;

    iput-object p3, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;->val$remoteAddr:Ljava/lang/String;

    iput p4, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;->val$remotePort:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 583
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;->this$1:Lcom/serenegiant/net/UdpBeacon$ReceiverTask;

    iget-object v0, v0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v0}, Lcom/serenegiant/net/UdpBeacon;->access$000(Lcom/serenegiant/net/UdpBeacon;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;

    .line 585
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;->val$remote_beacon:Lcom/serenegiant/net/UdpBeacon$Beacon;

    invoke-static {v2}, Lcom/serenegiant/net/UdpBeacon$Beacon;->access$1200(Lcom/serenegiant/net/UdpBeacon$Beacon;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;->val$remoteAddr:Ljava/lang/String;

    iget v4, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;->val$remotePort:I

    invoke-interface {v1, v2, v3, v4}, Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;->onReceiveBeacon(Ljava/util/UUID;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 587
    iget-object v3, p0, Lcom/serenegiant/net/UdpBeacon$ReceiverTask$1;->this$1:Lcom/serenegiant/net/UdpBeacon$ReceiverTask;

    iget-object v3, v3, Lcom/serenegiant/net/UdpBeacon$ReceiverTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v3}, Lcom/serenegiant/net/UdpBeacon;->access$000(Lcom/serenegiant/net/UdpBeacon;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    const-string v1, "UdpBeacon"

    .line 588
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method
