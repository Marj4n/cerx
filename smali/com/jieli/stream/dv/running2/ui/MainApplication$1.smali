.class Lcom/jieli/stream/dv/running2/ui/MainApplication$1;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/MainApplication;->switchWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/MainApplication;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/MainApplication;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/MainApplication$1;->this$0:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->access$000()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object v0

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->access$000()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->removeCurrentNetwork(Landroid/content/Context;)V

    return-void
.end method
