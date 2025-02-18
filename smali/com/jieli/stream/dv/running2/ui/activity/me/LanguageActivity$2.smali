.class Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;
.super Ljava/lang/Object;
.source "LanguageActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 4

    .line 105
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result p1

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x31877ca8

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "LANGUAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "lag"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "language_code"

    invoke-static {v0, v1, p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->access$300(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
