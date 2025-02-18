.class final Lcom/baidu/trace/ar$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:[B

.field c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/trace/ar$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/trace/ar$a;->b:[B

    iput-wide p3, p0, Lcom/baidu/trace/ar$a;->c:J

    return-void
.end method
