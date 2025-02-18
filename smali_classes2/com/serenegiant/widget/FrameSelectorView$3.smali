.class Lcom/serenegiant/widget/FrameSelectorView$3;
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

    .line 334
    iput-object p1, p0, Lcom/serenegiant/widget/FrameSelectorView$3;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$3;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {v0}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    :try_start_0
    invoke-static {}, Lcom/serenegiant/widget/FrameSelectorView;->access$200()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$3;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {v0}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView$3;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    iget-object v2, p0, Lcom/serenegiant/widget/FrameSelectorView$3;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {v2}, Lcom/serenegiant/widget/FrameSelectorView;->access$400(Lcom/serenegiant/widget/FrameSelectorView;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-interface {v0, v1, p1, v2}, Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;->onColorSelected(Lcom/serenegiant/widget/FrameSelectorView;II)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/widget/FrameSelectorView$3;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {p1}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$3;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;->onColorSelected(Lcom/serenegiant/widget/FrameSelectorView;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 346
    invoke-static {}, Lcom/serenegiant/widget/FrameSelectorView;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
