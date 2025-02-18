.class public Lcom/baidu/trace/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/trace/c/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result p1

    sput p1, Lcom/baidu/trace/c/e;->d:I

    return-void
.end method
