.class Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

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

    .line 204
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 205
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    if-eqz p1, :cond_2

    .line 207
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 208
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget p3, Lcom/jieli/stream/dv/running2/R$string;->check_app_upgrade:I

    invoke-virtual {p2, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 209
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;

    move-result-object p1

    if-nez p1, :cond_2

    .line 210
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$1;)V

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$302(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;)Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;

    .line 211
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$CheckAppUpgrade;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget p3, Lcom/jieli/stream/dv/running2/R$string;->upload_firmware:I

    invoke-virtual {p2, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 214
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;-><init>()V

    .line 216
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->setOnSelectedListener(Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;)V

    .line 217
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "browse_firmware_file_dialog"

    invoke-virtual {p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->please_connect_device_to_use:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
