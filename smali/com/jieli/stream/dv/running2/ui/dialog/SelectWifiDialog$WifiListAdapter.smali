.class Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectWifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;Landroid/content/Context;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    const/4 p1, 0x0

    .line 214
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;Landroid/content/Context;Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$1;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/jieli/stream/dv/running2/R$layout;->item_select_wifi:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 223
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;

    .line 227
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 228
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;->access$900(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
