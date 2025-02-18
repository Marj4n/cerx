.class Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$1;
.super Ljava/lang/Object;
.source "BaseZoomableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->initBaseZoomableImageView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->postInvalidate()V

    return-void
.end method
