.class Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;-><init>(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 63
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 65
    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {p4}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 66
    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {p4}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;

    move-result-object p4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p4, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;->onItemClick(ILjava/lang/Integer;I)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->dismiss()V

    return-void
.end method
