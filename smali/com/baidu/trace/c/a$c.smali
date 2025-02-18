.class public final enum Lcom/baidu/trace/c/a$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/c/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/trace/c/a$c;

.field public static final enum b:Lcom/baidu/trace/c/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/baidu/trace/c/a$c;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    new-instance v0, Lcom/baidu/trace/c/a$c;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

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
