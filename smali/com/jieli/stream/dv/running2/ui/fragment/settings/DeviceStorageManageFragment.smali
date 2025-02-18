.class public Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DeviceStorageManageFragment.java"


# instance fields
.field private delPhotoIbtn:Landroid/widget/ImageButton;

.field private delVideoIbtn:Landroid/widget/ImageButton;

.field private formatBtn:Landroid/widget/Button;

.field private formatDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field private mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private tag:Ljava/lang/String;

.field private tfCapTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->tag:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$5;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$5;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->showStopRecordingDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->showFormatDevice()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;FF)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->setData(FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->formatDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method private initChart()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v3, v2, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraOffsets(FFFF)V

    .line 112
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDragDecelerationFrictionCoef(F)V

    .line 113
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    .line 115
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    sget-object v1, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutQuad:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    const/16 v2, 0x578

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/PieChart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 117
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    return-void
.end method

.method private setData(FF)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->clear()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->remaining_storage:I

    invoke-virtual {p0, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance p1, Lcom/github/mikephil/charting/data/PieEntry;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->used_storage:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance p1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string p2, ""

    invoke-direct {p1, v0, p2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 128
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/PieDataSet;->setSelectionShift(F)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$color;->bg_pie_chart_rest:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$color;->bg_pie_chart_used:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 133
    new-instance v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v0, p1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 134
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$4;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/PieData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 150
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/PieData;->setValueTextSize(F)V

    .line 151
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/jieli/stream/dv/running2/R$color;->text_white:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/PieData;->setValueTextColor(I)V

    .line 152
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelTextSize(F)V

    .line 153
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 154
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 155
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    return-void
.end method

.method private showFormatDevice()V
    .locals 7

    .line 214
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->formatDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 215
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->format:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$6;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$6;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$7;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$7;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->formatDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->formatDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->formatDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "formatDialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showStopRecordingDialog()V
    .locals 7

    .line 240
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 241
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->stop_recording_tips:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$8;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$8;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$9;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setCancelable(Z)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "notify_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 61
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_device_storage_manage:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->photo_del_ibtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->delPhotoIbtn:Landroid/widget/ImageButton;

    .line 63
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_del_ibtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->delVideoIbtn:Landroid/widget/ImageButton;

    .line 64
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->device_storage_format_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->formatBtn:Landroid/widget/Button;

    .line 65
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tf_cap_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->tfCapTextView:Landroid/widget/TextView;

    .line 66
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->pie_chart:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 67
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getLeftStorage()I

    move-result p2

    .line 68
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getTotalStorage()I

    move-result p3

    const/16 v1, 0x400

    if-le p3, v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float v4, p3

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "%.2f"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->tfCapTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->tfCapTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :goto_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->initChart()V

    int-to-float v0, p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    .line 76
    invoke-direct {p0, v0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->setData(FF)V

    .line 77
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->formatBtn:Landroid/widget/Button;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$1;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->delPhotoIbtn:Landroid/widget/ImageButton;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$2;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->delVideoIbtn:Landroid/widget/ImageButton;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$3;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 160
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 161
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 167
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->mNotifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 171
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method
