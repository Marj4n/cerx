.class final Lcom/jieli/stream/dv/running2/util/AppUtils$2;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/AppUtils;->descSortWay(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 363
    const-class v0, Lcom/jieli/stream/dv/running2/util/AppUtils;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jieli/stream/dv/running2/bean/FileInfo;Lcom/jieli/stream/dv/running2/bean/FileInfo;)I
    .locals 1

    .line 366
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getFileEndTime()Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getFileEndTime()Ljava/lang/String;

    move-result-object p2

    .line 370
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 372
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 363
    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/util/AppUtils$2;->compare(Lcom/jieli/stream/dv/running2/bean/FileInfo;Lcom/jieli/stream/dv/running2/bean/FileInfo;)I

    move-result p1

    return p1
.end method
