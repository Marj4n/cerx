.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$28$1;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$28;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$28;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$28;)V
    .locals 0

    .line 1802
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$28$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1802
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$28$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
