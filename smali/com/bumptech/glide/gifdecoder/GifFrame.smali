.class Lcom/bumptech/glide/gifdecoder/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifFrame$GifDisposalMethod;
    }
.end annotation


# static fields
.field public static final DISPOSAL_BACKGROUND:I = 0x2

.field public static final DISPOSAL_NONE:I = 0x1

.field public static final DISPOSAL_PREVIOUS:I = 0x3

.field public static final DISPOSAL_UNSPECIFIED:I


# instance fields
.field bufferFrameStart:I

.field delay:I

.field dispose:I

.field ih:I

.field interlace:Z

.field iw:I

.field ix:I

.field iy:I

.field lct:[I

.field transIndex:I

.field transparency:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
