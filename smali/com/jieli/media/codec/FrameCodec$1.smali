.class Lcom/jieli/media/codec/FrameCodec$1;
.super Ljava/lang/Object;
.source "FrameCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/media/codec/FrameCodec;->onCodecSuccess([BIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/media/codec/FrameCodec;

.field final synthetic val$data:[B

.field final synthetic val$listener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

.field final synthetic val$mediaMeta:Lcom/jieli/media/codec/bean/MediaMeta;


# direct methods
.method constructor <init>(Lcom/jieli/media/codec/FrameCodec;Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;[BLcom/jieli/media/codec/bean/MediaMeta;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/jieli/media/codec/FrameCodec$1;->this$0:Lcom/jieli/media/codec/FrameCodec;

    iput-object p2, p0, Lcom/jieli/media/codec/FrameCodec$1;->val$listener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    iput-object p3, p0, Lcom/jieli/media/codec/FrameCodec$1;->val$data:[B

    iput-object p4, p0, Lcom/jieli/media/codec/FrameCodec$1;->val$mediaMeta:Lcom/jieli/media/codec/bean/MediaMeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec$1;->val$listener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/jieli/media/codec/FrameCodec$1;->val$data:[B

    iget-object v2, p0, Lcom/jieli/media/codec/FrameCodec$1;->val$mediaMeta:Lcom/jieli/media/codec/bean/MediaMeta;

    invoke-interface {v0, v1, v2}, Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;->onCompleted([BLcom/jieli/media/codec/bean/MediaMeta;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec$1;->this$0:Lcom/jieli/media/codec/FrameCodec;

    iget-object v0, v0, Lcom/jieli/media/codec/FrameCodec;->tag:Ljava/lang/String;

    const-string v1, "OnFrameCodecListener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
