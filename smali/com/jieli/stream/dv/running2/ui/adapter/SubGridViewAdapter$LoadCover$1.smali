.class Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover$1;
.super Ljava/lang/Object;
.source "SubGridViewAdapter.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover$1;->this$1:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover$1;->this$1:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;->access$1102(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 271
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover$1;->this$1:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;->access$1200(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setDuration(I)V

    return-void
.end method
