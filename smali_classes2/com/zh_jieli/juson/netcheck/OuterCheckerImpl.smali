.class public Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;
.super Ljava/lang/Object;
.source "OuterCheckerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;,
        Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;
    }
.end annotation


# instance fields
.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private result:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->result:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    const-string v2, "qq.com"

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "host"

    const-string v4, "125.39.240.113"

    .line 30
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x50

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "port"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v7, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x1bb

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v7, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "61.135.157.156"

    .line 42
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v5, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->result:Z

    return p1
.end method

.method public static check(J)Z
    .locals 2

    .line 64
    :try_start_0
    new-instance v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;

    invoke-direct {v0}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;-><init>()V

    .line 65
    iget-object v1, v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->mList:Ljava/util/List;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->realCheck(Ljava/util/List;J)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static check(Ljava/util/List;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap;",
            ">;J)Z"
        }
    .end annotation

    .line 56
    :try_start_0
    new-instance v0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;

    invoke-direct {v0}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->realCheck(Ljava/util/List;J)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public realCheck(Ljava/util/List;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->result:Z

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;

    new-instance v6, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$1;

    invoke-direct {v6, p0}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$1;-><init>(Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;-><init>(Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;Ljava/util/List;JLcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 81
    iget-boolean p1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;->result:Z

    return p1
.end method
