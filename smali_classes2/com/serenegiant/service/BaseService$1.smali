.class Lcom/serenegiant/service/BaseService$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/service/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/service/BaseService;


# direct methods
.method constructor <init>(Lcom/serenegiant/service/BaseService;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/serenegiant/service/BaseService$1;->this$0:Lcom/serenegiant/service/BaseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/service/BaseService$1;->this$0:Lcom/serenegiant/service/BaseService;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/service/BaseService;->onReceiveLocalBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-static {}, Lcom/serenegiant/service/BaseService;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
