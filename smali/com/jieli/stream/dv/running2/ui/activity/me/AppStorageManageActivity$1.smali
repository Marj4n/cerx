.class Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$1;
.super Ljava/lang/Object;
.source "AppStorageManageActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IValueFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->setData(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    float-to-long p3, p1

    invoke-static {p2, p3, p4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
