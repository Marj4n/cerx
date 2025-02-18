.class Lcom/serenegiant/widget/FrameSelectorView$2;
.super Ljava/lang/Object;
.source "FrameSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/FrameSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/FrameSelectorView;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/FrameSelectorView;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/serenegiant/widget/FrameSelectorView$2;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$2;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {v0}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$2;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {v0}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView$2;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {}, Lcom/serenegiant/widget/FrameSelectorView;->access$200()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;->onFrameSelected(Lcom/serenegiant/widget/FrameSelectorView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 325
    invoke-static {}, Lcom/serenegiant/widget/FrameSelectorView;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
