.class Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "MediaStoreImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;


# direct methods
.method public constructor <init>(Lcom/serenegiant/mediastore/MediaStoreImageAdapter;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ChangeObserver;->this$0:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    .line 271
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    .line 281
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ChangeObserver;->this$0:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    invoke-virtual {p1}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->startQuery()V

    return-void
.end method
