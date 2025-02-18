.class public final enum Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;
.super Ljava/lang/Enum;
.source "ffmpegWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/ffmpegLib/ffmpegWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eFFMPEG_ERRCODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

.field public static final enum FFMPEGPLAYER_CREATESAVESTREAMFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

.field public static final enum FFMPEGPLAYER_INITMEDIAFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

.field public static final enum FFMPEGPLAYER_MEDIAISPLAYING:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

.field public static final enum FFMPEGPLAYER_NOERROR:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

.field public static final enum FFMPEGPLAYER_SAVESNAPSHOTFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

.field public static final enum FFMPEGPLAYER_SAVEVIDEOFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 41
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    const-string v1, "FFMPEGPLAYER_NOERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_NOERROR:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    .line 42
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    const-string v1, "FFMPEGPLAYER_INITMEDIAFAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_INITMEDIAFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    .line 43
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    const-string v1, "FFMPEGPLAYER_MEDIAISPLAYING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_MEDIAISPLAYING:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    .line 44
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    const-string v1, "FFMPEGPLAYER_CREATESAVESTREAMFAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_CREATESAVESTREAMFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    .line 45
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    const-string v1, "FFMPEGPLAYER_SAVESNAPSHOTFAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_SAVESNAPSHOTFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    .line 46
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    const-string v1, "FFMPEGPLAYER_SAVEVIDEOFAILED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_SAVEVIDEOFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    .line 39
    sget-object v8, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_NOERROR:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    aput-object v8, v1, v2

    sget-object v2, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_INITMEDIAFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_MEDIAISPLAYING:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_CREATESAVESTREAMFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->FFMPEGPLAYER_SAVESNAPSHOTFAILED:Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->$VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;
    .locals 1

    .line 39
    const-class v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    return-object p0
.end method

.method public static values()[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;
    .locals 1

    .line 39
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->$VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    invoke-virtual {v0}, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;

    return-object v0
.end method
