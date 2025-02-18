.class Lcom/serenegiant/widget/ValueSelectorAdapter$1;
.super Ljava/lang/Object;
.source "ValueSelectorAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ValueSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ValueSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/ValueSelectorAdapter;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/serenegiant/widget/ValueSelectorAdapter$1;->this$0:Lcom/serenegiant/widget/ValueSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/serenegiant/widget/ValueSelectorAdapter$1;->this$0:Lcom/serenegiant/widget/ValueSelectorAdapter;

    invoke-static {v0}, Lcom/serenegiant/widget/ValueSelectorAdapter;->access$200(Lcom/serenegiant/widget/ValueSelectorAdapter;)Lcom/serenegiant/widget/ValueSelectorAdapter$ValueSelectorAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 147
    iget v0, v0, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;->position:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 149
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/widget/ValueSelectorAdapter$1;->this$0:Lcom/serenegiant/widget/ValueSelectorAdapter;

    invoke-static {v1}, Lcom/serenegiant/widget/ValueSelectorAdapter;->access$200(Lcom/serenegiant/widget/ValueSelectorAdapter;)Lcom/serenegiant/widget/ValueSelectorAdapter$ValueSelectorAdapterListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/serenegiant/widget/ValueSelectorAdapter$ValueSelectorAdapterListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
