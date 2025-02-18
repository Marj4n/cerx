.class public Lcom/jieli/stream/dv/running2/bean/UpgradeStep;
.super Ljava/lang/Object;
.source "UpgradeStep.java"


# instance fields
.field private description:Ljava/lang/String;

.field private isNeedPb:Z

.field private num:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->num:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->state:I

    return v0
.end method

.method public isNeedPb()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->isNeedPb:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->description:Ljava/lang/String;

    return-void
.end method

.method public setNeedPb(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->isNeedPb:Z

    return-void
.end method

.method public setNum(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->num:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->state:I

    return-void
.end method
