.class public Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.source "QRCodeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HOT_SPOT:Ljava/lang/String; = "hot_spot"

.field private static final SAVE_INFO:Ljava/lang/String; = "save_to_dev"

.field private static final WIFI_NAME:Ljava/lang/String; = "wifi_name"


# instance fields
.field private mOnCompletedListener:Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mStartSearchButton:Landroid/widget/Button;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->tag:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;
    .locals 2

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "wifi_name"

    .line 40
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "hot_spot"

    .line 41
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "save_to_dev"

    .line 42
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    new-instance p0, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;-><init>()V

    .line 44
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x64

    .line 80
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x32

    .line 81
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 82
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 84
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 85
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 87
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 88
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    :goto_0
    const/16 v0, 0x11

    .line 90
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 91
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->mStartSearchButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->dismiss()V

    .line 98
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->mOnCompletedListener:Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 52
    :cond_0
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->dialog_qr_code:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->start_search_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->mStartSearchButton:Landroid/widget/Button;

    .line 54
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->qr_code_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v1, "wifi_name"

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hot_spot"

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "save_to_dev"

    .line 60
    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"SSID\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"PWD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"SAVE\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",\"AUTH\":\"JL_ONLY\"}"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 69
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/util/QRCode;->createQRCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-object p1
.end method

.method public setOnCompletedListener(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->mOnCompletedListener:Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;

    return-void
.end method
