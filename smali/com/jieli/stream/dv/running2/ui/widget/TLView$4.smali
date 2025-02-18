.class Lcom/jieli/stream/dv/running2/ui/widget/TLView$4;
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

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$v:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/TLView;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$4;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$4;->val$v:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$4;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/TLView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/TLView;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/TLView;I)V

    .line 625
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$4;->val$v:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/TLView$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
