.class public Lcom/jieli/stream/dv/running2/bean/ItemBean;
.super Ljava/lang/Object;
.source "ItemBean.java"


# instance fields
.field private data:Ljava/lang/String;

.field private infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/ItemBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/ItemBean;->infoList:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/ItemBean;->data:Ljava/lang/String;

    return-void
.end method

.method public setInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/ItemBean;->infoList:Ljava/util/List;

    return-void
.end method
