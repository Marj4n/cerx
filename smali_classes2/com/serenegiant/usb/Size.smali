.class public Lcom/serenegiant/usb/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/serenegiant/usb/Size;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fps:[F

.field public frameIntervalIndex:I

.field public frameIntervalType:I

.field private frameRates:Ljava/lang/String;

.field public frame_type:I

.field public height:I

.field public index:I

.field public intervals:[I

.field public type:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 292
    new-instance v0, Lcom/serenegiant/usb/Size$1;

    invoke-direct {v0}, Lcom/serenegiant/usb/Size$1;-><init>()V

    sput-object v0, Lcom/serenegiant/usb/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 63
    iput p2, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 64
    iput p3, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 65
    iput p4, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 66
    iput p5, p0, Lcom/serenegiant/usb/Size;->height:I

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 70
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 85
    iput p2, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 86
    iput p3, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 87
    iput p4, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 88
    iput p5, p0, Lcom/serenegiant/usb/Size;->height:I

    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    .line 90
    iput p1, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    const/4 p2, 0x3

    new-array p2, p2, [I

    .line 91
    iput-object p2, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    aput p6, p2, p1

    const/4 p1, 0x1

    aput p7, p2, p1

    const/4 p1, 0x2

    aput p8, p2, p1

    .line 95
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    return-void
.end method

.method public constructor <init>(IIIII[I)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 109
    iput p2, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 110
    iput p3, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 111
    iput p4, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 112
    iput p5, p0, Lcom/serenegiant/usb/Size;->height:I

    const/4 p1, -0x1

    if-eqz p6, :cond_0

    .line 113
    array-length p2, p6

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    const/4 p3, 0x0

    if-lez p2, :cond_1

    .line 115
    iput p2, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    .line 116
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 117
    invoke-static {p6, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 119
    :cond_1
    iput p1, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 122
    :goto_1
    iput p3, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    .line 123
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->height:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    .line 157
    iget v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    if-ltz v0, :cond_1

    if-lez v0, :cond_0

    .line 159
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 161
    iput-object v0, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 167
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/serenegiant/usb/Size$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/Size;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/usb/Size;)V
    .locals 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iget v0, p1, Lcom/serenegiant/usb/Size;->type:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 132
    iget v0, p1, Lcom/serenegiant/usb/Size;->frame_type:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 133
    iget v0, p1, Lcom/serenegiant/usb/Size;->index:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 134
    iget v0, p1, Lcom/serenegiant/usb/Size;->width:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 135
    iget v0, p1, Lcom/serenegiant/usb/Size;->height:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->height:I

    .line 136
    iget v0, p1, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    .line 137
    iget v0, p1, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    .line 138
    iget-object v0, p1, Lcom/serenegiant/usb/Size;->intervals:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 140
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 141
    iget-object p1, p1, Lcom/serenegiant/usb/Size;->intervals:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 145
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFrameRate()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    iget v1, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    aget v0, v0, v1

    return v0

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown frame rate or not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Lcom/serenegiant/usb/Size;)Lcom/serenegiant/usb/Size;
    .locals 3

    if-eqz p1, :cond_2

    .line 172
    iget v0, p1, Lcom/serenegiant/usb/Size;->type:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 173
    iget v0, p1, Lcom/serenegiant/usb/Size;->frame_type:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 174
    iget v0, p1, Lcom/serenegiant/usb/Size;->index:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 175
    iget v0, p1, Lcom/serenegiant/usb/Size;->width:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 176
    iget v0, p1, Lcom/serenegiant/usb/Size;->height:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->height:I

    .line 177
    iget v0, p1, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    .line 178
    iget v0, p1, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    .line 179
    iget-object v0, p1, Lcom/serenegiant/usb/Size;->intervals:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 181
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 182
    iget-object p1, p1, Lcom/serenegiant/usb/Size;->intervals:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 186
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    :cond_2
    return-object p0
.end method

.method public setCurrentFrameRate(F)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 204
    iget-object v2, p0, Lcom/serenegiant/usb/Size;->fps:[F

    aget v2, v2, v1

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 209
    :goto_1
    iput v1, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->getCurrentFrameRate()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/serenegiant/usb/Size;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/serenegiant/usb/Size;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/serenegiant/usb/Size;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget v3, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget v3, p0, Lcom/serenegiant/usb/Size;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/serenegiant/usb/Size;->frameRates:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v0, "Size(%dx%d@%4.1f,type:%d,frame:%d,index:%d,%s)"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFrameRate()V
    .locals 10

    .line 232
    iget v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    const v1, 0x4b189680    # 1.0E7f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 234
    new-array v4, v0, [F

    iput-object v4, p0, Lcom/serenegiant/usb/Size;->fps:[F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    .line 236
    iget-object v5, p0, Lcom/serenegiant/usb/Size;->fps:[F

    iget-object v6, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    aget v6, v6, v4

    int-to-float v6, v6

    div-float v6, v1, v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_4

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    aget v0, v0, v3

    iget-object v4, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    aget v4, v4, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 241
    iget-object v4, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    aget v5, v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 242
    iget-object v5, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    if-lez v5, :cond_2

    move v6, v0

    const/4 v7, 0x0

    :goto_1
    if-gt v6, v4, :cond_1

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v5

    goto :goto_1

    .line 246
    :cond_1
    new-array v6, v7, [F

    iput-object v6, p0, Lcom/serenegiant/usb/Size;->fps:[F

    const/4 v6, 0x0

    :goto_2
    if-gt v0, v4, :cond_4

    .line 249
    iget-object v7, p0, Lcom/serenegiant/usb/Size;->fps:[F

    add-int/lit8 v8, v6, 0x1

    int-to-float v9, v0

    div-float v9, v1, v9

    aput v9, v7, v6

    add-int/2addr v0, v5

    move v6, v8

    goto :goto_2

    :cond_2
    int-to-float v0, v0

    div-float/2addr v1, v0

    move v0, v1

    const/4 v4, 0x0

    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v1

    if-gtz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    add-float/2addr v0, v5

    goto :goto_3

    .line 255
    :cond_3
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    move v0, v1

    const/4 v4, 0x0

    :goto_4
    cmpg-float v6, v0, v1

    if-gtz v6, :cond_4

    .line 258
    iget-object v6, p0, Lcom/serenegiant/usb/Size;->fps:[F

    add-int/lit8 v7, v4, 0x1

    aput v0, v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v0, v5

    move v4, v7

    goto :goto_4

    :catch_0
    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    if-eqz v0, :cond_5

    array-length v0, v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 267
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    .line 268
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v0, :cond_7

    .line 270
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/serenegiant/usb/Size;->fps:[F

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "%4.1f"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_6

    const-string v5, ","

    .line 272
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    const-string v2, "]"

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/usb/Size;->frameRates:Ljava/lang/String;

    .line 277
    iget v1, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    if-le v1, v0, :cond_8

    .line 278
    iput v3, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    :cond_8
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 219
    iget p2, p0, Lcom/serenegiant/usb/Size;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget p2, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget p2, p0, Lcom/serenegiant/usb/Size;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget p2, p0, Lcom/serenegiant/usb/Size;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget p2, p0, Lcom/serenegiant/usb/Size;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget p2, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget p2, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object p2, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_0
    return-void
.end method
