.class public Lcom/gizthon/camera/dialog/ShareDialog;
.super Lcom/gizthon/camera/dialog/CenterDialog;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gizthon/camera/dialog/ShareDialog$OnClickListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/gizthon/camera/databinding/DialogShareBinding;

.field private onClickListener:Lcom/gizthon/camera/dialog/ShareDialog$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/gizthon/camera/dialog/CenterDialog;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/gizthon/camera/dialog/ShareDialog;)Lcom/gizthon/camera/dialog/ShareDialog$OnClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/gizthon/camera/dialog/ShareDialog;->onClickListener:Lcom/gizthon/camera/dialog/ShareDialog$OnClickListener;

    return-object p0
.end method

.method public static newInstance()Lcom/gizthon/camera/dialog/ShareDialog;
    .locals 2

    .line 52
    new-instance v0, Lcom/gizthon/camera/dialog/ShareDialog;

    invoke-direct {v0}, Lcom/gizthon/camera/dialog/ShareDialog;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    invoke-virtual {v0, v1}, Lcom/gizthon/camera/dialog/ShareDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0056

    return v0
.end method

.method public initView(Landroidx/databinding/ViewDataBinding;)V
    .locals 1

    .line 61
    check-cast p1, Lcom/gizthon/camera/databinding/DialogShareBinding;

    iput-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog;->binding:Lcom/gizthon/camera/databinding/DialogShareBinding;

    .line 62
    iget-object p1, p1, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v0, Lcom/gizthon/camera/dialog/ShareDialog$1;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/dialog/ShareDialog$1;-><init>(Lcom/gizthon/camera/dialog/ShareDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog;->binding:Lcom/gizthon/camera/databinding/DialogShareBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvWhatsapp:Landroid/widget/ImageView;

    new-instance v0, Lcom/gizthon/camera/dialog/ShareDialog$2;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/dialog/ShareDialog$2;-><init>(Lcom/gizthon/camera/dialog/ShareDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog;->binding:Lcom/gizthon/camera/databinding/DialogShareBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvQq:Landroid/widget/ImageView;

    new-instance v0, Lcom/gizthon/camera/dialog/ShareDialog$3;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/dialog/ShareDialog$3;-><init>(Lcom/gizthon/camera/dialog/ShareDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog;->binding:Lcom/gizthon/camera/databinding/DialogShareBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvFecebook:Landroid/widget/ImageView;

    new-instance v0, Lcom/gizthon/camera/dialog/ShareDialog$4;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/dialog/ShareDialog$4;-><init>(Lcom/gizthon/camera/dialog/ShareDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog;->binding:Lcom/gizthon/camera/databinding/DialogShareBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvTwitter:Landroid/widget/ImageView;

    new-instance v0, Lcom/gizthon/camera/dialog/ShareDialog$5;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/dialog/ShareDialog$5;-><init>(Lcom/gizthon/camera/dialog/ShareDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog;->binding:Lcom/gizthon/camera/databinding/DialogShareBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/DialogShareBinding;->tvYoutube:Landroid/widget/ImageView;

    new-instance v0, Lcom/gizthon/camera/dialog/ShareDialog$6;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/dialog/ShareDialog$6;-><init>(Lcom/gizthon/camera/dialog/ShareDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isBottom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCancele()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setOnClickListener(Lcom/gizthon/camera/dialog/ShareDialog$OnClickListener;)Lcom/gizthon/camera/dialog/ShareDialog;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/gizthon/camera/dialog/ShareDialog;->onClickListener:Lcom/gizthon/camera/dialog/ShareDialog$OnClickListener;

    return-object p0
.end method
