.class Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$2;
.super Ljava/lang/Object;
.source "AppStorageManageActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;


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

    .line 239
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    return-void
.end method
