.class Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectWifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;Landroid/view/View;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;->this$1:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_select_wifi_tv:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 238
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-object p0
.end method
