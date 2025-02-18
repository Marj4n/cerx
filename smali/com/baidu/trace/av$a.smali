.class final enum Lcom/baidu/trace/av$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/av$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/trace/av$a;

.field public static final enum b:Lcom/baidu/trace/av$a;

.field public static final enum c:Lcom/baidu/trace/av$a;

.field public static final enum d:Lcom/baidu/trace/av$a;

.field public static final enum e:Lcom/baidu/trace/av$a;

.field private static final synthetic g:[Lcom/baidu/trace/av$a;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/baidu/trace/av$a;

    const-string v1, "ARMEABI"

    const/4 v2, 0x0

    const-string v3, "armeabi"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/trace/av$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/trace/av$a;->a:Lcom/baidu/trace/av$a;

    new-instance v0, Lcom/baidu/trace/av$a;

    const-string v1, "ARMV7"

    const/4 v3, 0x1

    const-string v4, "armeabi-v7a"

    invoke-direct {v0, v1, v3, v4}, Lcom/baidu/trace/av$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/trace/av$a;->b:Lcom/baidu/trace/av$a;

    new-instance v0, Lcom/baidu/trace/av$a;

    const-string v1, "ARM64"

    const/4 v4, 0x2

    const-string v5, "arm64-v8a"

    invoke-direct {v0, v1, v4, v5}, Lcom/baidu/trace/av$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/trace/av$a;->c:Lcom/baidu/trace/av$a;

    new-instance v0, Lcom/baidu/trace/av$a;

    const-string v1, "X86"

    const/4 v5, 0x3

    const-string v6, "x86"

    invoke-direct {v0, v1, v5, v6}, Lcom/baidu/trace/av$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/trace/av$a;->d:Lcom/baidu/trace/av$a;

    new-instance v0, Lcom/baidu/trace/av$a;

    const-string v1, "X86_64"

    const/4 v6, 0x4

    const-string v7, "x86_64"

    invoke-direct {v0, v1, v6, v7}, Lcom/baidu/trace/av$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/trace/av$a;->e:Lcom/baidu/trace/av$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/baidu/trace/av$a;

    sget-object v7, Lcom/baidu/trace/av$a;->a:Lcom/baidu/trace/av$a;

    aput-object v7, v1, v2

    sget-object v2, Lcom/baidu/trace/av$a;->b:Lcom/baidu/trace/av$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/trace/av$a;->c:Lcom/baidu/trace/av$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/baidu/trace/av$a;->d:Lcom/baidu/trace/av$a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/baidu/trace/av$a;->g:[Lcom/baidu/trace/av$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/trace/av$a;->f:Ljava/lang/String;

    return-void
.end method

.method public static a()[Lcom/baidu/trace/av$a;
    .locals 1

    sget-object v0, Lcom/baidu/trace/av$a;->g:[Lcom/baidu/trace/av$a;

    invoke-virtual {v0}, [Lcom/baidu/trace/av$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/av$a;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/av$a;->f:Ljava/lang/String;

    return-object v0
.end method
