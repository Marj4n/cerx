.class final Lcom/baidu/trace/b/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/baidu/trace/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/trace/b/d;

    invoke-direct {v0}, Lcom/baidu/trace/b/d;-><init>()V

    sput-object v0, Lcom/baidu/trace/b/d$a;->a:Lcom/baidu/trace/b/d;

    return-void
.end method

.method static synthetic a()Lcom/baidu/trace/b/d;
    .locals 1

    sget-object v0, Lcom/baidu/trace/b/d$a;->a:Lcom/baidu/trace/b/d;

    return-object v0
.end method
