.class public Lcom/jieli/stream/dv/running2/bean/SettingItem;
.super Ljava/lang/Object;
.source "SettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private marginTop:I

.field private name:Ljava/lang/String;

.field private onSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

.field private type:I

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarginTop()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/SettingItem;->marginTop:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/SettingItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnSwitchListener()Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/SettingItem;->onSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/SettingItem;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/SettingItem;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setMarginTop(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/SettingItem;->marginTop:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/SettingItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setOnSwitchListener(Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/SettingItem;->onSwitchListener:Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/SettingItem;->type:I

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/SettingItem;->value:Ljava/lang/Object;

    return-void
.end method
