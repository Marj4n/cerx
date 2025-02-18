.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$FileComparator;
.super Ljava/lang/Object;
.source "DevPhotoFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$FileComparator;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jieli/stream/dv/running2/bean/FileInfo;Lcom/jieli/stream/dv/running2/bean/FileInfo;)I
    .locals 5

    .line 409
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 405
    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$FileComparator;->compare(Lcom/jieli/stream/dv/running2/bean/FileInfo;Lcom/jieli/stream/dv/running2/bean/FileInfo;)I

    move-result p1

    return p1
.end method
