.class public Lcom/baidu/trace/api/track/FailInfo$ParamError;
.super Lcom/baidu/trace/api/track/FailInfo$InternalError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/api/track/FailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParamError"
.end annotation


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/trace/api/track/FailInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/trace/api/track/FailInfo$InternalError;-><init>(Lcom/baidu/trace/api/track/FailInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/api/track/FailInfo;Ljava/lang/String;Lcom/baidu/trace/api/track/TrackPoint;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/api/track/FailInfo$InternalError;-><init>(Lcom/baidu/trace/api/track/FailInfo;Ljava/lang/String;Lcom/baidu/trace/api/track/TrackPoint;)V

    iput-object p4, p0, Lcom/baidu/trace/api/track/FailInfo$ParamError;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/FailInfo$ParamError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/FailInfo$ParamError;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ParamError{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "entityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/track/FailInfo$ParamError;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", trackPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/api/track/FailInfo$ParamError;->b:Lcom/baidu/trace/api/track/TrackPoint;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", error=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/api/track/FailInfo$ParamError;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
