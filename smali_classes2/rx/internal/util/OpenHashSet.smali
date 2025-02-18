.class public final Lrx/internal/util/OpenHashSet;
.super Ljava/lang/Object;
.source "OpenHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INT_PHI:I = -0x61c88647


# instance fields
.field keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field mask:I

.field maxSize:I

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    .line 45
    invoke-direct {p0, v0, v1}, Lrx/internal/util/OpenHashSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 53
    invoke-direct {p0, p1, v0}, Lrx/internal/util/OpenHashSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p2, p0, Lrx/internal/util/OpenHashSet;->loadFactor:F

    .line 59
    invoke-static {p1}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 60
    iput v0, p0, Lrx/internal/util/OpenHashSet;->mask:I

    int-to-float v0, p1

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 61
    iput p2, p0, Lrx/internal/util/OpenHashSet;->maxSize:I

    .line 62
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-void
.end method

.method static mix(I)I
    .locals 1

    const v0, -0x61c88647

    mul-int p0, p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 67
    iget v1, p0, Lrx/internal/util/OpenHashSet;->mask:I

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lrx/internal/util/OpenHashSet;->mix(I)I

    move-result v2

    and-int/2addr v2, v1

    .line 70
    aget-object v3, v0, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    return v5

    :cond_0
    add-int/2addr v2, v4

    and-int/2addr v2, v1

    .line 77
    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    .line 86
    :cond_2
    :goto_0
    aput-object p1, v0, v2

    .line 87
    iget p1, p0, Lrx/internal/util/OpenHashSet;->size:I

    add-int/2addr p1, v4

    iput p1, p0, Lrx/internal/util/OpenHashSet;->size:I

    iget v0, p0, Lrx/internal/util/OpenHashSet;->maxSize:I

    if-lt p1, v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lrx/internal/util/OpenHashSet;->rehash()V

    :cond_3
    return v4
.end method

.method public clear(Lrx/functions/Action1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;)V"
        }
    .end annotation

    .line 143
    iget v0, p0, Lrx/internal/util/OpenHashSet;->size:I

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 147
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 149
    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 151
    invoke-interface {p1, v4}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 154
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    iput v2, p0, Lrx/internal/util/OpenHashSet;->size:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 201
    iget v0, p0, Lrx/internal/util/OpenHashSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method rehash()V
    .locals 8

    .line 166
    iget-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 167
    array-length v1, v0

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v2, -0x1

    .line 171
    new-array v4, v2, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 174
    iget v5, p0, Lrx/internal/util/OpenHashSet;->size:I

    :goto_0
    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_3

    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 175
    aget-object v5, v0, v1

    if-nez v5, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lrx/internal/util/OpenHashSet;->mix(I)I

    move-result v5

    and-int/2addr v5, v3

    .line 177
    aget-object v7, v4, v5

    if-eqz v7, :cond_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v3

    .line 180
    aget-object v7, v4, v5

    if-nez v7, :cond_1

    .line 185
    :cond_2
    aget-object v7, v0, v1

    aput-object v7, v4, v5

    move v5, v6

    goto :goto_0

    .line 188
    :cond_3
    iput v3, p0, Lrx/internal/util/OpenHashSet;->mask:I

    int-to-float v0, v2

    .line 189
    iget v1, p0, Lrx/internal/util/OpenHashSet;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lrx/internal/util/OpenHashSet;->maxSize:I

    .line 190
    iput-object v4, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 94
    iget v1, p0, Lrx/internal/util/OpenHashSet;->mask:I

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lrx/internal/util/OpenHashSet;->mix(I)I

    move-result v2

    and-int/2addr v2, v1

    .line 96
    aget-object v3, v0, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 100
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {p0, v2, v0, v1}, Lrx/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v1

    .line 105
    aget-object v3, v0, v2

    if-nez v3, :cond_2

    return v4

    .line 109
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {p0, v2, v0, v1}, Lrx/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method removeEntry(I[Ljava/lang/Object;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;I)Z"
        }
    .end annotation

    .line 116
    iget v0, p0, Lrx/internal/util/OpenHashSet;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lrx/internal/util/OpenHashSet;->size:I

    :goto_0
    add-int/lit8 v0, p1, 0x1

    :goto_1
    and-int/2addr v0, p3

    .line 125
    aget-object v2, p2, v0

    if-nez v2, :cond_0

    const/4 p3, 0x0

    .line 127
    aput-object p3, p2, p1

    return v1

    .line 130
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lrx/internal/util/OpenHashSet;->mix(I)I

    move-result v3

    and-int/2addr v3, p3

    if-gt p1, v0, :cond_1

    if-ge p1, v3, :cond_2

    if-le v3, v0, :cond_3

    goto :goto_2

    :cond_1
    if-lt p1, v3, :cond_3

    if-le v3, v0, :cond_3

    .line 138
    :cond_2
    :goto_2
    aput-object v2, p2, p1

    move p1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public terminate()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lrx/internal/util/OpenHashSet;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 161
    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-void
.end method

.method public values()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-object v0
.end method
