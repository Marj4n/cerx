.class public final Lcom/baidu/trace/api/entity/AroundSearchRequest;
.super Lcom/baidu/trace/api/entity/CommonRequest;


# instance fields
.field private f:Lcom/baidu/trace/model/LatLng;

.field private g:D

.field private h:Lcom/baidu/trace/model/CoordType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>()V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJ)V

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;II)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;II)V

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLcom/baidu/trace/model/LatLng;DLcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/api/entity/SortBy;Lcom/baidu/trace/model/CoordType;II)V
    .locals 10

    move-object v9, p0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/api/entity/SortBy;Lcom/baidu/trace/model/CoordType;II)V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, v9, Lcom/baidu/trace/api/entity/AroundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    move-object v0, p4

    iput-object v0, v9, Lcom/baidu/trace/api/entity/AroundSearchRequest;->f:Lcom/baidu/trace/model/LatLng;

    move-wide v0, p5

    iput-wide v0, v9, Lcom/baidu/trace/api/entity/AroundSearchRequest;->g:D

    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/baidu/trace/api/entity/AroundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLcom/baidu/trace/model/LatLng;DLcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;II)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    invoke-direct/range {v0 .. v7}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;II)V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, v8, Lcom/baidu/trace/api/entity/AroundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    move-object v0, p4

    iput-object v0, v8, Lcom/baidu/trace/api/entity/AroundSearchRequest;->f:Lcom/baidu/trace/model/LatLng;

    move-wide v0, p5

    iput-wide v0, v8, Lcom/baidu/trace/api/entity/AroundSearchRequest;->g:D

    move-object/from16 v0, p7

    iput-object v0, v8, Lcom/baidu/trace/api/entity/AroundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method


# virtual methods
.method public final getCenter()Lcom/baidu/trace/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->f:Lcom/baidu/trace/model/LatLng;

    return-object v0
.end method

.method public final getCoordTypeInput()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->g:D

    return-wide v0
.end method

.method public final setCenter(Lcom/baidu/trace/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->f:Lcom/baidu/trace/model/LatLng;

    return-void
.end method

.method public final setCoordTypeInput(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public final setRadius(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->g:D

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "AroundSearchRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->f:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ", coordTypeInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", filterCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->a:Lcom/baidu/trace/api/entity/FilterCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", sortBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->b:Lcom/baidu/trace/api/entity/SortBy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", coordTypeOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->c:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/AroundSearchRequest;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
