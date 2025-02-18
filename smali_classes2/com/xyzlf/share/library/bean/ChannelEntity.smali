.class public Lcom/xyzlf/share/library/bean/ChannelEntity;
.super Ljava/lang/Object;
.source "ChannelEntity.java"


# instance fields
.field private channel:I

.field private icon:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/xyzlf/share/library/bean/ChannelEntity;->channel:I

    .line 14
    iput p2, p0, Lcom/xyzlf/share/library/bean/ChannelEntity;->icon:I

    .line 15
    iput-object p3, p0, Lcom/xyzlf/share/library/bean/ChannelEntity;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/xyzlf/share/library/bean/ChannelEntity;->icon:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xyzlf/share/library/bean/ChannelEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getchannel()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/xyzlf/share/library/bean/ChannelEntity;->channel:I

    return v0
.end method

.method public setIcon(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/xyzlf/share/library/bean/ChannelEntity;->icon:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xyzlf/share/library/bean/ChannelEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setchannel(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/xyzlf/share/library/bean/ChannelEntity;->channel:I

    return-void
.end method
