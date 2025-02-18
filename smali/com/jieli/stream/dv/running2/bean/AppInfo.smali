.class public Lcom/jieli/stream/dv/running2/bean/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private appPlatform:Ljava/lang/String;

.field private appVersion:I

.field private dev_list:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private dev_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPlatform()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->appPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->appVersion:I

    return v0
.end method

.method public getDev_list()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->dev_list:Ljava/util/Map;

    return-object v0
.end method

.method public getDev_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->dev_type:Ljava/util/List;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppPlatform(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->appPlatform:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->appVersion:I

    return-void
.end method

.method public setDev_list(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->dev_list:Ljava/util/Map;

    return-void
.end method

.method public setDev_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->dev_type:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->dev_type:Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\t"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->dev_list:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 65
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v1, v4

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\nappName : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nappPlatform : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->appPlatform:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nappVersion : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jieli/stream/dv/running2/bean/AppInfo;->appVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\ndev_type : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ndev_list : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
