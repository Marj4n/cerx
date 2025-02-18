.class public final Lcom/baidu/trace/a/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:B

.field public c:B

.field public d:S

.field public e:S

.field public f:I

.field public g:I

.field public h:[I

.field public i:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/a/c;->a:Z

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/baidu/trace/a/c;->h:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/baidu/trace/a/c;->i:[I

    return-void
.end method
