.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;
.super Ljava/lang/Object;
.source "CameraNewActivity.java"

# interfaces
.implements Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 5

    const-string v0, "1920*1080"

    .line 351
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$702(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;I)I

    .line 353
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->textSave(I)V

    .line 354
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->littleShow()V

    goto :goto_0

    :cond_0
    const-string v0, "1280*720"

    .line 355
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$702(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;I)I

    .line 357
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->textSave(I)V

    .line 358
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->littleShow()V

    goto :goto_0

    :cond_1
    const-string v0, "640*480"

    .line 359
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$702(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;I)I

    .line 361
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->textSave(I)V

    .line 362
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->littleShow()V

    :cond_2
    :goto_0
    const-string v0, "\\*"

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->selectedWidth:I

    .line 368
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->selectedHeight:I

    .line 369
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-virtual {v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/generalplus/GoPlusDrone/R$string;->haveto_switch:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
