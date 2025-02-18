.class public Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "BrowseFileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;,
        Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;
    }
.end annotation


# static fields
.field private static final MSG_DISCONNECT_DEVICE:I = 0x100


# instance fields
.field private bottomBar:Lcom/roughike/bottombar/BottomBar;

.field private editLayout:Landroid/widget/LinearLayout;

.field private editModeLayout:Landroid/widget/RelativeLayout;

.field private indicatorViewPager:Lcom/shizhefei/view/indicator/IndicatorViewPager;

.field private isEditMode:Z

.field private isSelectAll:Z

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;

.field private mShareTipsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mediaTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

.field private normalModeLayout:Landroid/widget/RelativeLayout;

.field private tabNames:[Ljava/lang/String;

.field private tvAllSelect:Landroid/widget/TextView;

.field private tvCenter:Landroid/widget/TextView;

.field private tvExit:Landroid/widget/TextView;

.field private waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->sendOperation(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvCenter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mShareTipsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->isEditMode:Z

    return p0
.end method

.method static synthetic access$202(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->isEditMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->updateTopBarUI(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvExit:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->isSelectAll:Z

    return p1
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->updateAllSelectUI(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->initViewPager()V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)[Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tabNames:[Ljava/lang/String;

    return-object p0
.end method

.method private initViewPager()V
    .locals 3

    .line 202
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$array;->browse_file_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tabNames:[Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;

    if-nez v0, :cond_1

    .line 208
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;

    .line 209
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->indicatorViewPager:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    invoke-virtual {v1, v0}, Lcom/shizhefei/view/indicator/IndicatorViewPager;->setAdapter(Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorPagerAdapter;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private sendOperation(I)V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_browse_file_operation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "browse_operation"

    .line 297
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showShareTipsDialog()V
    .locals 6

    .line 419
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->sharing_needs_disconnect:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$3;

    invoke-direct {v4, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$4;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mShareTipsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 435
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mShareTipsDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "Share_Tips"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateAllSelectUI(Z)V
    .locals 2

    .line 281
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->isSelectAll:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvAllSelect:Landroid/widget/TextView;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->cancel_all_select:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    const/16 p1, 0xa5

    .line 284
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->sendOperation(I)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvAllSelect:Landroid/widget/TextView;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->all_select:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    const/16 p1, 0xa6

    .line 289
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->sendOperation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBottomBar()V
    .locals 5

    .line 260
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->isEditMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->bottomBar:Lcom/roughike/bottombar/BottomBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBar;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 263
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->bottomBar:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v0, v2}, Lcom/roughike/bottombar/BottomBar;->setVisibility(I)V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/jieli/stream/dv/running2/R$anim;->slide_in_bottom:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 271
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/jieli/stream/dv/running2/R$anim;->slide_out_bottom:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->bottomBar:Lcom/roughike/bottombar/BottomBar;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->bottomBar:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBar;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateTopBarUI(Z)V
    .locals 4

    .line 239
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->isEditMode:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->normalModeLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->normalModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvCenter:Landroid/widget/TextView;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->selected_num:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editModeLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 246
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editModeLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 250
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->normalModeLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 253
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->normalModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 256
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->updateBottomBar()V

    return-void
.end method


# virtual methods
.method public currentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dismissWaitingDialog()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    :cond_1
    return-void
.end method

.method public getMediaTask()Lcom/jieli/stream/dv/running2/task/MediaTask;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mediaTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_share:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 154
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_delete:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 155
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->initViewPager()V

    .line 159
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;

    if-nez p1, :cond_0

    .line 160
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$1;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;

    .line 162
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.jieli.dv.running2_select_files"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.jieli.dv.running2_select_state_change"

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.jieli.dv.running2_language_change"

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 218
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->operation_edit_btn:I

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa1

    .line 219
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->sendOperation(I)V

    goto :goto_0

    .line 220
    :cond_0
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->edit_exit:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 221
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->updateTopBarUI(Z)V

    const/16 p1, 0xa2

    .line 222
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->sendOperation(I)V

    goto :goto_0

    .line 223
    :cond_1
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->edit_all_select:I

    if-ne p1, v0, :cond_2

    .line 224
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->isSelectAll:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->isSelectAll:Z

    .line 225
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->updateAllSelectUI(Z)V

    goto :goto_0

    .line 226
    :cond_2
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_share:I

    if-ne p1, v0, :cond_4

    .line 227
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 228
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->showShareTipsDialog()V

    goto :goto_0

    :cond_3
    const/16 p1, 0xa7

    .line 230
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->sendOperation(I)V

    goto :goto_0

    .line 232
    :cond_4
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_delete:I

    if-ne p1, v0, :cond_5

    const/16 p1, 0xa4

    .line 233
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->sendOperation(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 122
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_browse_file:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 123
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->operation_edit_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 124
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->file_view_pager:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    .line 125
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->top_normal_mode_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->normalModeLayout:Landroid/widget/RelativeLayout;

    .line 126
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->top_edit_mode_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->editModeLayout:Landroid/widget/RelativeLayout;

    .line 127
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->edit_all_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvAllSelect:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->edit_center_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvCenter:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->edit_exit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvExit:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->file_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 132
    new-instance v1, Lcom/shizhefei/view/indicator/transition/OnTransitionTextListener;

    invoke-direct {v1}, Lcom/shizhefei/view/indicator/transition/OnTransitionTextListener;-><init>()V

    .line 133
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/jieli/stream/dv/running2/R$color;->text_orange:I

    sget v4, Lcom/jieli/stream/dv/running2/R$color;->text_white:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/shizhefei/view/indicator/transition/OnTransitionTextListener;->setColorId(Landroid/content/Context;II)Lcom/shizhefei/view/indicator/transition/OnTransitionTextListener;

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/jieli/stream/dv/running2/R$dimen;->text_normal:I

    sget v4, Lcom/jieli/stream/dv/running2/R$dimen;->text_smaller_x:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/shizhefei/view/indicator/transition/OnTransitionTextListener;->setSizeId(Landroid/content/Context;II)Lcom/shizhefei/view/indicator/transition/OnTransitionTextListener;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V

    const/4 v1, 0x5

    .line 135
    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setDividerPadding(I)V

    .line 136
    new-instance v2, Lcom/shizhefei/view/indicator/slidebar/ColorBar;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, -0x80d9

    invoke-direct {v2, v3, v4, v1}, Lcom/shizhefei/view/indicator/slidebar/ColorBar;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V

    const/4 v1, 0x3

    .line 137
    invoke-virtual {p3, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 139
    new-instance v1, Lcom/shizhefei/view/indicator/IndicatorViewPager;

    invoke-direct {v1, v0, p3}, Lcom/shizhefei/view/indicator/IndicatorViewPager;-><init>(Lcom/shizhefei/view/indicator/Indicator;Landroidx/viewpager/widget/ViewPager;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->indicatorViewPager:Lcom/shizhefei/view/indicator/IndicatorViewPager;

    .line 140
    invoke-virtual {v1, p0}, Lcom/shizhefei/view/indicator/IndicatorViewPager;->setOnIndicatorPageChangeListener(Lcom/shizhefei/view/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;)V

    .line 141
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvAllSelect:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvExit:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 3

    .line 180
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    .line 182
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->dismissWaitingDialog()V

    .line 189
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mediaTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToStopTask()V

    .line 191
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mediaTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->interrupt()V

    .line 192
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mediaTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->release()V

    .line 193
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mediaTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    :cond_1
    return-void
.end method

.method public onIndicatorPageChange(II)V
    .locals 1

    .line 312
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->getFragmentForPage(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 313
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/jieli/stream/dv/running2/R$id;->pop_bottom_bar_share:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 314
    instance-of p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 315
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 317
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    :goto_0
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->isEditMode:Z

    if-eqz p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->tvExit:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 171
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mediaTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    new-instance v0, Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "media_thread"

    invoke-direct {v0, v1, v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->mediaTask:Lcom/jieli/stream/dv/running2/task/MediaTask;

    .line 174
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->start()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 413
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 414
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 415
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->updateTopBarUI(Z)V

    :cond_0
    return-void
.end method

.method public showWaitingDialog()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    const/4 v1, 0x0

    .line 388
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setCancelable(Z)V

    .line 389
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->deleting_tip:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setNotifyContent(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setOnWaitingDialog(Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "wait_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
