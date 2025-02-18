.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable$1;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 439
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2700(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    :cond_0
    return-void
.end method
