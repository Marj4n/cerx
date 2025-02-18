.class Lcom/jieli/lib/dv/control/UDPClientImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

.field final synthetic b:I

.field final synthetic c:Lcom/jieli/lib/dv/control/UDPClientImpl;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/connect/response/SendResponse;I)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$2;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    iput-object p2, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$2;->a:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    iput p3, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$2;->a:Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    if-eqz v0, :cond_0

    .line 268
    iget v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$2;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jieli/lib/dv/control/connect/response/SendResponse;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
