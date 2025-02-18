.class Lcom/jieli/lib/dv/control/utils/ListenerHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/utils/ListenerHelper;->dispatchDeviceConnectState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

.field final synthetic b:I

.field final synthetic c:Lcom/jieli/lib/dv/control/utils/ListenerHelper;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/utils/ListenerHelper;Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper$1;->c:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    iput-object p2, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper$1;->a:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    iput p3, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper$1;->a:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    iget v1, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper$1;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;->onStateChanged(Ljava/lang/Object;)V

    return-void
.end method
