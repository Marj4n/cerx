.class Lcom/serenegiant/widget/FrameSelectorView$1;
.super Ljava/lang/Object;
.source "FrameSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/widget/FrameSelectorView;->updateColors([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/FrameSelectorView;

.field final synthetic val$colors:[I


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/FrameSelectorView;[I)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/serenegiant/widget/FrameSelectorView$1;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    iput-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView$1;->val$colors:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$1;->val$colors:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 255
    invoke-static {}, Lcom/serenegiant/widget/FrameSelectorView;->access$000()[I

    move-result-object v2

    aget v2, v2, v0

    .line 256
    iget-object v3, p0, Lcom/serenegiant/widget/FrameSelectorView$1;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-virtual {v3, v2}, Lcom/serenegiant/widget/FrameSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 258
    iget-object v3, p0, Lcom/serenegiant/widget/FrameSelectorView$1;->val$colors:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
