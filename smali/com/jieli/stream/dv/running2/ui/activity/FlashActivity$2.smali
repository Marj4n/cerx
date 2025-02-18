.class Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$2;
.super Ljava/lang/Object;
.source "FlashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->enter(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    const-class v3, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->finish()V

    return-void
.end method
