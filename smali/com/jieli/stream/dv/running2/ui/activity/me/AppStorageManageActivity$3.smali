.class Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$3;
.super Ljava/lang/Object;
.source "AppStorageManageActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->showClearCacheDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 248
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)V

    .line 249
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->access$300(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)Lcom/jieli/stream/dv/running2/bean/SettingItem;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->notifyDataSetChanged()V

    return-void
.end method
