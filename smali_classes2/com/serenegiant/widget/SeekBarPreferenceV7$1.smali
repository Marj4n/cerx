.class Lcom/serenegiant/widget/SeekBarPreferenceV7$1;
.super Ljava/lang/Object;
.source "SeekBarPreferenceV7.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/SeekBarPreferenceV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/SeekBarPreferenceV7;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/SeekBarPreferenceV7;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/serenegiant/widget/SeekBarPreferenceV7$1;->this$0:Lcom/serenegiant/widget/SeekBarPreferenceV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/serenegiant/widget/SeekBarPreferenceV7$1;->this$0:Lcom/serenegiant/widget/SeekBarPreferenceV7;

    invoke-static {p1}, Lcom/serenegiant/widget/SeekBarPreferenceV7;->access$100(Lcom/serenegiant/widget/SeekBarPreferenceV7;)I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lcom/serenegiant/widget/SeekBarPreferenceV7;->access$300(Lcom/serenegiant/widget/SeekBarPreferenceV7;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 156
    iget-object v0, p0, Lcom/serenegiant/widget/SeekBarPreferenceV7$1;->this$0:Lcom/serenegiant/widget/SeekBarPreferenceV7;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/serenegiant/widget/SeekBarPreferenceV7;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/serenegiant/widget/SeekBarPreferenceV7$1;->this$0:Lcom/serenegiant/widget/SeekBarPreferenceV7;

    invoke-static {v0}, Lcom/serenegiant/widget/SeekBarPreferenceV7;->access$100(Lcom/serenegiant/widget/SeekBarPreferenceV7;)I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/serenegiant/widget/SeekBarPreferenceV7;->access$002(Lcom/serenegiant/widget/SeekBarPreferenceV7;I)I

    .line 158
    iget-object p1, p0, Lcom/serenegiant/widget/SeekBarPreferenceV7$1;->this$0:Lcom/serenegiant/widget/SeekBarPreferenceV7;

    invoke-static {p1}, Lcom/serenegiant/widget/SeekBarPreferenceV7;->access$000(Lcom/serenegiant/widget/SeekBarPreferenceV7;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/serenegiant/widget/SeekBarPreferenceV7;->access$200(Lcom/serenegiant/widget/SeekBarPreferenceV7;I)Z

    .line 159
    iget-object p1, p0, Lcom/serenegiant/widget/SeekBarPreferenceV7$1;->this$0:Lcom/serenegiant/widget/SeekBarPreferenceV7;

    invoke-static {p1}, Lcom/serenegiant/widget/SeekBarPreferenceV7;->access$000(Lcom/serenegiant/widget/SeekBarPreferenceV7;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/serenegiant/widget/SeekBarPreferenceV7;->access$300(Lcom/serenegiant/widget/SeekBarPreferenceV7;IZ)V

    :cond_0
    return-void
.end method
