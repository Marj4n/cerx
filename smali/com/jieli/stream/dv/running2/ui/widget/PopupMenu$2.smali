.class Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;
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

    .line 152
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$300(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 158
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)I

    move-result v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Landroid/view/View;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$600(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;ILandroid/widget/PopupWindow;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x1

    .line 159
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 160
    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 161
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 162
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$700(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", w "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
