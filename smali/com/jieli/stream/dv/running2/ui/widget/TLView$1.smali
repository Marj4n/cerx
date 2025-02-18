.class Lcom/jieli/stream/dv/running2/ui/widget/TLView$1;
.super Ljava/lang/Object;
.source "TLView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/TLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/TLView;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/TLView;)Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 387
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 388
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/TLView;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 389
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/TLView;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_GET_THUMBNAIL Format time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->yyyy_MMddHHmmss:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/TLView;)Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/TLView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/TLView$OnValueChangeListener;->onValueChangeEnd(Ljava/util/Calendar;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
