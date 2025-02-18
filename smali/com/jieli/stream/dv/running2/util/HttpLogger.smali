.class public Lcom/jieli/stream/dv/running2/util/HttpLogger;
.super Ljava/lang/Object;
.source "HttpLogger.java"

# interfaces
.implements Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# static fields
.field private static isLog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLog(Z)V
    .locals 0

    .line 15
    sput-boolean p0, Lcom/jieli/stream/dv/running2/util/HttpLogger;->isLog:Z

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-boolean v0, Lcom/jieli/stream/dv/running2/util/HttpLogger;->isLog:Z

    if-eqz v0, :cond_0

    const-string v0, "okHttp"

    .line 21
    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
