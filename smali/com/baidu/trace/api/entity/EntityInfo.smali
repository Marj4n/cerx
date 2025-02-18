.class public final Lcom/baidu/trace/api/entity/EntityInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/baidu/trace/api/entity/LatestLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/baidu/trace/api/entity/LatestLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/trace/api/entity/LatestLocation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/trace/api/entity/EntityInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/trace/api/entity/EntityInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/trace/api/entity/EntityInfo;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/trace/api/entity/EntityInfo;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/baidu/trace/api/entity/EntityInfo;->f:Lcom/baidu/trace/api/entity/LatestLocation;

    return-void
.end method


# virtual methods
.method public final getColumns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/api/entity/EntityInfo;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/EntityInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntityDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/EntityInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/EntityInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatestLocation()Lcom/baidu/trace/api/entity/LatestLocation;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/EntityInfo;->f:Lcom/baidu/trace/api/entity/LatestLocation;

    return-object v0
.end method

.method public final getModifyTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/entity/EntityInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final setColumns(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->e:Ljava/util/Map;

    return-void
.end method

.method public final setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public final setEntityDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public final setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final setLatestLocation(Lcom/baidu/trace/api/entity/LatestLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->f:Lcom/baidu/trace/api/entity/LatestLocation;

    return-void
.end method

.method public final setModifyTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EntityInfo [entityName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", entityDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modifyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latestLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/api/entity/EntityInfo;->f:Lcom/baidu/trace/api/entity/LatestLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
