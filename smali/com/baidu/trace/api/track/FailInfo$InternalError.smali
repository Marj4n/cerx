.class public Lcom/baidu/trace/api/track/FailInfo$InternalError;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/api/track/FailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalError"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/baidu/trace/api/track/TrackPoint;


# direct methods
.method public constructor <init>(Lcom/baidu/trace/api/track/FailInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/api/track/FailInfo;Ljava/lang/String;Lcom/baidu/trace/api/track/TrackPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/trace/api/track/FailInfo$InternalError;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/trace/api/track/FailInfo$InternalError;->b:Lcom/baidu/trace/api/track/TrackPoint;

    return-void
.end method


# virtual methods
.method public getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/FailInfo$InternalError;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackPoint()Lcom/baidu/trace/api/track/TrackPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/track/FailInfo$InternalError;->b:Lcom/baidu/trace/api/track/TrackPoint;

    return-object v0
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/FailInfo$InternalError;->a:Ljava/lang/String;

    return-void
.end method

.method public setTrackPoint(Lcom/baidu/trace/api/track/TrackPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/track/FailInfo$InternalError;->b:Lcom/baidu/trace/api/track/TrackPoint;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "InternalError{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "entityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/track/FailInfo$InternalError;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", trackPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/track/FailInfo$InternalError;->b:Lcom/baidu/trace/api/track/TrackPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
