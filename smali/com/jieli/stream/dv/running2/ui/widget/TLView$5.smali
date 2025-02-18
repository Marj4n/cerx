.class Lcom/jieli/stream/dv/running2/ui/widget/TLView$5;
.super Ljava/lang/Object;
.source "TLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/widget/TLView;->setRightThumbnail([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

.field final synthetic val$v:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/TLView;Landroid/widget/ImageView;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$5;->val$v:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$5;->val$v:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 635
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$5;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/TLView;I)V

    return-void
.end method
