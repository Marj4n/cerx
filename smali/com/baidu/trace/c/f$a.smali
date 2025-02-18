.class public final enum Lcom/baidu/trace/c/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/trace/c/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/trace/c/f$a;

.field public static final enum b:Lcom/baidu/trace/c/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/baidu/trace/c/f$a;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/c/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/c/f$a;->a:Lcom/baidu/trace/c/f$a;

    new-instance v0, Lcom/baidu/trace/c/f$a;

    const-string v1, "ENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/baidu/trace/c/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/trace/c/f$a;->b:Lcom/baidu/trace/c/f$a;

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
