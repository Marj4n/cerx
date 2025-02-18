.class Lcom/generalplus/GoPlusDrone/Activity/FileViewController$1;
.super Ljava/lang/Object;
.source "FileViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 92
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->access$000(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
