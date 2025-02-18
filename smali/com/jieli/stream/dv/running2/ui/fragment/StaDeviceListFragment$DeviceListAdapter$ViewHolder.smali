.class Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StaDeviceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private devNameTv:Landroid/widget/TextView;

.field private devStateIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;Landroid/view/View;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->device_state_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;->devStateIcon:Landroid/widget/ImageView;

    .line 290
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->device_name_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;->devNameTv:Landroid/widget/TextView;

    .line 292
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;->devNameTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;->devStateIcon:Landroid/widget/ImageView;

    return-object p0
.end method
