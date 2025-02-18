.class final Lcom/jieli/stream/dv/running2/util/AviThumbUtil$1;
.super Ljava/lang/Object;
.source "AviThumbUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->dispenseOnCompletedEvent([BLcom/jieli/media/codec/bean/MediaMeta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:[B

.field final synthetic val$meta:Lcom/jieli/media/codec/bean/MediaMeta;


# direct methods
.method constructor <init>([BLcom/jieli/media/codec/bean/MediaMeta;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/AviThumbUtil$1;->val$data:[B

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/util/AviThumbUtil$1;->val$meta:Lcom/jieli/media/codec/bean/MediaMeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 25
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->access$000()Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->access$000()Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/AviThumbUtil$1;->val$data:[B

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/AviThumbUtil$1;->val$meta:Lcom/jieli/media/codec/bean/MediaMeta;

    invoke-interface {v0, v1, v2}, Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;->onCompleted([BLcom/jieli/media/codec/bean/MediaMeta;)V

    :cond_0
    return-void
.end method
