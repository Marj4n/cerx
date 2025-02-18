.class public final Lcom/baidu/trace/api/entity/DistrictSearchRequest;
.super Lcom/baidu/trace/api/entity/CommonRequest;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/baidu/trace/api/entity/ReturnType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>()V

    sget-object v0, Lcom/baidu/trace/api/entity/ReturnType;->all:Lcom/baidu/trace/api/entity/ReturnType;

    iput-object v0, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->g:Lcom/baidu/trace/api/entity/ReturnType;

    return-void
.end method

.method public constructor <init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/api/entity/SortBy;Lcom/baidu/trace/model/CoordType;Ljava/lang/String;Lcom/baidu/trace/api/entity/ReturnType;II)V
    .locals 10

    move-object v9, p0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/api/entity/SortBy;Lcom/baidu/trace/model/CoordType;II)V

    sget-object v0, Lcom/baidu/trace/api/entity/ReturnType;->all:Lcom/baidu/trace/api/entity/ReturnType;

    iput-object v0, v9, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->g:Lcom/baidu/trace/api/entity/ReturnType;

    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->f:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, v9, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->g:Lcom/baidu/trace/api/entity/ReturnType;

    return-void
.end method

.method public constructor <init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;Ljava/lang/String;Lcom/baidu/trace/api/entity/ReturnType;II)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;II)V

    sget-object v0, Lcom/baidu/trace/api/entity/ReturnType;->all:Lcom/baidu/trace/api/entity/ReturnType;

    iput-object v0, v8, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->g:Lcom/baidu/trace/api/entity/ReturnType;

    move-object v0, p6

    iput-object v0, v8, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->f:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, v8, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->g:Lcom/baidu/trace/api/entity/ReturnType;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Lcom/baidu/trace/api/entity/ReturnType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/api/entity/CommonRequest;-><init>(IJ)V

    sget-object p1, Lcom/baidu/trace/api/entity/ReturnType;->all:Lcom/baidu/trace/api/entity/ReturnType;

    iput-object p1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->g:Lcom/baidu/trace/api/entity/ReturnType;

    iput-object p4, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->g:Lcom/baidu/trace/api/entity/ReturnType;

    return-void
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getReturnType()Lcom/baidu/trace/api/entity/ReturnType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->g:Lcom/baidu/trace/api/entity/ReturnType;

    return-object v0
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public final setReturnType(Lcom/baidu/trace/api/entity/ReturnType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->g:Lcom/baidu/trace/api/entity/ReturnType;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "DistrictSearchRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", filterCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->a:Lcom/baidu/trace/api/entity/FilterCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", sortBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->b:Lcom/baidu/trace/api/entity/SortBy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", coordTypeOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->c:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", keyword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", returnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->g:Lcom/baidu/trace/api/entity/ReturnType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/DistrictSearchRequest;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
