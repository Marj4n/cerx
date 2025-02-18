.class Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;
.super Ljava/lang/Object;
.source "SettingAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

.field final synthetic val$item:Lcom/jieli/stream/dv/running2/bean/SettingItem;

.field final synthetic val$position:I

.field final synthetic val$viewHelper1:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;Lcom/jieli/stream/dv/running2/bean/SettingItem;Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;I)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;->this$0:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;->val$item:Lcom/jieli/stream/dv/running2/bean/SettingItem;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;->val$viewHelper1:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;

    iput p4, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 106
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;->val$item:Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getOnSwitchListener()Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;->val$item:Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;->val$item:Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getOnSwitchListener()Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;->val$viewHelper1:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;->access$500(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;)Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;->this$0:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-interface {p1, v0, v1, p2}, Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;->onSwitchListener(Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;Lcom/jieli/stream/dv/running2/bean/SettingItem;Z)V

    :cond_0
    return-void
.end method
