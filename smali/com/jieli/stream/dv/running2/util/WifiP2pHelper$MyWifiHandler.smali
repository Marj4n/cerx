.class Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;
.super Landroid/os/Handler;
.source "WifiP2pHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/os/Looper;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;->this$0:Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    .line 371
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/os/Looper;Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$1;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper$MyWifiHandler;-><init>(Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 376
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
