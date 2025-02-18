.class public Lcom/jieli/lib/dv/control/json/bean/CmdInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/jieli/lib/dv/control/json/bean/CmdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo$1;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo$1;-><init>()V

    sput-object v0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->a:Ljava/lang/String;

    const/16 v0, -0x64

    .line 9
    iput v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->b:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->d:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->e:Landroidx/collection/ArrayMap;

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->b:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->d:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->e:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorType()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->b:I

    return v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->e:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorType(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->b:I

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setParams(Landroidx/collection/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->e:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 44
    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 50
    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v0, p3, p4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 57
    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v0, p3, p4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v0, p5, p6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, v0}, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->setParams(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Topic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->e:Landroidx/collection/ArrayMap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 96
    iget p2, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object p2, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->e:Landroidx/collection/ArrayMap;

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object p2, p0, Lcom/jieli/lib/dv/control/json/bean/CmdInfo;->e:Landroidx/collection/ArrayMap;

    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
