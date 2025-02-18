.class public final enum Lcom/baidu/trace/c/f$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/c/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/trace/c/f$b;

.field public static final enum b:Lcom/baidu/trace/c/f$b;

.field public static final enum c:Lcom/baidu/trace/c/f$b;

.field public static final enum d:Lcom/baidu/trace/c/f$b;

.field private static final synthetic e:[Lcom/baidu/trace/c/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/baidu/trace/c/f$b;

    const-string v1, "NOT_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/c/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/c/f$b;->a:Lcom/baidu/trace/c/f$b;

    new-instance v0, Lcom/baidu/trace/c/f$b;

    const-string v1, "LOGGING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/trace/c/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/c/f$b;->b:Lcom/baidu/trace/c/f$b;

    new-instance v0, Lcom/baidu/trace/c/f$b;

    const-string v1, "STARTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/trace/c/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/c/f$b;->c:Lcom/baidu/trace/c/f$b;

    new-instance v0, Lcom/baidu/trace/c/f$b;

    const-string v1, "LOGOUTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/trace/c/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/c/f$b;->d:Lcom/baidu/trace/c/f$b;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/baidu/trace/c/f$b;

    sget-object v6, Lcom/baidu/trace/c/f$b;->a:Lcom/baidu/trace/c/f$b;

    aput-object v6, v1, v2

    sget-object v2, Lcom/baidu/trace/c/f$b;->b:Lcom/baidu/trace/c/f$b;

    aput-object v2, v1, v3

    sget-object v2, Lcom/baidu/trace/c/f$b;->c:Lcom/baidu/trace/c/f$b;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/baidu/trace/c/f$b;->e:[Lcom/baidu/trace/c/f$b;

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

.method public static a()[Lcom/baidu/trace/c/f$b;
    .locals 1

    sget-object v0, Lcom/baidu/trace/c/f$b;->e:[Lcom/baidu/trace/c/f$b;

    invoke-virtual {v0}, [Lcom/baidu/trace/c/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/c/f$b;

    return-object v0
.end method
