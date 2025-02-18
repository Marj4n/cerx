.class public final Lcom/baidu/trace/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/trace/o;

    invoke-direct {v0}, Lcom/baidu/trace/o;-><init>()V

    sput-object v0, Lcom/baidu/trace/n;->a:Ljava/util/Map;

    return-void
.end method
