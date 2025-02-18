.class public Lcom/jieli/stream/dv/running2/util/FileComparator;
.super Ljava/lang/Object;
.source "FileComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/jieli/stream/dv/running2/bean/SDFileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jieli/stream/dv/running2/bean/SDFileInfo;Lcom/jieli/stream/dv/running2/bean/SDFileInfo;)I
    .locals 1

    .line 16
    iget-boolean v0, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->IsDirectory:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->IsDirectory:Z

    if-nez v0, :cond_0

    const/16 p1, -0x3e8

    return p1

    .line 18
    :cond_0
    iget-boolean v0, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->IsDirectory:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->IsDirectory:Z

    if-eqz v0, :cond_1

    const/16 p1, 0x3e8

    return p1

    .line 22
    :cond_1
    iget-object p1, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Name:Ljava/lang/String;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/util/FileComparator;->compare(Lcom/jieli/stream/dv/running2/bean/SDFileInfo;Lcom/jieli/stream/dv/running2/bean/SDFileInfo;)I

    move-result p1

    return p1
.end method
