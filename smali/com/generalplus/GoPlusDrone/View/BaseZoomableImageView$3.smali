.class Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$3;
.super Ljava/lang/Object;
.source "BaseZoomableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$3;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$3;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->updateSelection()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-void
.end method
