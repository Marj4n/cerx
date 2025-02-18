.class public final enum Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;
.super Ljava/lang/Enum;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/util/WifiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiCipherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

.field public static final enum IEEE8021XEAP:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

.field public static final enum NONE:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

.field public static final enum WEP:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

.field public static final enum WPA:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

.field public static final enum WPA2:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

.field public static final enum WPAWPA2:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 462
    new-instance v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->NONE:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    new-instance v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    const-string v1, "IEEE8021XEAP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->IEEE8021XEAP:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    new-instance v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    const-string v1, "WEP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->WEP:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    new-instance v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    const-string v1, "WPA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->WPA:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    new-instance v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    const-string v1, "WPA2"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->WPA2:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    new-instance v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    const-string v1, "WPAWPA2"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->WPAWPA2:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    .line 461
    sget-object v8, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->NONE:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->IEEE8021XEAP:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->WEP:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->WPA:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->WPA2:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->$VALUES:[Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 461
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;
    .locals 1

    .line 461
    const-class v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    return-object p0
.end method

.method public static values()[Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;
    .locals 1

    .line 461
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->$VALUES:[Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    invoke-virtual {v0}, [Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    return-object v0
.end method
