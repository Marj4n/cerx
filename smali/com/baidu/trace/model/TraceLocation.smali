.class public final Lcom/baidu/trace/model/TraceLocation;
.super Lcom/baidu/trace/model/BaseResponse;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/trace/model/TraceLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/trace/model/LocType;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:D

.field private f:D

.field private g:Lcom/baidu/trace/model/CoordType;

.field private h:D

.field private i:F

.field private j:F

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/trace/model/a;

    invoke-direct {v0}, Lcom/baidu/trace/model/a;-><init>()V

    sput-object v0, Lcom/baidu/trace/model/TraceLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseResponse;-><init>()V

    sget-object v0, Lcom/baidu/trace/model/LocType;->NONE:Lcom/baidu/trace/model/LocType;

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->a:Lcom/baidu/trace/model/LocType;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->d:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/trace/model/TraceLocation;->e:D

    iput-wide v1, p0, Lcom/baidu/trace/model/TraceLocation;->f:D

    sget-object v3, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v3, p0, Lcom/baidu/trace/model/TraceLocation;->g:Lcom/baidu/trace/model/CoordType;

    iput-wide v1, p0, Lcom/baidu/trace/model/TraceLocation;->h:D

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/trace/model/TraceLocation;->i:F

    iput v1, p0, Lcom/baidu/trace/model/TraceLocation;->j:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/trace/model/TraceLocation;->k:I

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    sget-object p1, Lcom/baidu/trace/model/LocType;->NONE:Lcom/baidu/trace/model/LocType;

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->a:Lcom/baidu/trace/model/LocType;

    const-string p1, ""

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->d:Ljava/lang/String;

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/baidu/trace/model/TraceLocation;->e:D

    iput-wide p2, p0, Lcom/baidu/trace/model/TraceLocation;->f:D

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->g:Lcom/baidu/trace/model/CoordType;

    iput-wide p2, p0, Lcom/baidu/trace/model/TraceLocation;->h:D

    const/4 p2, 0x0

    iput p2, p0, Lcom/baidu/trace/model/TraceLocation;->i:F

    iput p2, p0, Lcom/baidu/trace/model/TraceLocation;->j:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/baidu/trace/model/TraceLocation;->k:I

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLcom/baidu/trace/model/CoordType;DFFILjava/lang/String;)V
    .locals 5

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseResponse;-><init>(IILjava/lang/String;)V

    sget-object v1, Lcom/baidu/trace/model/LocType;->NONE:Lcom/baidu/trace/model/LocType;

    iput-object v1, v0, Lcom/baidu/trace/model/TraceLocation;->a:Lcom/baidu/trace/model/LocType;

    const-string v1, ""

    iput-object v1, v0, Lcom/baidu/trace/model/TraceLocation;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/trace/model/TraceLocation;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/trace/model/TraceLocation;->d:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/baidu/trace/model/TraceLocation;->e:D

    iput-wide v2, v0, Lcom/baidu/trace/model/TraceLocation;->f:D

    sget-object v4, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v4, v0, Lcom/baidu/trace/model/TraceLocation;->g:Lcom/baidu/trace/model/CoordType;

    iput-wide v2, v0, Lcom/baidu/trace/model/TraceLocation;->h:D

    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/trace/model/TraceLocation;->i:F

    iput v2, v0, Lcom/baidu/trace/model/TraceLocation;->j:F

    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/trace/model/TraceLocation;->k:I

    iput-object v1, v0, Lcom/baidu/trace/model/TraceLocation;->l:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/baidu/trace/model/TraceLocation;->b:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/baidu/trace/model/TraceLocation;->c:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/baidu/trace/model/TraceLocation;->d:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/baidu/trace/model/TraceLocation;->e:D

    move-wide v1, p9

    iput-wide v1, v0, Lcom/baidu/trace/model/TraceLocation;->f:D

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/baidu/trace/model/TraceLocation;->g:Lcom/baidu/trace/model/CoordType;

    move-wide/from16 v1, p12

    iput-wide v1, v0, Lcom/baidu/trace/model/TraceLocation;->h:D

    move/from16 v1, p14

    iput v1, v0, Lcom/baidu/trace/model/TraceLocation;->i:F

    move/from16 v1, p15

    iput v1, v0, Lcom/baidu/trace/model/TraceLocation;->j:F

    move/from16 v1, p16

    iput v1, v0, Lcom/baidu/trace/model/TraceLocation;->k:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/baidu/trace/model/TraceLocation;->l:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseResponse;-><init>()V

    sget-object v0, Lcom/baidu/trace/model/LocType;->NONE:Lcom/baidu/trace/model/LocType;

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->a:Lcom/baidu/trace/model/LocType;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->d:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/trace/model/TraceLocation;->e:D

    iput-wide v1, p0, Lcom/baidu/trace/model/TraceLocation;->f:D

    sget-object v3, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v3, p0, Lcom/baidu/trace/model/TraceLocation;->g:Lcom/baidu/trace/model/CoordType;

    iput-wide v1, p0, Lcom/baidu/trace/model/TraceLocation;->h:D

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/trace/model/TraceLocation;->i:F

    iput v1, p0, Lcom/baidu/trace/model/TraceLocation;->j:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/trace/model/TraceLocation;->k:I

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/trace/model/TraceLocation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/trace/model/TraceLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAltitude()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/model/TraceLocation;->k:I

    return v0
.end method

.method public final getBuilding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getCoordType()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->g:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getDirection()F
    .locals 1

    iget v0, p0, Lcom/baidu/trace/model/TraceLocation;->i:F

    return v0
.end method

.method public final getFloor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndoor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/model/TraceLocation;->e:D

    return-wide v0
.end method

.method public final getLocType()Lcom/baidu/trace/model/LocType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->a:Lcom/baidu/trace/model/LocType;

    return-object v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/model/TraceLocation;->f:D

    return-wide v0
.end method

.method public final getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/model/TraceLocation;->h:D

    return-wide v0
.end method

.method public final getSpeed()F
    .locals 1

    iget v0, p0, Lcom/baidu/trace/model/TraceLocation;->j:F

    return v0
.end method

.method public final getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/trace/model/TraceLocation;->e:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/trace/model/TraceLocation;->f:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/baidu/trace/model/CoordType;->gcj02:Lcom/baidu/trace/model/CoordType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    :goto_0
    iput-object v0, p0, Lcom/baidu/trace/model/TraceLocation;->g:Lcom/baidu/trace/model/CoordType;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/trace/model/TraceLocation;->h:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/trace/model/TraceLocation;->i:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/trace/model/TraceLocation;->j:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/trace/model/TraceLocation;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->l:Ljava/lang/String;

    return-void
.end method

.method public final setAltitude(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/model/TraceLocation;->k:I

    return-void
.end method

.method public final setBuilding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->d:Ljava/lang/String;

    return-void
.end method

.method public final setCoordType(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->g:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public final setDirection(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/model/TraceLocation;->i:F

    return-void
.end method

.method public final setFloor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->b:Ljava/lang/String;

    return-void
.end method

.method public final setIndoor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->c:Ljava/lang/String;

    return-void
.end method

.method public final setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/model/TraceLocation;->e:D

    return-void
.end method

.method public final setLocType(Lcom/baidu/trace/model/LocType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->a:Lcom/baidu/trace/model/LocType;

    return-void
.end method

.method public final setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/model/TraceLocation;->f:D

    return-void
.end method

.method public final setRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/model/TraceLocation;->h:D

    return-void
.end method

.method public final setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/model/TraceLocation;->j:F

    return-void
.end method

.method public final setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/model/TraceLocation;->l:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "TraceLocation{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/model/TraceLocation;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/model/TraceLocation;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/model/TraceLocation;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", locType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/model/TraceLocation;->a:Lcom/baidu/trace/model/LocType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", floor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/model/TraceLocation;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", indoor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/model/TraceLocation;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", building=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/model/TraceLocation;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", latitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/baidu/trace/model/TraceLocation;->e:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v2, ", longitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/baidu/trace/model/TraceLocation;->f:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v2, ", coordType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/model/TraceLocation;->g:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", radius="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/baidu/trace/model/TraceLocation;->h:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v2, ", direction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/baidu/trace/model/TraceLocation;->i:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ", speed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/baidu/trace/model/TraceLocation;->j:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ", altitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/baidu/trace/model/TraceLocation;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/model/TraceLocation;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/baidu/trace/model/TraceLocation;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/trace/model/TraceLocation;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/trace/model/TraceLocation;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/trace/model/TraceLocation;->e:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/trace/model/TraceLocation;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lcom/baidu/trace/model/TraceLocation;->g:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {p2}, Lcom/baidu/trace/model/CoordType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/baidu/trace/model/TraceLocation;->h:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/baidu/trace/model/TraceLocation;->i:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/baidu/trace/model/TraceLocation;->j:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/baidu/trace/model/TraceLocation;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/trace/model/TraceLocation;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
