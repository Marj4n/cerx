.class Lcom/serenegiant/widget/FrameSelectorView$4;
.super Ljava/lang/Object;
.source "FrameSelectorView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 353
    iput-object p1, p0, Lcom/serenegiant/widget/FrameSelectorView$4;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 357
    sget p1, Lcom/serenegiant/common/R$id;->scale_type_inch_radiobutton:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 359
    :cond_0
    sget p1, Lcom/serenegiant/common/R$id;->scale_type_mm_radiobutton:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 362
    :goto_0
    iget-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView$4;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {p2}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 364
    :try_start_0
    iget-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView$4;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-static {p2}, Lcom/serenegiant/widget/FrameSelectorView;->access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView$4;->this$0:Lcom/serenegiant/widget/FrameSelectorView;

    invoke-interface {p2, v0, p1}, Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;->onScaleSelected(Lcom/serenegiant/widget/FrameSelectorView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 366
    invoke-static {}, Lcom/serenegiant/widget/FrameSelectorView;->access$300()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
