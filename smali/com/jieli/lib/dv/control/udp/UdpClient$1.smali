.class Lcom/jieli/lib/dv/control/udp/UdpClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/udp/UdpClient;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

.field final synthetic b:I

.field final synthetic c:Lcom/jieli/lib/dv/control/udp/UdpClient;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/udp/UdpClient;Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient$1;->c:Lcom/jieli/lib/dv/control/udp/UdpClient;

    iput-object p2, p0, Lcom/jieli/lib/dv/control/udp/UdpClient$1;->a:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    iput p3, p0, Lcom/jieli/lib/dv/control/udp/UdpClient$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClient$1;->a:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    if-eqz v0, :cond_0

    .line 206
    iget v1, p0, Lcom/jieli/lib/dv/control/udp/UdpClient$1;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jieli/lib/dv/control/connect/response/SendResponse;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
