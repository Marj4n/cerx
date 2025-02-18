.class public final Lcom/baidu/trace/q;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/lang/String; = null

.field protected static b:Ljava/lang/String; = null

.field protected static c:Ljava/lang/String; = null

.field protected static d:Ljava/lang/String; = null

.field private static e:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;)V
    .locals 2

    sget-boolean v0, Lcom/baidu/trace/q;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/trace/q;->a:Ljava/lang/String;

    const-string v0, "3.0.7"

    sput-object v0, Lcom/baidu/trace/q;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getCUID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/trace/q;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/trace/c/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/trace/q;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getKey()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getMCode()Ljava/lang/String;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/baidu/trace/q;->e:Z

    return-void
.end method
