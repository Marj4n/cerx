.class public interface abstract Lcom/serenegiant/media/IRecorder;
.super Ljava/lang/Object;
.source "IRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/media/IRecorder$RecorderState;,
        Lcom/serenegiant/media/IRecorder$RecorderCallback;
    }
.end annotation


# static fields
.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_STARTED:I = 0x4

.field public static final STATE_STARTING:I = 0x3

.field public static final STATE_STOPPING:I = 0x5

.field public static final STATE_UNINITIALIZED:I


# virtual methods
.method public abstract addEncoder(Lcom/serenegiant/media/Encoder;)V
.end method

.method public abstract addTrack(Lcom/serenegiant/media/Encoder;Landroid/media/MediaFormat;)I
.end method

.method public abstract frameAvailableSoon()V
.end method

.method public abstract getAudioEncoder()Lcom/serenegiant/media/Encoder;
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract getMuxer()Lcom/serenegiant/media/IMuxer;
.end method

.method public abstract getOutputFile()Landroidx/documentfile/provider/DocumentFile;
.end method

.method public abstract getOutputPath()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract getVideoEncoder()Lcom/serenegiant/media/Encoder;
.end method

.method public abstract isReady()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract isStopped()Z
.end method

.method public abstract isStopping()Z
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract removeEncoder(Lcom/serenegiant/media/Encoder;)V
.end method

.method public abstract setMuxer(Lcom/serenegiant/media/IMuxer;)V
.end method

.method public abstract start(Lcom/serenegiant/media/Encoder;)Z
.end method

.method public abstract startRecording()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract stop(Lcom/serenegiant/media/Encoder;)V
.end method

.method public abstract stopRecording()V
.end method

.method public abstract writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method
