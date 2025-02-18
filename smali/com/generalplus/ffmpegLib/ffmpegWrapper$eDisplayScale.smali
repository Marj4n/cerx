.class public final enum Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;
.super Ljava/lang/Enum;
.source "ffmpegWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/ffmpegLib/ffmpegWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eDisplayScale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

.field public static final enum E_DisplayScale_Fill:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

.field public static final enum E_DisplayScale_Fit:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

.field public static final enum E_DisplayScale_Stretch:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    const-string v1, "E_DisplayScale_Fit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;->E_DisplayScale_Fit:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    .line 61
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    const-string v1, "E_DisplayScale_Fill"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;->E_DisplayScale_Fill:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    .line 62
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    const-string v1, "E_DisplayScale_Stretch"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;->E_DisplayScale_Stretch:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    .line 58
    sget-object v5, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;->E_DisplayScale_Fit:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    aput-object v5, v1, v2

    sget-object v2, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;->E_DisplayScale_Fill:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;->$VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;
    .locals 1

    .line 58
    const-class v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    return-object p0
.end method

.method public static values()[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;
    .locals 1

    .line 58
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;->$VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    invoke-virtual {v0}, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;

    return-object v0
.end method
