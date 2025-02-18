.class public final enum Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;
.super Ljava/lang/Enum;
.source "Texture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/Texture2dProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgramType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_2D:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_CUSTOM:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_BULGE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_BW:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_CHROMA_KEY:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_DENT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_FILT3x3:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_FISHEYE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_MIRROR:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_NIGHT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_SQUEEZE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_STRETCH:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_TUNNEL:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_TWIRL:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_FILT3x3:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 37
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 40
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_FILT3x3"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_FILT3x3:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 41
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_CUSTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_CUSTOM:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 43
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 44
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_BW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_BW:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 45
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_NIGHT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_NIGHT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 46
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_CHROMA_KEY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_CHROMA_KEY:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 47
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_SQUEEZE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_SQUEEZE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 48
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_TWIRL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_TWIRL:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 49
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_TUNNEL"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_TUNNEL:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 50
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_BULGE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_BULGE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 51
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_DENT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_DENT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 52
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_FISHEYE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_FISHEYE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 53
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_STRETCH"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_STRETCH:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 54
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_MIRROR"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_MIRROR:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 57
    new-instance v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_FILT3x3"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_FILT3x3:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 35
    sget-object v16, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v16, v1, v2

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_FILT3x3:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_CUSTOM:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_BW:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_NIGHT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_CHROMA_KEY:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_SQUEEZE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_TWIRL:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_TUNNEL:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_BULGE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_DENT:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_FISHEYE:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    aput-object v2, v1, v14

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_STRETCH:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_EXT_MIRROR:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->$VALUES:[Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;
    .locals 1

    .line 35
    const-class v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    return-object p0
.end method

.method public static values()[Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;
    .locals 1

    .line 35
    sget-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->$VALUES:[Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    invoke-virtual {v0}, [Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    return-object v0
.end method
