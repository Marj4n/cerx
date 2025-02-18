.class public abstract Lcom/serenegiant/net/AbstractChannelDataLink;
.super Ljava/lang/Object;
.source "AbstractChannelDataLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;,
        Lcom/serenegiant/net/AbstractChannelDataLink$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final REQ_RELEASE:I = -0x9

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_BOOL:I = 0xa

.field private static final TYPE_BOOL_ARRAY:I = 0x1f

.field private static final TYPE_BYTE_ARRAY:I = 0x1e

.field private static final TYPE_BYTE_BUFFER:I = 0x1

.field private static final TYPE_DOUBLE:I = 0x15

.field private static final TYPE_DOUBLE_ARRAY:I = 0x29

.field private static final TYPE_FLOAT:I = 0x14

.field private static final TYPE_FLOAT_ARRAY:I = 0x28

.field private static final TYPE_INT:I = 0xb

.field private static final TYPE_INT_ARRAY:I = 0x20

.field private static final TYPE_LONG:I = 0xc

.field private static final TYPE_LONG_ARRAY:I = 0x21

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_STRING:I = 0x2

.field private static final TYPE_UNKNOWN:I = -0x1

.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/serenegiant/net/AbstractChannelDataLink$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/serenegiant/net/AbstractChannelDataLink;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/net/AbstractChannelDataLink;->TAG:Ljava/lang/String;

    const-string v0, "UTF-8"

    .line 44
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/net/AbstractChannelDataLink;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink;->mClients:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink;->mCallbacks:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/AbstractChannelDataLink$Callback;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/serenegiant/net/AbstractChannelDataLink;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/serenegiant/net/AbstractChannelDataLink;->add(Lcom/serenegiant/net/AbstractChannelDataLink$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/serenegiant/net/AbstractChannelDataLink;->mClients:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/net/AbstractChannelDataLink;)Ljava/util/Set;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/serenegiant/net/AbstractChannelDataLink;->mCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/serenegiant/net/AbstractChannelDataLink;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected add(Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink;->mClients:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public add(Lcom/serenegiant/net/AbstractChannelDataLink$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/net/AbstractChannelDataLink;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public release()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink;->mClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;

    .line 104
    invoke-virtual {v1}, Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;->release()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink;->mClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public remove(Lcom/serenegiant/net/AbstractChannelDataLink$AbstractClient;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink;->mClients:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(Lcom/serenegiant/net/AbstractChannelDataLink$Callback;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/serenegiant/net/AbstractChannelDataLink;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
