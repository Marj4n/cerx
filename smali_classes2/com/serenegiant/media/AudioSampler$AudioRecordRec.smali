.class public final Lcom/serenegiant/media/AudioSampler$AudioRecordRec;
.super Ljava/lang/Object;
.source "AudioSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/AudioSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AudioRecordRec"
.end annotation


# instance fields
.field audioRecord:Landroid/media/AudioRecord;

.field bufferSize:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
