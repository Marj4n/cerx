.class final Lcom/serenegiant/net/NetworkChangedReceiver$1;
.super Ljava/lang/Object;
.source "NetworkChangedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/net/NetworkChangedReceiver;->registerLocal(Landroid/content/Context;Lcom/serenegiant/net/NetworkChangedReceiver$OnNetworkChangedListener;)Lcom/serenegiant/net/NetworkChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activeNetworkMask:I

.field final synthetic val$isConnected:I

.field final synthetic val$isConnectedOrConnecting:I

.field final synthetic val$receiver:Lcom/serenegiant/net/NetworkChangedReceiver;


# direct methods
.method constructor <init>(Lcom/serenegiant/net/NetworkChangedReceiver;III)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/serenegiant/net/NetworkChangedReceiver$1;->val$receiver:Lcom/serenegiant/net/NetworkChangedReceiver;

    iput p2, p0, Lcom/serenegiant/net/NetworkChangedReceiver$1;->val$isConnectedOrConnecting:I

    iput p3, p0, Lcom/serenegiant/net/NetworkChangedReceiver$1;->val$isConnected:I

    iput p4, p0, Lcom/serenegiant/net/NetworkChangedReceiver$1;->val$activeNetworkMask:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/serenegiant/net/NetworkChangedReceiver$1;->val$receiver:Lcom/serenegiant/net/NetworkChangedReceiver;

    iget v1, p0, Lcom/serenegiant/net/NetworkChangedReceiver$1;->val$isConnectedOrConnecting:I

    iget v2, p0, Lcom/serenegiant/net/NetworkChangedReceiver$1;->val$isConnected:I

    iget v3, p0, Lcom/serenegiant/net/NetworkChangedReceiver$1;->val$activeNetworkMask:I

    invoke-static {v0, v1, v2, v3}, Lcom/serenegiant/net/NetworkChangedReceiver;->access$000(Lcom/serenegiant/net/NetworkChangedReceiver;III)V

    return-void
.end method
