.class public Lcom/xyzlf/share/library/bean/ShareEntity;
.super Ljava/lang/Object;
.source "ShareEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xyzlf/share/library/bean/ShareEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private drawableId:I

.field private imgUrl:Ljava/lang/String;

.field private isShareBigImg:Z

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/xyzlf/share/library/bean/ShareEntity$1;

    invoke-direct {v0}, Lcom/xyzlf/share/library/bean/ShareEntity$1;-><init>()V

    sput-object v0, Lcom/xyzlf/share/library/bean/ShareEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->title:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->content:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->url:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->imgUrl:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->drawableId:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->isShareBigImg:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/xyzlf/share/library/bean/ShareEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xyzlf/share/library/bean/ShareEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->title:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->content:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->url:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->imgUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawableId()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->drawableId:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isShareBigImg()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->isShareBigImg:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setDrawableId(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->drawableId:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setShareBigImg(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->isShareBigImg:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->url:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 111
    iget-object p2, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->imgUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget p2, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->drawableId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-boolean p2, p0, Lcom/xyzlf/share/library/bean/ShareEntity;->isShareBigImg:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
