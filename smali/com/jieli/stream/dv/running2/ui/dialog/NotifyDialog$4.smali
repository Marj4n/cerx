.class Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$4;
.super Ljava/lang/Object;
.source "NotifyDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$4;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 437
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$4;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$4;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;->onCheckedChanged(Z)V

    :cond_0
    return-void
.end method
