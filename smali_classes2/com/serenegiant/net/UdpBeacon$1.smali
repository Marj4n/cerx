.class Lcom/serenegiant/net/UdpBeacon$1;
.super Ljava/lang/Object;
.source "UdpBeacon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/net/UdpBeacon;->callOnError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/net/UdpBeacon;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Exception;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon$1;->this$0:Lcom/serenegiant/net/UdpBeacon;

    iput-object p2, p0, Lcom/serenegiant/net/UdpBeacon$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon$1;->this$0:Lcom/serenegiant/net/UdpBeacon;

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

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/net/UdpBeacon$1;->val$e:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 425
    iget-object v3, p0, Lcom/serenegiant/net/UdpBeacon$1;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v3}, Lcom/serenegiant/net/UdpBeacon;->access$000(Lcom/serenegiant/net/UdpBeacon;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    const-string v1, "UdpBeacon"

    .line 426
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method
