.class final Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/ByteBufferUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeArray"
.end annotation


# instance fields
.field final data:[B

.field final limit:I

.field final offset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    .line 151
    iput p2, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    .line 152
    iput p3, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    return-void
.end method
