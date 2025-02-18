.class final Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MediaStoreImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

.field mImageView:Landroid/widget/ImageView;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/mediastore/MediaStoreImageAdapter$1;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;-><init>()V

    return-void
.end method
