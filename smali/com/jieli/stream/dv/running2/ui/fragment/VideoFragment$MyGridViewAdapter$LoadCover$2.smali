.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover$2;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;)V
    .locals 0

    .line 1995
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover$2;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1999
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover$2;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->access$6102(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
