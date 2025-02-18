.class final Lcom/serenegiant/widget/ZoomAspectScaledTextureView$WaitImageReset;
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
    name = "WaitImageReset"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ZoomAspectScaledTextureView;


# direct methods
.method private constructor <init>(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$WaitImageReset;->this$0:Lcom/serenegiant/widget/ZoomAspectScaledTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;Lcom/serenegiant/widget/ZoomAspectScaledTextureView$1;)V
    .locals 0

    .line 877
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$WaitImageReset;-><init>(Lcom/serenegiant/widget/ZoomAspectScaledTextureView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$WaitImageReset;->this$0:Lcom/serenegiant/widget/ZoomAspectScaledTextureView;

    invoke-virtual {v0}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView;->init()V

    return-void
.end method
