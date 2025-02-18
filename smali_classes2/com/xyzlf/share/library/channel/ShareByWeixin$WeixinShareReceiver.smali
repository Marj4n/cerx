.class Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShareByWeixin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyzlf/share/library/channel/ShareByWeixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeixinShareReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;


# direct methods
.method private constructor <init>(Lcom/xyzlf/share/library/channel/ShareByWeixin;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyzlf/share/library/channel/ShareByWeixin;Lcom/xyzlf/share/library/channel/ShareByWeixin$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;-><init>(Lcom/xyzlf/share/library/channel/ShareByWeixin;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "weixin_result"

    .line 216
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x2

    .line 217
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ne p2, v0, :cond_2

    .line 221
    iget-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {p2}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$300(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Lcom/xyzlf/share/library/interfaces/OnShareListener;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 222
    iget-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {p2}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$300(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Lcom/xyzlf/share/library/interfaces/OnShareListener;

    move-result-object p2

    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {v1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$600(Lcom/xyzlf/share/library/channel/ShareByWeixin;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    .line 224
    :cond_1
    sget p2, Lcom/xyzlf/com/share/library/R$string;->share_success:I

    invoke-static {p1, p2, v0}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 227
    :cond_2
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$300(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Lcom/xyzlf/share/library/interfaces/OnShareListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 228
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$300(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Lcom/xyzlf/share/library/interfaces/OnShareListener;

    move-result-object p1

    iget-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;->this$0:Lcom/xyzlf/share/library/channel/ShareByWeixin;

    invoke-static {p2}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->access$600(Lcom/xyzlf/share/library/channel/ShareByWeixin;)I

    move-result p2

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    :cond_3
    :goto_1
    return-void
.end method
