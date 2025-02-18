.class Lcom/jieli/stream/dv/running2/util/json/JSonManager$1;
.super Ljava/lang/Object;
.source "JSonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/json/JSonManager;->parseJSonData(Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/json/JSonManager;

.field final synthetic val$listener:Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/json/JSonManager;Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager$1;->this$0:Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager$1;->val$listener:Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager$1;->this$0:Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager$1;->val$listener:Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->access$000(Lcom/jieli/stream/dv/running2/util/json/JSonManager;Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V

    return-void
.end method
