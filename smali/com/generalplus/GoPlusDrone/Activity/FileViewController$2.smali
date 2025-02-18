.class Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;
.super Ljava/lang/Object;
.source "FileViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->setupControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 105
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->access$000(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->access$000(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->access$000(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->access$200(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->access$100(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->access$200(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->access$100(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
