.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$5;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->ParseGPCamStatus(Landroid/os/Bundle;)V
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

    .line 1050
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1053
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$5;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Failed. No Storage."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1054
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
