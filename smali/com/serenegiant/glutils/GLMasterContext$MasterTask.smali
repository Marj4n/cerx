.class Lcom/serenegiant/glutils/GLMasterContext$MasterTask;
.super Lcom/serenegiant/glutils/EglTask;
.source "GLMasterContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/GLMasterContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MasterTask"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0, p2}, Lcom/serenegiant/glutils/EglTask;-><init>(ILcom/serenegiant/glutils/EGLBase$IContext;I)V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method protected processRequest(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/serenegiant/utils/MessageTask$TaskBreak;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
