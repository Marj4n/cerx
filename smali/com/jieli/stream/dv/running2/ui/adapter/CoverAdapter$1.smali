.class Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$1;
.super Ljava/lang/Object;
.source "CoverAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->addData(Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$1;->this$0:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;)I
    .locals 0

    .line 73
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 70
    check-cast p1, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$1;->compare(Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;)I

    move-result p1

    return p1
.end method
