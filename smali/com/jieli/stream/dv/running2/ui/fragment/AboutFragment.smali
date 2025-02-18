.class public Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "AboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;
    }
.end annotation


# static fields
.field private static final LIMIT_TIME:I = 0xea60

.field private static final MSG_UPGRADE_FILE:I = 0x1234

.field private static final MSG_UPLOAD_FAILED:I = 0x101

.field private static final MSG_UPLOAD_FINISH:I = 0x100

.field private static final TIME_INTERVAL:I = 0x7d0


# instance fields
.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

.field private mBackPressedTimes:J

.field private mCheckAppUpgrade:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mUpgradeCompleteDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mUploadDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private onSelectedFileListener:Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pressCount:I

.field private tag:Ljava/lang/String;

.field private tvAppVersionName:Landroid/widget/TextView;

.field private upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->pressCount:I

    .line 81
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mHandler:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 226
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->onSelectedFileListener:Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;

    .line 283
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$5;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$5;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 452
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->showNotifyDialog(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mUploadDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->dismissNotifyDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mUploadDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->showWaitingDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->tvAppVersionName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mBackPressedTimes:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;J)J
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mBackPressedTimes:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->pressCount:I

    return p0
.end method

.method static synthetic access$1502(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->pressCount:I

    return p1
.end method

.method static synthetic access$1508(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)I
    .locals 2

    .line 55
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->pressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->pressCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mCheckAppUpgrade:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;)Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mCheckAppUpgrade:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->onSelectedFileListener:Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->showUpgradeCompleteDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mUpgradeCompleteDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method private dismissNotifyDialog()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    :cond_1
    return-void
.end method

.method private initVersion()V
    .locals 7

    .line 186
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$array;->about_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 189
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 190
    new-instance v6, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-direct {v6}, Lcom/jieli/stream/dv/running2/bean/SettingItem;-><init>()V

    .line 191
    invoke-virtual {v6, v3}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    .line 192
    invoke-virtual {v6, v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setName(Ljava/lang/String;)V

    .line 193
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    :cond_1
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    .line 197
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static newInstance()Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;
    .locals 1

    .line 71
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;-><init>()V

    return-object v0
.end method

.method private showNotifyDialog(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 315
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 316
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->upgrade_desc:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$7;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$7;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$8;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$8;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v1, 0x1

    .line 335
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setContentTextLeft(Z)V

    .line 337
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setContent(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 341
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setBundle(Landroid/os/Bundle;)V

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 344
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->upgradeNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "notify_dialog"

    invoke-virtual {p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private showUpgradeCompleteDialog()V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mUpgradeCompleteDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 301
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->upgrade_step_6:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->comfirm:I

    new-instance v3, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$6;

    invoke-direct {v3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$6;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mUpgradeCompleteDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mUpgradeCompleteDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mUpgradeCompleteDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "mUpgradeCompleteDialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showWaitingDialog()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    const/4 v1, 0x0

    .line 360
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setCancelable(Z)V

    .line 361
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->check_app_upgrade:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setNotifyContent(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$9;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$9;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setOnWaitingDialog(Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "waiting_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismissWaitingDialog()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->initVersion()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 131
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_about:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 132
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->about_app_version:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->tvAppVersionName:Landroid/widget/TextView;

    .line 133
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->about_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mListView:Landroid/widget/ListView;

    .line 134
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/jieli/stream/dv/running2/R$string;->app_version:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 136
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->tvAppVersionName:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p3

    invoke-static {p3}, Lcom/jieli/lib/dv/control/utils/VersionHelper;->getSdkVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 138
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->sdk_version:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 140
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->about_sdk_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 145
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getFirmware_version()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 148
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->firmware_version:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 149
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->about_fw_version:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_2
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->about_return:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 152
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$2;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->tvAppVersionName:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 173
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDestroy()V

    .line 174
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->dismissWaitingDialog()V

    .line 175
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->dismissNotifyDialog()V

    .line 176
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mCheckAppUpgrade:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 177
    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->cancel(Z)Z

    .line 178
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mCheckAppUpgrade:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 279
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 280
    sget-boolean v0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isFactoryMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 269
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 270
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mUploadDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mUploadDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mUploadDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 274
    :cond_0
    sget-boolean v0, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isFactoryMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    :cond_1
    return-void
.end method
