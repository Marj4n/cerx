.class public final enum Lcom/baidu/trace/api/track/SupplementMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/api/track/SupplementMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/trace/api/track/SupplementMode;

.field public static final enum driving:Lcom/baidu/trace/api/track/SupplementMode;

.field public static final enum no_supplement:Lcom/baidu/trace/api/track/SupplementMode;

.field public static final enum riding:Lcom/baidu/trace/api/track/SupplementMode;

.field public static final enum straight:Lcom/baidu/trace/api/track/SupplementMode;

.field public static final enum walking:Lcom/baidu/trace/api/track/SupplementMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/baidu/trace/api/track/SupplementMode;

    const-string v1, "no_supplement"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/api/track/SupplementMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/track/SupplementMode;->no_supplement:Lcom/baidu/trace/api/track/SupplementMode;

    new-instance v0, Lcom/baidu/trace/api/track/SupplementMode;

    const-string v1, "straight"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/trace/api/track/SupplementMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/track/SupplementMode;->straight:Lcom/baidu/trace/api/track/SupplementMode;

    new-instance v0, Lcom/baidu/trace/api/track/SupplementMode;

    const-string v1, "driving"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/trace/api/track/SupplementMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/track/SupplementMode;->driving:Lcom/baidu/trace/api/track/SupplementMode;

    new-instance v0, Lcom/baidu/trace/api/track/SupplementMode;

    const-string v1, "riding"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/trace/api/track/SupplementMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/track/SupplementMode;->riding:Lcom/baidu/trace/api/track/SupplementMode;

    new-instance v0, Lcom/baidu/trace/api/track/SupplementMode;

    const-string v1, "walking"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/baidu/trace/api/track/SupplementMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/api/track/SupplementMode;->walking:Lcom/baidu/trace/api/track/SupplementMode;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/baidu/trace/api/track/SupplementMode;

    sget-object v7, Lcom/baidu/trace/api/track/SupplementMode;->no_supplement:Lcom/baidu/trace/api/track/SupplementMode;

    aput-object v7, v1, v2

    sget-object v2, Lcom/baidu/trace/api/track/SupplementMode;->straight:Lcom/baidu/trace/api/track/SupplementMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/trace/api/track/SupplementMode;->driving:Lcom/baidu/trace/api/track/SupplementMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/baidu/trace/api/track/SupplementMode;->riding:Lcom/baidu/trace/api/track/SupplementMode;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/baidu/trace/api/track/SupplementMode;->a:[Lcom/baidu/trace/api/track/SupplementMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/trace/api/track/SupplementMode;
    .locals 1

    const-class v0, Lcom/baidu/trace/api/track/SupplementMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/trace/api/track/SupplementMode;

    return-object p0
.end method

.method public static values()[Lcom/baidu/trace/api/track/SupplementMode;
    .locals 1

    sget-object v0, Lcom/baidu/trace/api/track/SupplementMode;->a:[Lcom/baidu/trace/api/track/SupplementMode;

    invoke-virtual {v0}, [Lcom/baidu/trace/api/track/SupplementMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/api/track/SupplementMode;

    return-object v0
.end method
