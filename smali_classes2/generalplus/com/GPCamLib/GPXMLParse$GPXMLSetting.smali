.class public Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;
.super Ljava/lang/Object;
.source "GPXMLParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamLib/GPXMLParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GPXMLSetting"
.end annotation


# instance fields
.field public aryListGPXMLValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;",
            ">;"
        }
    .end annotation
.end field

.field public i32TreeLevel:I

.field public strXMLSettingCurrent:Ljava/lang/String;

.field public strXMLSettingDefaultValue:Ljava/lang/String;

.field public strXMLSettingID:Ljava/lang/String;

.field public strXMLSettingName:Ljava/lang/String;

.field public strXMLSettingReflash:Ljava/lang/String;

.field public strXMLSettingType:Ljava/lang/String;

.field final synthetic this$0:Lgeneralplus/com/GPCamLib/GPXMLParse;


# direct methods
.method public constructor <init>(Lgeneralplus/com/GPCamLib/GPXMLParse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->this$0:Lgeneralplus/com/GPCamLib/GPXMLParse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingCurrent:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingID:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingType:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingReflash:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    if-eqz p8, :cond_1

    const/4 p1, 0x0

    .line 82
    :goto_0
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 83
    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object p2, p2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueID:Ljava/lang/String;

    invoke-virtual {p2, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object p1, p1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    iput-object p1, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingCurrent:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    :goto_1
    iput p7, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->i32TreeLevel:I

    .line 91
    invoke-virtual {p8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    return-void
.end method
