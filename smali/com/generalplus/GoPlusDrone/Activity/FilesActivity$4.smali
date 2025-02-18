.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$4;
.super Landroid/os/Handler;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$4;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 770
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 771
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 775
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$4;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$3400(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
