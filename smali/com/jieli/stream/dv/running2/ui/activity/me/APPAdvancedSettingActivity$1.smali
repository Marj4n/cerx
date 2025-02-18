.class Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$1;
.super Ljava/lang/Object;
.source "APPAdvancedSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 85
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    .line 87
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getType()I

    move-result p3

    if-nez p3, :cond_0

    .line 89
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->item_setting_one_tv2:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 90
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;

    sget p3, Lcom/jieli/stream/dv/running2/R$string;->time_format:I

    invoke-virtual {p2, p3}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
