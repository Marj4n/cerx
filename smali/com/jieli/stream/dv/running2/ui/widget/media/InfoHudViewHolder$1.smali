.class Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;
.super Ljava/lang/Object;
.source "InfoHudViewHolder.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 111
    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 113
    :cond_0
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    const/4 v4, 0x0

    .line 115
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    instance-of v1, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    goto :goto_1

    .line 119
    :cond_2
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    instance-of v1, v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    .line 121
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 122
    instance-of v5, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v5, :cond_3

    .line 123
    move-object v4, v1

    check-cast v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    goto :goto_0

    .line 128
    :cond_4
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoDecoder()I

    move-result v1

    const-string v5, ""

    const/4 v6, 0x2

    if-eq v1, v3, :cond_6

    if-eq v1, v6, :cond_5

    .line 137
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->vdec:I

    invoke-virtual {v1, v7, v5}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    goto :goto_2

    .line 134
    :cond_5
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->vdec:I

    const-string v8, "MediaCodec"

    invoke-virtual {v1, v7, v8}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    goto :goto_2

    .line 131
    :cond_6
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->vdec:I

    const-string v8, "avcodec"

    invoke-virtual {v1, v7, v8}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 141
    :goto_2
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v1

    iget-object v1, v1, Ltv/danmaku/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 142
    iget-object v7, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    sget v8, Lcom/jieli/stream/dv/running2/R$string;->audio_decoder:I

    invoke-virtual {v7, v8, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 147
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedDuration()J

    move-result-wide v7

    .line 148
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getAudioCachedDuration()J

    move-result-wide v9

    .line 149
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedBytes()J

    move-result-wide v11

    .line 150
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getAudioCachedBytes()J

    move-result-wide v13

    .line 154
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v1

    .line 155
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v15

    .line 159
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v3

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    if-eqz v3, :cond_9

    .line 160
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v3

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mAudioStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    if-eqz v3, :cond_7

    .line 161
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v3

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v3, v3, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mAudioStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget v3, v3, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mSampleRate:I

    .line 162
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v2

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mAudioStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v2, v5

    const/4 v3, 0x0

    .line 164
    :goto_3
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v6

    iget-object v6, v6, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v6, v6, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mVideoStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    if-eqz v6, :cond_8

    .line 165
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v4

    iget-object v4, v4, Ltv/danmaku/ijk/media/player/MediaInfo;->mMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta;

    iget-object v4, v4, Ltv/danmaku/ijk/media/player/IjkMediaMeta;->mVideoStream:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget-object v4, v4, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    goto :goto_4

    :cond_8
    move-object v4, v5

    goto :goto_4

    :cond_9
    move-object v2, v5

    move-object v4, v2

    const/4 v3, 0x0

    .line 169
    :goto_4
    iget-object v6, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-wide/from16 v16, v13

    sget v13, Lcom/jieli/stream/dv/running2/R$string;->video_rate:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v13, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    if-lez v3, :cond_a

    .line 171
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    sget v6, Lcom/jieli/stream/dv/running2/R$string;->audio_sample_rate:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 173
    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 174
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->v_codec:I

    invoke-virtual {v1, v3, v4}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 176
    :cond_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 177
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->a_codec:I

    invoke-virtual {v1, v3, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 179
    :cond_c
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->v_cache:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$100(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v11, v12}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$200(J)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "%s, %s"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 180
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->a_cache:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$100(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static/range {v16 .. v17}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$200(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$308()I

    .line 187
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$300()I

    move-result v1

    if-lt v1, v4, :cond_d

    .line 188
    invoke-static {v7}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$302(I)I

    .line 189
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->bit_rate:I

    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->getNetSpeed(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 192
    :cond_d
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :goto_5
    return v1
.end method
