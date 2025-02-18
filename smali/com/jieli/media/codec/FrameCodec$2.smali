.class Lcom/jieli/media/codec/FrameCodec$2;
.super Ljava/lang/Object;
.source "FrameCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/media/codec/FrameCodec;->onCodecError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/media/codec/FrameCodec;

.field final synthetic val$listener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/media/codec/FrameCodec;Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/jieli/media/codec/FrameCodec$2;->this$0:Lcom/jieli/media/codec/FrameCodec;

    iput-object p2, p0, Lcom/jieli/media/codec/FrameCodec$2;->val$listener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    iput-object p3, p0, Lcom/jieli/media/codec/FrameCodec$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec$2;->val$listener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/jieli/media/codec/FrameCodec$2;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
