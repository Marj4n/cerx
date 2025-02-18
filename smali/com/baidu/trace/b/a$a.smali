.class public final enum Lcom/baidu/trace/b/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/trace/b/a$a;

.field public static final enum b:Lcom/baidu/trace/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/baidu/trace/b/a$a;

    const-string v1, "TCP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/b/a$a;->a:Lcom/baidu/trace/b/a$a;

    new-instance v0, Lcom/baidu/trace/b/a$a;

    const-string v1, "UDP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/b/a$a;->b:Lcom/baidu/trace/b/a$a;

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
