.class Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/ConnectivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkChangedReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mParent:Lcom/serenegiant/net/ConnectivityHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 393
    const-class v0, Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/ConnectivityHelper;)V
    .locals 0

    .line 397
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;->mParent:Lcom/serenegiant/net/ConnectivityHelper;

    return-void
.end method

.method private onReceiveGlobal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "connectivity"

    .line 418
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 421
    iget-object p2, p0, Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;->mParent:Lcom/serenegiant/net/ConnectivityHelper;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/serenegiant/net/ConnectivityHelper;->access$200(Lcom/serenegiant/net/ConnectivityHelper;Landroid/net/NetworkInfo;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 404
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 405
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/net/ConnectivityHelper$NetworkChangedReceiver;->onReceiveGlobal(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
