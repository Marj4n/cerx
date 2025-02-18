.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p1, p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$202(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScroll = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tag"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p1, p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$002(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I

    if-nez p2, :cond_2

    .line 124
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$102(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I

    .line 128
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/widget/GridView;

    move-result-object p1

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setSelection(I)V

    const/4 p1, 0x0

    .line 129
    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$402(Z)Z

    .line 130
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$500()Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$500()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x0

    .line 132
    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$502(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-direct {p2, v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$502(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 136
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$500()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method
