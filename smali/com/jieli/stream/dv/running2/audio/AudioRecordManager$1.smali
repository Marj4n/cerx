.class Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$1;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->startRecord()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$1;->this$0:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$1;->this$0:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->access$000(Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;)V

    return-void
.end method
