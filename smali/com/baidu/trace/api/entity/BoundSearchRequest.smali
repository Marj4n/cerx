.class public final Lcom/baidu/trace/api/entity/BoundSearchRequest;
.super Lcom/baidu/trace/api/entity/CommonRequest;


# instance fields
.field private f:Lcom/baidu/trace/model/LatLng;

.field private g:Lcom/baidu/trace/model/LatLng;

.field private h:Lcom/baidu/trace/model/CoordType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>()V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJ)V

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;II)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;II)V

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/api/entity/SortBy;Lcom/baidu/trace/model/CoordType;II)V
    .locals 10

    move-object v9, p0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/api/entity/SortBy;Lcom/baidu/trace/model/CoordType;II)V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, v9, Lcom/baidu/trace/api/entity/BoundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    move-object v0, p4

    iput-object v0, v9, Lcom/baidu/trace/api/entity/BoundSearchRequest;->f:Lcom/baidu/trace/model/LatLng;

    move-object v0, p5

    iput-object v0, v9, Lcom/baidu/trace/api/entity/BoundSearchRequest;->g:Lcom/baidu/trace/model/LatLng;

    move-object/from16 v0, p6

    iput-object v0, v9, Lcom/baidu/trace/api/entity/BoundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public constructor <init>(IJLcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;Lcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;II)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;II)V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, v8, Lcom/baidu/trace/api/entity/BoundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    move-object v0, p4

    iput-object v0, v8, Lcom/baidu/trace/api/entity/BoundSearchRequest;->f:Lcom/baidu/trace/model/LatLng;

    move-object v0, p5

    iput-object v0, v8, Lcom/baidu/trace/api/entity/BoundSearchRequest;->g:Lcom/baidu/trace/model/LatLng;

    move-object v0, p6

    iput-object v0, v8, Lcom/baidu/trace/api/entity/BoundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method


# virtual methods
.method public final getCoordTypeInput()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public final getFilterCondition()Lcom/baidu/trace/api/entity/FilterCondition;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->a:Lcom/baidu/trace/api/entity/FilterCondition;

    return-object v0
.end method

.method public final getLowerLeft()Lcom/baidu/trace/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->f:Lcom/baidu/trace/model/LatLng;

    return-object v0
.end method

.method public final getUpperRight()Lcom/baidu/trace/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->g:Lcom/baidu/trace/model/LatLng;

    return-object v0
.end method

.method public final setCoordTypeInput(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public final setLowerLeft(Lcom/baidu/trace/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->f:Lcom/baidu/trace/model/LatLng;

    return-void
.end method

.method public final setUpperRight(Lcom/baidu/trace/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->g:Lcom/baidu/trace/model/LatLng;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BoundSearchRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", lowerLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->f:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", upperRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->g:Lcom/baidu/trace/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", coordTypeInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->h:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", filterCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->a:Lcom/baidu/trace/api/entity/FilterCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", sortBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->b:Lcom/baidu/trace/api/entity/SortBy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", coordTypeOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->c:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/BoundSearchRequest;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
