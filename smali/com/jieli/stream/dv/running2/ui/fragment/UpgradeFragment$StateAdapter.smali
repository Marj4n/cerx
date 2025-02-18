.class Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;
.super Landroid/widget/BaseAdapter;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/UpgradeStep;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/content/Context;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 334
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/jieli/stream/dv/running2/R$layout;->item_upgrade:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 335
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;

    .line 339
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;

    if-eqz v1, :cond_6

    .line 341
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 357
    :cond_1
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/jieli/stream/dv/running2/R$color;->text_black:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 359
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    sget v4, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_complete:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 349
    :cond_2
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    sget v4, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_refresh_green:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/jieli/stream/dv/running2/R$color;->text_black:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/jieli/stream/dv/running2/R$anim;->rotate_forevery:I

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 352
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 353
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 354
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 345
    :cond_3
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    sget v4, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_gary_dot:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/jieli/stream/dv/running2/R$color;->text_gray:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    :goto_1
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->isNeedPb()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 364
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-ne p1, v3, :cond_4

    .line 366
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$302(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    goto :goto_2

    .line 368
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$402(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    goto :goto_2

    .line 371
    :cond_5
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_6
    :goto_2
    return-object p2
.end method

.method setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/UpgradeStep;",
            ">;)V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->dataList:Ljava/util/List;

    return-void
.end method
