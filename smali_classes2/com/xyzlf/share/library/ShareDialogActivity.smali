.class public Lcom/xyzlf/share/library/ShareDialogActivity;
.super Lcom/xyzlf/share/library/ShareBaseActivity;
.source "ShareDialogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyzlf/share/library/ShareDialogActivity$ViewHolder;,
        Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;
    }
.end annotation


# instance fields
.field protected channelEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xyzlf/share/library/bean/ChannelEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected data:Lcom/xyzlf/share/library/bean/ShareEntity;

.field protected sparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xyzlf/share/library/bean/ShareEntity;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/xyzlf/share/library/ShareBaseActivity;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method private initChannelData()V
    .locals 5

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->channelEntities:Ljava/util/List;

    .line 95
    invoke-static {p0}, Lcom/xyzlf/share/library/util/ChannelUtil;->isWeixinInstall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->channel:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/xyzlf/share/library/ShareDialogActivity;->isShowChannel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->channelEntities:Ljava/util/List;

    new-instance v2, Lcom/xyzlf/share/library/bean/ChannelEntity;

    sget v3, Lcom/xyzlf/com/share/library/R$drawable;->share_wechat:I

    sget v4, Lcom/xyzlf/com/share/library/R$string;->share_channel_weixin_friend:I

    invoke-virtual {p0, v4}, Lcom/xyzlf/share/library/ShareDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/xyzlf/share/library/bean/ChannelEntity;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    iget v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->channel:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/xyzlf/share/library/ShareDialogActivity;->isShowChannel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->channelEntities:Ljava/util/List;

    new-instance v2, Lcom/xyzlf/share/library/bean/ChannelEntity;

    sget v3, Lcom/xyzlf/com/share/library/R$drawable;->share_wxcircle:I

    sget v4, Lcom/xyzlf/com/share/library/R$string;->share_channel_weixin_circle:I

    invoke-virtual {p0, v4}, Lcom/xyzlf/share/library/ShareDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/xyzlf/share/library/bean/ChannelEntity;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 2

    .line 133
    new-instance v0, Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;-><init>(Lcom/xyzlf/share/library/ShareDialogActivity;Lcom/xyzlf/share/library/ShareDialogActivity$1;)V

    .line 134
    sget v1, Lcom/xyzlf/com/share/library/R$id;->share_grid:I

    invoke-virtual {p0, v1}, Lcom/xyzlf/share/library/ShareDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 135
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private isOutOfBounds(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 318
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 319
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 320
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 321
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    neg-int v2, v1

    if-lt v0, v2, :cond_1

    if-lt p2, v2, :cond_1

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    if-gt v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isShowChannel(I)Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->sparseArray:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method protected getShareData(I)Lcom/xyzlf/share/library/bean/ShareEntity;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    if-eqz v0, :cond_0

    return-object v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->sparseArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xyzlf/share/library/bean/ShareEntity;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected handleShare(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->shareBySystem()V

    .line 193
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->finish()V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->shareByEmail()V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->shareBySms()V

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->shareByQZone()V

    goto :goto_0

    .line 174
    :cond_4
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->shareByQQ()V

    goto :goto_0

    .line 188
    :cond_5
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->shareBySinaWeibo()V

    goto :goto_0

    .line 184
    :cond_6
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->shareByWeixinCircle()V

    goto :goto_0

    .line 181
    :cond_7
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->shareByWeixinFriend()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/xyzlf/share/library/ShareBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x4e90

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "extra_show_channel"

    const/4 p2, -0x1

    .line 144
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "extra_share_status"

    .line 145
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/xyzlf/share/library/ShareDialogActivity;->finishWithResult(II)V

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/xyzlf/share/library/ShareBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/xyzlf/com/share/library/R$layout;->share_activity_dialog:I

    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/ShareDialogActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_share_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :cond_2
    :goto_1
    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 68
    sget p1, Lcom/xyzlf/com/share/library/R$string;->share_empty_tip:I

    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/ShareDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->finish()V

    return-void

    .line 73
    :cond_3
    instance-of v1, p1, Lcom/xyzlf/share/library/bean/ShareEntity;

    if-eqz v1, :cond_4

    .line 74
    check-cast p1, Lcom/xyzlf/share/library/bean/ShareEntity;

    iput-object p1, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    goto :goto_2

    .line 75
    :cond_4
    instance-of v1, p1, Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    .line 76
    check-cast p1, Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->sparseArray:Landroid/util/SparseArray;

    .line 78
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->sparseArray:Landroid/util/SparseArray;

    if-nez p1, :cond_6

    .line 79
    sget p1, Lcom/xyzlf/com/share/library/R$string;->share_empty_tip:I

    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/ShareDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->finish()V

    return-void

    .line 84
    :cond_6
    invoke-direct {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->initChannelData()V

    .line 85
    iget-object p1, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->channelEntities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 86
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->finish()V

    return-void

    .line 89
    :cond_7
    invoke-direct {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->initView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xyzlf/share/library/bean/ChannelEntity;

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object p2, p0, Lcom/xyzlf/share/library/ShareDialogActivity;->tag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "OnItemClick="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", channel="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ChannelEntity;->getchannel()I

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.jieli.dv.running2_share_channel"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ChannelEntity;->getchannel()I

    move-result p3

    const-string p4, "share_channel"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, p2}, Lcom/xyzlf/share/library/ShareDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ChannelEntity;->getchannel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/ShareDialogActivity;->handleShare(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p0, p1}, Lcom/xyzlf/share/library/ShareDialogActivity;->isOutOfBounds(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/xyzlf/share/library/ShareDialogActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 314
    :cond_0
    invoke-super {p0, p1}, Lcom/xyzlf/share/library/ShareBaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected shareByEmail()V
    .locals 3

    const/16 v0, 0x40

    .line 245
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getShareData(I)Lcom/xyzlf/share/library/bean/ShareEntity;

    move-result-object v1

    const/16 v2, 0x4e90

    invoke-static {p0, v0, v1, v2}, Lcom/xyzlf/share/library/util/ShareUtil;->startShare(Landroid/app/Activity;ILcom/xyzlf/share/library/bean/ShareEntity;I)V

    return-void
.end method

.method protected shareByQQ()V
    .locals 3

    const/16 v0, 0x8

    .line 209
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getShareData(I)Lcom/xyzlf/share/library/bean/ShareEntity;

    move-result-object v1

    const/16 v2, 0x4e90

    invoke-static {p0, v0, v1, v2}, Lcom/xyzlf/share/library/util/ShareUtil;->startShare(Landroid/app/Activity;ILcom/xyzlf/share/library/bean/ShareEntity;I)V

    return-void
.end method

.method protected shareByQZone()V
    .locals 3

    const/16 v0, 0x10

    .line 215
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getShareData(I)Lcom/xyzlf/share/library/bean/ShareEntity;

    move-result-object v1

    const/16 v2, 0x4e90

    invoke-static {p0, v0, v1, v2}, Lcom/xyzlf/share/library/util/ShareUtil;->startShare(Landroid/app/Activity;ILcom/xyzlf/share/library/bean/ShareEntity;I)V

    return-void
.end method

.method protected shareBySinaWeibo()V
    .locals 3

    const/4 v0, 0x4

    .line 251
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getShareData(I)Lcom/xyzlf/share/library/bean/ShareEntity;

    move-result-object v1

    const/16 v2, 0x4e90

    invoke-static {p0, v0, v1, v2}, Lcom/xyzlf/share/library/util/ShareUtil;->startShare(Landroid/app/Activity;ILcom/xyzlf/share/library/bean/ShareEntity;I)V

    return-void
.end method

.method protected shareBySms()V
    .locals 3

    const/16 v0, 0x20

    .line 239
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getShareData(I)Lcom/xyzlf/share/library/bean/ShareEntity;

    move-result-object v1

    const/16 v2, 0x4e90

    invoke-static {p0, v0, v1, v2}, Lcom/xyzlf/share/library/util/ShareUtil;->startShare(Landroid/app/Activity;ILcom/xyzlf/share/library/bean/ShareEntity;I)V

    return-void
.end method

.method protected shareBySystem()V
    .locals 3

    const/16 v0, 0x400

    .line 233
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getShareData(I)Lcom/xyzlf/share/library/bean/ShareEntity;

    move-result-object v1

    const/16 v2, 0x4e90

    invoke-static {p0, v0, v1, v2}, Lcom/xyzlf/share/library/util/ShareUtil;->startShare(Landroid/app/Activity;ILcom/xyzlf/share/library/bean/ShareEntity;I)V

    return-void
.end method

.method protected shareByWeixinCircle()V
    .locals 3

    const/4 v0, 0x2

    .line 227
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getShareData(I)Lcom/xyzlf/share/library/bean/ShareEntity;

    move-result-object v1

    const/16 v2, 0x4e90

    invoke-static {p0, v0, v1, v2}, Lcom/xyzlf/share/library/util/ShareUtil;->startShare(Landroid/app/Activity;ILcom/xyzlf/share/library/bean/ShareEntity;I)V

    return-void
.end method

.method protected shareByWeixinFriend()V
    .locals 3

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getShareData(I)Lcom/xyzlf/share/library/bean/ShareEntity;

    move-result-object v1

    const/16 v2, 0x4e90

    invoke-static {p0, v0, v1, v2}, Lcom/xyzlf/share/library/util/ShareUtil;->startShare(Landroid/app/Activity;ILcom/xyzlf/share/library/bean/ShareEntity;I)V

    return-void
.end method
