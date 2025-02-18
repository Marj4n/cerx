.class final Lcom/jieli/stream/dv/running2/util/AviThumbUtil$2;
.super Ljava/lang/Object;
.source "AviThumbUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->dispenseOnErrorEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/AviThumbUtil$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->access$000()Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->access$000()Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/AviThumbUtil$2;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
