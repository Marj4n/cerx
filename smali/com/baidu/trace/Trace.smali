.class public Lcom/baidu/trace/Trace;
.super Ljava/lang/Object;


# static fields
.field protected static a:I = 0x5

.field protected static b:I = 0x1e

.field protected static c:I = 0x0

.field protected static d:I = 0x927c0

.field protected static e:Ljava/lang/String; = ""


# instance fields
.field private f:J

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/trace/Trace;->f:J

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/trace/Trace;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/Trace;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/Trace;->i:Landroid/app/Notification;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/trace/Trace;->f:J

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/trace/Trace;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/Trace;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/Trace;->i:Landroid/app/Notification;

    iput-wide p1, p0, Lcom/baidu/trace/Trace;->f:J

    invoke-virtual {p0, p3}, Lcom/baidu/trace/Trace;->setEntityName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/trace/Trace;->f:J

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/trace/Trace;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/Trace;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/Trace;->i:Landroid/app/Notification;

    iput-wide p1, p0, Lcom/baidu/trace/Trace;->f:J

    iput-boolean p4, p0, Lcom/baidu/trace/Trace;->h:Z

    invoke-virtual {p0, p3}, Lcom/baidu/trace/Trace;->setEntityName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ZLandroid/app/Notification;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/trace/Trace;->f:J

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/trace/Trace;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/Trace;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/Trace;->i:Landroid/app/Notification;

    iput-wide p1, p0, Lcom/baidu/trace/Trace;->f:J

    iput-object p3, p0, Lcom/baidu/trace/Trace;->g:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/baidu/trace/Trace;->h:Z

    iput-object p5, p0, Lcom/baidu/trace/Trace;->i:Landroid/app/Notification;

    return-void
.end method

.method protected static a(I)Z
    .locals 1

    const/16 v0, 0x32

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sput p0, Lcom/baidu/trace/Trace;->c:I

    const/4 p0, 0x1

    return p0
.end method

.method protected static a(II)Z
    .locals 2

    if-lez p0, :cond_1

    const/16 v0, 0x12c

    if-gt p0, v0, :cond_1

    if-lt p1, p0, :cond_1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    if-gt p1, v0, :cond_1

    rem-int v0, p1, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sput p0, Lcom/baidu/trace/Trace;->a:I

    sput p1, Lcom/baidu/trace/Trace;->b:I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static b(I)Z
    .locals 0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sput p0, Lcom/baidu/trace/Trace;->d:I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/Trace;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/Trace;->i:Landroid/app/Notification;

    return-object v0
.end method

.method public getServiceId()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/Trace;->f:J

    return-wide v0
.end method

.method public isNeedObjectStorage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/trace/Trace;->h:Z

    return v0
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/trace/Trace;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/baidu/trace/Trace;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setNeedObjectStorage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/trace/Trace;->h:Z

    return-void
.end method

.method public setNotification(Landroid/app/Notification;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/Trace;->i:Landroid/app/Notification;

    return-void
.end method

.method public setServiceId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/Trace;->f:J

    return-void
.end method
