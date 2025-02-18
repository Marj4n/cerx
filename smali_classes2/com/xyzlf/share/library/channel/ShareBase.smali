.class public abstract Lcom/xyzlf/share/library/channel/ShareBase;
.super Ljava/lang/Object;
.source "ShareBase.java"

# interfaces
.implements Lcom/xyzlf/share/library/interfaces/IShareBase;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareBase;->context:Landroid/content/Context;

    return-void
.end method
