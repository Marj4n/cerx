.class Lcom/baidu/platform/comapi/util/PermissionCheck$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/util/PermissionCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/platform/comapi/util/PermissionCheck$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/util/PermissionCheck$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthResult(ILjava/lang/String;)V
    .locals 6

    const-string p1, "token"

    const-string v0, "message"

    const-string v1, "uid"

    const-string v2, "appid"

    const-string v3, "status"

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v4, Lcom/baidu/platform/comapi/util/PermissionCheck$b;

    invoke-direct {v4}, Lcom/baidu/platform/comapi/util/PermissionCheck$b;-><init>()V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v4, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->a:I

    :cond_1
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->c:Ljava/lang/String;

    :cond_2
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->b:Ljava/lang/String;

    :cond_3
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->d:Ljava/lang/String;

    :cond_4
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_0
    invoke-static {}, Lcom/baidu/platform/comapi/util/PermissionCheck;->a()Lcom/baidu/platform/comapi/util/PermissionCheck$c;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/baidu/platform/comapi/util/PermissionCheck;->a()Lcom/baidu/platform/comapi/util/PermissionCheck$c;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/baidu/platform/comapi/util/PermissionCheck$c;->a(Lcom/baidu/platform/comapi/util/PermissionCheck$b;)V

    :cond_6
    return-void
.end method
