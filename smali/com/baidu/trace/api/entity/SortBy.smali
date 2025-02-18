.class public Lcom/baidu/trace/api/entity/SortBy;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/trace/model/SortType;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/baidu/trace/model/SortType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/entity/SortBy;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/trace/api/entity/SortBy;->b:Lcom/baidu/trace/model/SortType;

    return-void
.end method

.method public static buildCustomKey(Ljava/lang/String;Lcom/baidu/trace/model/SortType;)Lcom/baidu/trace/api/entity/SortBy;
    .locals 1

    new-instance v0, Lcom/baidu/trace/api/entity/SortBy;

    invoke-direct {v0, p0, p1}, Lcom/baidu/trace/api/entity/SortBy;-><init>(Ljava/lang/String;Lcom/baidu/trace/model/SortType;)V

    return-object v0
.end method

.method public static buildEntityDesc(Lcom/baidu/trace/model/SortType;)Lcom/baidu/trace/api/entity/SortBy;
    .locals 2

    new-instance v0, Lcom/baidu/trace/api/entity/SortBy;

    const-string v1, "entity_desc"

    invoke-direct {v0, v1, p0}, Lcom/baidu/trace/api/entity/SortBy;-><init>(Ljava/lang/String;Lcom/baidu/trace/model/SortType;)V

    return-object v0
.end method

.method public static buildEntityName(Lcom/baidu/trace/model/SortType;)Lcom/baidu/trace/api/entity/SortBy;
    .locals 2

    new-instance v0, Lcom/baidu/trace/api/entity/SortBy;

    const-string v1, "entity_name"

    invoke-direct {v0, v1, p0}, Lcom/baidu/trace/api/entity/SortBy;-><init>(Ljava/lang/String;Lcom/baidu/trace/model/SortType;)V

    return-object v0
.end method

.method public static buildLocTime(Lcom/baidu/trace/model/SortType;)Lcom/baidu/trace/api/entity/SortBy;
    .locals 2

    new-instance v0, Lcom/baidu/trace/api/entity/SortBy;

    const-string v1, "loc_time"

    invoke-direct {v0, v1, p0}, Lcom/baidu/trace/api/entity/SortBy;-><init>(Ljava/lang/String;Lcom/baidu/trace/model/SortType;)V

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/SortBy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSortType()Lcom/baidu/trace/model/SortType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/SortBy;->b:Lcom/baidu/trace/model/SortType;

    return-object v0
.end method

.method public setSortType(Lcom/baidu/trace/model/SortType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/SortBy;->b:Lcom/baidu/trace/model/SortType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SortBy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "fieldName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/SortBy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", sortType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/SortBy;->b:Lcom/baidu/trace/model/SortType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
