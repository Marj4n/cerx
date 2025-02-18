.class public final Lcom/gizthon/camera/generated/callback/OnLongClickListener;
.super Ljava/lang/Object;
.source "OnLongClickListener.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gizthon/camera/generated/callback/OnLongClickListener$Listener;
    }
.end annotation


# instance fields
.field final mListener:Lcom/gizthon/camera/generated/callback/OnLongClickListener$Listener;

.field final mSourceId:I


# direct methods
.method public constructor <init>(Lcom/gizthon/camera/generated/callback/OnLongClickListener$Listener;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/gizthon/camera/generated/callback/OnLongClickListener;->mListener:Lcom/gizthon/camera/generated/callback/OnLongClickListener$Listener;

    .line 7
    iput p2, p0, Lcom/gizthon/camera/generated/callback/OnLongClickListener;->mSourceId:I

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/gizthon/camera/generated/callback/OnLongClickListener;->mListener:Lcom/gizthon/camera/generated/callback/OnLongClickListener$Listener;

    iget v1, p0, Lcom/gizthon/camera/generated/callback/OnLongClickListener;->mSourceId:I

    invoke-interface {v0, v1, p1}, Lcom/gizthon/camera/generated/callback/OnLongClickListener$Listener;->_internalCallbackOnLongClick(ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
