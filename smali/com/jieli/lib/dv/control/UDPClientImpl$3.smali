.class Lcom/jieli/lib/dv/control/UDPClientImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/UDPClientImpl;->a(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field final synthetic b:Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

.field final synthetic c:Lcom/jieli/lib/dv/control/UDPClientImpl;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/UDPClientImpl;Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$3;->c:Lcom/jieli/lib/dv/control/UDPClientImpl;

    iput-object p2, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$3;->a:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    iput-object p3, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$3;->b:Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$3;->a:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/UDPClientImpl$3;->b:Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-interface {v0, v1}, Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;->onNotify(Ljava/lang/Object;)V

    return-void
.end method
