.class public Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Method;

.field public object:Ljava/lang/Object;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->tag:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->object:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->method:Ljava/lang/reflect/Method;

    .line 18
    iput-object p3, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->args:[Ljava/lang/Object;

    return-void
.end method

.method public static safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;

    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->safeInvoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public safeInvoke()Ljava/lang/Object;
    .locals 3

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->object:Ljava/lang/Object;

    iget-object v2, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/jieli/lib/dv/control/utils/proxy/ProxyBulk;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
