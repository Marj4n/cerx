.class public final enum Lcom/baidu/trace/model/SortType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/model/SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/trace/model/SortType;

.field public static final enum asc:Lcom/baidu/trace/model/SortType;

.field public static final enum desc:Lcom/baidu/trace/model/SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/baidu/trace/model/SortType;

    const-string v1, "asc"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/model/SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/model/SortType;->asc:Lcom/baidu/trace/model/SortType;

    new-instance v0, Lcom/baidu/trace/model/SortType;

    const-string v1, "desc"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/trace/model/SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/model/SortType;->desc:Lcom/baidu/trace/model/SortType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/baidu/trace/model/SortType;

    sget-object v4, Lcom/baidu/trace/model/SortType;->asc:Lcom/baidu/trace/model/SortType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/baidu/trace/model/SortType;->a:[Lcom/baidu/trace/model/SortType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/trace/model/SortType;
    .locals 1

    const-class v0, Lcom/baidu/trace/model/SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/trace/model/SortType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/trace/model/SortType;
    .locals 1

    sget-object v0, Lcom/baidu/trace/model/SortType;->a:[Lcom/baidu/trace/model/SortType;

    invoke-virtual {v0}, [Lcom/baidu/trace/model/SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/trace/model/SortType;

    return-object v0
.end method
