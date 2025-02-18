.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sendCmd([B)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

.field final synthetic val$aSend:[B


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;[B)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->val$aSend:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 864
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "Socket-sendCmd"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->val$aSend:[B

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 867
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 868
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->val$aSend:[B

    invoke-static {v0, v2, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->bytesToHex_HasSpace([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    new-instance v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10$1;

    invoke-direct {v3, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;)V

    invoke-virtual {v0, v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 875
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    const/4 v3, 0x1

    iput v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->SendRet:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u9001\u51fa\u9519:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->val$aSend:[B

    invoke-static {v4, v2, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->bytesToHex_HasSpace([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 881
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u8fde\u63a5Socket:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->val$aSend:[B

    invoke-static {v3, v2, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->bytesToHex_HasSpace([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    const/4 v1, -0x1

    iput v1, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->SendRet:I

    :goto_0
    return-void
.end method
