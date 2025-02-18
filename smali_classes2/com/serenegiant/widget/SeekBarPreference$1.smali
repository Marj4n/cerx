.class Lcom/serenegiant/widget/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/SeekBarPreference;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/SeekBarPreference;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/serenegiant/widget/SeekBarPreference$1;->this$0:Lcom/serenegiant/widget/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/serenegiant/widget/SeekBarPreference$1;->this$0:Lcom/serenegiant/widget/SeekBarPreference;

    invoke-static {p1}, Lcom/serenegiant/widget/SeekBarPreference;->access$200(Lcom/serenegiant/widget/SeekBarPreference;)I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lcom/serenegiant/widget/SeekBarPreference;->access$400(Lcom/serenegiant/widget/SeekBarPreference;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 149
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 150
    iget-object v0, p0, Lcom/serenegiant/widget/SeekBarPreference$1;->this$0:Lcom/serenegiant/widget/SeekBarPreference;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/serenegiant/widget/SeekBarPreference;->access$000(Lcom/serenegiant/widget/SeekBarPreference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/serenegiant/widget/SeekBarPreference$1;->this$0:Lcom/serenegiant/widget/SeekBarPreference;

    invoke-static {v0}, Lcom/serenegiant/widget/SeekBarPreference;->access$200(Lcom/serenegiant/widget/SeekBarPreference;)I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/serenegiant/widget/SeekBarPreference;->access$102(Lcom/serenegiant/widget/SeekBarPreference;I)I

    .line 152
    iget-object p1, p0, Lcom/serenegiant/widget/SeekBarPreference$1;->this$0:Lcom/serenegiant/widget/SeekBarPreference;

    invoke-static {p1}, Lcom/serenegiant/widget/SeekBarPreference;->access$100(Lcom/serenegiant/widget/SeekBarPreference;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/serenegiant/widget/SeekBarPreference;->access$300(Lcom/serenegiant/widget/SeekBarPreference;I)Z

    .line 153
    iget-object p1, p0, Lcom/serenegiant/widget/SeekBarPreference$1;->this$0:Lcom/serenegiant/widget/SeekBarPreference;

    invoke-static {p1}, Lcom/serenegiant/widget/SeekBarPreference;->access$100(Lcom/serenegiant/widget/SeekBarPreference;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/serenegiant/widget/SeekBarPreference;->access$400(Lcom/serenegiant/widget/SeekBarPreference;IZ)V

    :cond_0
    return-void
.end method
