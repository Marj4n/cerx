.class public final enum Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;
.super Ljava/lang/Enum;
.source "ffmpegWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/ffmpegLib/ffmpegWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eEncodeContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

.field public static final enum E_EncodeContainer_AVI:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

.field public static final enum E_EncodeContainer_MP4:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    const-string v1, "E_EncodeContainer_MP4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;->E_EncodeContainer_MP4:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    .line 69
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    const-string v1, "E_EncodeContainer_AVI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;->E_EncodeContainer_AVI:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    .line 66
    sget-object v4, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;->E_EncodeContainer_MP4:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;->$VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;
    .locals 1

    .line 66
    const-class v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    return-object p0
.end method

.method public static values()[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;
    .locals 1

    .line 66
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;->$VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    invoke-virtual {v0}, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;

    return-object v0
.end method
