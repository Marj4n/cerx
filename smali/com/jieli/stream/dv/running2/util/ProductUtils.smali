.class public Lcom/jieli/stream/dv/running2/util/ProductUtils;
.super Ljava/lang/Object;
.source "ProductUtils.java"


# static fields
.field private static final MODEL_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHONE_MODEL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PLK-AL10"

    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/util/ProductUtils;->PHONE_MODEL:[Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/jieli/stream/dv/running2/util/ProductUtils;->PHONE_MODEL:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/ProductUtils;->MODEL_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isExistModel(Ljava/lang/String;)Z
    .locals 1

    .line 15
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ProductUtils;->MODEL_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
