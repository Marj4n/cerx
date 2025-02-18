.class public Lcom/serenegiant/media/MediaAVRecorder;
.super Lcom/serenegiant/media/AbstractMediaAVRecorder;
.source "MediaAVRecorder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/serenegiant/media/MediaAVRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/MediaAVRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected setupMuxer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p1}, Lcom/serenegiant/media/MediaAVRecorder;->createMuxer(I)Lcom/serenegiant/media/IMuxer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaAVRecorder;->setMuxer(Lcom/serenegiant/media/IMuxer;)V

    return-void
.end method

.method protected setupMuxer(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-static {p1, p2}, Lcom/serenegiant/media/MediaAVRecorder;->createMuxer(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)Lcom/serenegiant/media/IMuxer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaAVRecorder;->setMuxer(Lcom/serenegiant/media/IMuxer;)V

    return-void
.end method

.method protected setupMuxer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {p1}, Lcom/serenegiant/media/MediaAVRecorder;->createMuxer(Ljava/lang/String;)Lcom/serenegiant/media/IMuxer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaAVRecorder;->setMuxer(Lcom/serenegiant/media/IMuxer;)V

    return-void
.end method
