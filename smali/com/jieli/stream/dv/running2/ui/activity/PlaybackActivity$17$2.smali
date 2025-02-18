.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/player/OnFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;)V
    .locals 0

    .line 1260
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrame([BLcom/jieli/lib/dv/control/model/PictureInfo;)V
    .locals 5

    if-eqz p2, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$3400()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 1265
    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1266
    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".AVI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".avi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1267
    :cond_1
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$6400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;[B)V

    return-void

    .line 1270
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$6500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/media/codec/FrameCodec;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1271
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    new-instance v1, Lcom/jieli/media/codec/FrameCodec;

    invoke-direct {v1}, Lcom/jieli/media/codec/FrameCodec;-><init>()V

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$6502(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/media/codec/FrameCodec;)Lcom/jieli/media/codec/FrameCodec;

    .line 1272
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$6500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/media/codec/FrameCodec;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$6600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/media/codec/FrameCodec;->setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V

    :cond_3
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 1276
    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getWidth()I

    move-result v0

    .line 1277
    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getHeight()I

    move-result v1

    .line 1278
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$6500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/media/codec/FrameCodec;

    move-result-object v2

    if-gtz v0, :cond_4

    const/16 v0, 0x280

    :cond_4
    if-gtz v1, :cond_5

    const/16 v1, 0x1e0

    .line 1279
    :cond_5
    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string p2, "no path"

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 1278
    :goto_0
    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/jieli/media/codec/FrameCodec;->convertToJPG([BIILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1281
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->poll()Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;

    .line 1282
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1283
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    .line 1286
    :cond_7
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-convertToJPG- ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1288
    :cond_8
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "frame codec data is null"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->poll()Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;

    .line 1290
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1291
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$4100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    :cond_9
    :goto_1
    return-void
.end method
