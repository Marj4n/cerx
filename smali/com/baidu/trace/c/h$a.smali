.class public final enum Lcom/baidu/trace/c/h$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/c/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/trace/c/h$a;

.field public static final enum b:Lcom/baidu/trace/c/h$a;

.field public static final enum c:Lcom/baidu/trace/c/h$a;

.field public static final enum d:Lcom/baidu/trace/c/h$a;

.field private static final synthetic e:[Lcom/baidu/trace/c/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/baidu/trace/c/h$a;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/trace/c/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/trace/c/h$a;->a:Lcom/baidu/trace/c/h$a;

    new-instance v0, Lcom/baidu/trace/c/h$a;

    const-string v1, "INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/trace/c/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/trace/c/h$a;->b:Lcom/baidu/trace/c/h$a;

    new-instance v0, Lcom/baidu/trace/c/h$a;

    const-string v1, "WARNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/trace/c/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/trace/c/h$a;->c:Lcom/baidu/trace/c/h$a;

    new-instance v0, Lcom/baidu/trace/c/h$a;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/trace/c/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/trace/c/h$a;->d:Lcom/baidu/trace/c/h$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/baidu/trace/c/h$a;

    sget-object v6, Lcom/baidu/trace/c/h$a;->a:Lcom/baidu/trace/c/h$a;

    aput-object v6, v1, v2

    sget-object v2, Lcom/baidu/trace/c/h$a;->b:Lcom/baidu/trace/c/h$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/trace/c/h$a;->c:Lcom/baidu/trace/c/h$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/baidu/trace/c/h$a;->e:[Lcom/baidu/trace/c/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/baidu/trace/c/h$a;
    .locals 1

    sget-object v0, Lcom/baidu/trace/c/h$a;->e:[Lcom/baidu/trace/c/h$a;

    invoke-virtual {v0}, [Lcom/baidu/trace/c/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/c/h$a;

    return-object v0
.end method
