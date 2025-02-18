.class Lcom/serenegiant/net/WiFiP2pHelper$2;
.super Ljava/lang/Object;
.source "WiFiP2pHelper.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/net/WiFiP2pHelper;->connect(Landroid/net/wifi/p2p/WifiP2pConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/net/WiFiP2pHelper;


# direct methods
.method constructor <init>(Lcom/serenegiant/net/WiFiP2pHelper;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/serenegiant/net/WiFiP2pHelper$2;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/serenegiant/net/WiFiP2pHelper$2;->this$0:Lcom/serenegiant/net/WiFiP2pHelper;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to connect, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/serenegiant/net/WiFiP2pHelper;->callOnError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
