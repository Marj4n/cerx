.class public Lcom/jieli/stream/dv/running2/bean/WifiBean;
.super Ljava/lang/Object;
.source "WifiBean.java"


# instance fields
.field private SSID:Ljava/lang/String;

.field private isSelect:Z

.field private password:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/WifiBean;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/WifiBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/WifiBean;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/WifiBean;->state:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/WifiBean;->isSelect:Z

    return v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/WifiBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/WifiBean;->SSID:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/WifiBean;->isSelect:Z

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/WifiBean;->state:I

    return-void
.end method
