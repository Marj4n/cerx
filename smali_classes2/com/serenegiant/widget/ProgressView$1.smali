.class Lcom/serenegiant/widget/ProgressView$1;
.super Ljava/lang/Object;
.source "ProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ProgressView;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/ProgressView;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/serenegiant/widget/ProgressView$1;->this$0:Lcom/serenegiant/widget/ProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/serenegiant/widget/ProgressView$1;->this$0:Lcom/serenegiant/widget/ProgressView;

    invoke-static {v0}, Lcom/serenegiant/widget/ProgressView;->access$000(Lcom/serenegiant/widget/ProgressView;)Landroid/graphics/drawable/ClipDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/serenegiant/widget/ProgressView$1;->this$0:Lcom/serenegiant/widget/ProgressView;

    invoke-static {v0}, Lcom/serenegiant/widget/ProgressView;->access$100(Lcom/serenegiant/widget/ProgressView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/serenegiant/widget/ProgressView$1;->this$0:Lcom/serenegiant/widget/ProgressView;

    invoke-static {v1}, Lcom/serenegiant/widget/ProgressView;->access$200(Lcom/serenegiant/widget/ProgressView;)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/serenegiant/widget/ProgressView$1;->this$0:Lcom/serenegiant/widget/ProgressView;

    invoke-static {v1}, Lcom/serenegiant/widget/ProgressView;->access$300(Lcom/serenegiant/widget/ProgressView;)I

    move-result v1

    add-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x2710

    if-le v0, v1, :cond_1

    const/16 v0, 0x2710

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/serenegiant/widget/ProgressView$1;->this$0:Lcom/serenegiant/widget/ProgressView;

    invoke-static {v1}, Lcom/serenegiant/widget/ProgressView;->access$000(Lcom/serenegiant/widget/ProgressView;)Landroid/graphics/drawable/ClipDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/widget/ProgressView$1;->this$0:Lcom/serenegiant/widget/ProgressView;

    invoke-virtual {v0}, Lcom/serenegiant/widget/ProgressView;->invalidate()V

    return-void
.end method
