.class public Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;
.super Ljava/lang/Object;
.source "VideoProgressToast.java"


# static fields
.field public static final FAST_BACKWARD:I = 0x102b

.field public static final FAST_FORWARD:I = 0x102a


# instance fields
.field private ivFastBackward:Landroid/widget/ImageView;

.field private ivFastForward:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private toast:Landroid/widget/Toast;

.field private tvText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public show(ILjava/lang/String;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->toast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->toast:Landroid/widget/Toast;

    .line 39
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/jieli/stream/dv/running2/R$layout;->view_video_progress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    sget v2, Lcom/jieli/stream/dv/running2/R$id;->view_video_fast_forward:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->ivFastForward:Landroid/widget/ImageView;

    .line 41
    sget v2, Lcom/jieli/stream/dv/running2/R$id;->view_video_tv:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->tvText:Landroid/widget/TextView;

    .line 42
    sget v2, Lcom/jieli/stream/dv/running2/R$id;->view_video_fast_backward:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->ivFastBackward:Landroid/widget/ImageView;

    .line 43
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->toast:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 45
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    :cond_0
    const/16 v0, 0x102a

    const/16 v2, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x102b

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->ivFastForward:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->ivFastBackward:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->tvText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->mContext:Landroid/content/Context;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->fast_backward:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->ivFastBackward:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->ivFastForward:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->tvText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->mContext:Landroid/content/Context;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->fast_forward:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 60
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->tvText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
