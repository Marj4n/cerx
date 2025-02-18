.class final Lcom/baidu/trace/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthResult(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/baidu/trace/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
