.class public Lcom/baidu/trace/api/entity/CommonRequest;
.super Lcom/baidu/trace/model/BaseRequest;


# instance fields
.field protected a:Lcom/baidu/trace/api/entity/FilterCondition;

.field protected b:Lcom/baidu/trace/api/entity/SortBy;

.field protected c:Lcom/baidu/trace/model/CoordType;

.field protected d:I

.field protected e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/model/BaseRequest;-><init>()V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object v0, p0, Lcom/baidu/trace/api/entity/CommonRequest;->c:Lcom/baidu/trace/model/CoordType;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/trace/api/entity/CommonRequest;->d:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/trace/api/entity/CommonRequest;->e:I

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->c:Lcom/baidu/trace/model/CoordType;

    const/4 p1, 0x1

    iput p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->d:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->e:I

    return-void
.end method

.method public constructor <init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/api/entity/SortBy;Lcom/baidu/trace/model/CoordType;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->c:Lcom/baidu/trace/model/CoordType;

    const/4 p1, 0x1

    iput p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->d:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->e:I

    iput-object p4, p0, Lcom/baidu/trace/api/entity/CommonRequest;->a:Lcom/baidu/trace/api/entity/FilterCondition;

    iput-object p5, p0, Lcom/baidu/trace/api/entity/CommonRequest;->b:Lcom/baidu/trace/api/entity/SortBy;

    iput-object p6, p0, Lcom/baidu/trace/api/entity/CommonRequest;->c:Lcom/baidu/trace/model/CoordType;

    iput p7, p0, Lcom/baidu/trace/api/entity/CommonRequest;->d:I

    iput p8, p0, Lcom/baidu/trace/api/entity/CommonRequest;->e:I

    return-void
.end method

.method public constructor <init>(IJLcom/baidu/trace/api/entity/FilterCondition;Lcom/baidu/trace/model/CoordType;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/model/BaseRequest;-><init>(IJ)V

    sget-object p1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    iput-object p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->c:Lcom/baidu/trace/model/CoordType;

    const/4 p1, 0x1

    iput p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->d:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->e:I

    iput-object p4, p0, Lcom/baidu/trace/api/entity/CommonRequest;->a:Lcom/baidu/trace/api/entity/FilterCondition;

    iput-object p5, p0, Lcom/baidu/trace/api/entity/CommonRequest;->c:Lcom/baidu/trace/model/CoordType;

    iput p6, p0, Lcom/baidu/trace/api/entity/CommonRequest;->d:I

    iput p7, p0, Lcom/baidu/trace/api/entity/CommonRequest;->e:I

    return-void
.end method


# virtual methods
.method public getCoordTypeOutput()Lcom/baidu/trace/model/CoordType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/CommonRequest;->c:Lcom/baidu/trace/model/CoordType;

    return-object v0
.end method

.method public getFilterCondition()Lcom/baidu/trace/api/entity/FilterCondition;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/CommonRequest;->a:Lcom/baidu/trace/api/entity/FilterCondition;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/entity/CommonRequest;->d:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/baidu/trace/api/entity/CommonRequest;->e:I

    return v0
.end method

.method public getSortBy()Lcom/baidu/trace/api/entity/SortBy;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/CommonRequest;->b:Lcom/baidu/trace/api/entity/SortBy;

    return-object v0
.end method

.method public setCoordTypeOutput(Lcom/baidu/trace/model/CoordType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->c:Lcom/baidu/trace/model/CoordType;

    return-void
.end method

.method public setFilterCondition(Lcom/baidu/trace/api/entity/FilterCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->a:Lcom/baidu/trace/api/entity/FilterCondition;

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->d:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->e:I

    return-void
.end method

.method public setSortBy(Lcom/baidu/trace/api/entity/SortBy;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->b:Lcom/baidu/trace/api/entity/SortBy;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CommonRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->serviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ", filterCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->a:Lcom/baidu/trace/api/entity/FilterCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", sortBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->b:Lcom/baidu/trace/api/entity/SortBy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", coordTypeOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->c:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/trace/api/entity/CommonRequest;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
