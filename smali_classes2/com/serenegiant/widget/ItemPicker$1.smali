.class Lcom/serenegiant/widget/ItemPicker$1;
.super Ljava/lang/Object;
.source "ItemPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ItemPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ItemPicker;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/ItemPicker;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPicker$1;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$1;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$000(Lcom/serenegiant/widget/ItemPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$1;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$100(Lcom/serenegiant/widget/ItemPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/serenegiant/widget/ItemPicker;->changeCurrent(I)V

    .line 90
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$1;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$300(Lcom/serenegiant/widget/ItemPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/ItemPicker$1;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v1}, Lcom/serenegiant/widget/ItemPicker;->access$200(Lcom/serenegiant/widget/ItemPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$1;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$400(Lcom/serenegiant/widget/ItemPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$1;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$100(Lcom/serenegiant/widget/ItemPicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/serenegiant/widget/ItemPicker;->changeCurrent(I)V

    .line 93
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$1;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$300(Lcom/serenegiant/widget/ItemPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/ItemPicker$1;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v1}, Lcom/serenegiant/widget/ItemPicker;->access$200(Lcom/serenegiant/widget/ItemPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
