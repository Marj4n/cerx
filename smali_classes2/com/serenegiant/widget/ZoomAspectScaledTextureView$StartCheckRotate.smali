.class final Lcom/serenegiant/widget/ZoomAspectScaledTextureView$StartCheckRotate;
.super Ljava/lang/Object;
.source "ZoomAspectScaledTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ZoomAspectScaledTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartCheckRotate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ZoomAspectScaledTextureView;


# direct methods
.method private constructor <init>(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;)V
    .locals 0

    .line 887
    iput-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$StartCheckRotate;->this$0:Lcom/serenegiant/widget/ZoomAspectScaledTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;Lcom/serenegiant/widget/ZoomAspectScaledTextureView$1;)V
    .locals 0

    .line 887
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$StartCheckRotate;-><init>(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$StartCheckRotate;->this$0:Lcom/serenegiant/widget/ZoomAspectScaledTextureView;

    invoke-static {v0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->access$200(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 891
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$StartCheckRotate;->this$0:Lcom/serenegiant/widget/ZoomAspectScaledTextureView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->access$300(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;I)V

    :cond_0
    return-void
.end method
