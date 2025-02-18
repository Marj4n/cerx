.class Lcom/serenegiant/widget/FrameSelectorView$5;
.super Ljava/lang/Object;
.source "FrameSelectorView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 372
    iput-object p1, p0, Lcom/serenegiant/widget/FrameSelectorView$5;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$5;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {v0}, Lcom/serenegiant/widget/FrameSelectorView;->access$500(Lcom/serenegiant/widget/FrameSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$5;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {v0}, Lcom/serenegiant/widget/FrameSelectorView;->access$500(Lcom/serenegiant/widget/FrameSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v3, v4

    const-string p2, "%4.1fpx"

    invoke-static {v2, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 378
    iget-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView$5;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {p2}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 380
    :try_start_0
    iget-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView$5;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {p2}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object p2

    iget-object p3, p0, Lcom/serenegiant/widget/FrameSelectorView$5;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-interface {p2, p3, p1}, Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;->onLineWidthChanged(Lcom/serenegiant/widget/FrameSelectorView;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 382
    invoke-static {}, Lcom/serenegiant/widget/FrameSelectorView;->access$300()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$5;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {v0}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$5;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {v0}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView$5;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;->onLineWidthSelected(Lcom/serenegiant/widget/FrameSelectorView;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 397
    invoke-static {}, Lcom/serenegiant/widget/FrameSelectorView;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
