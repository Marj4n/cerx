.class Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2$1;
.super Ljava/lang/Object;
.source "LanguageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)V

    .line 119
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->finish()V

    return-void
.end method
