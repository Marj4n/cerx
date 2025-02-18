.class Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$2;
.super Ljava/lang/Object;
.source "BaseZoomableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$fitScreen:Z


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$2;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$2;->val$fitScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$2;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$2;->val$fitScreen:Z

    invoke-virtual {v0, v1, v2}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
