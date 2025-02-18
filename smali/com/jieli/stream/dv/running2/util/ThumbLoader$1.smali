.class Lcom/jieli/stream/dv/running2/util/ThumbLoader$1;
.super Landroid/util/LruCache;
.source "ThumbLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/ThumbLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;I)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$1;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$1;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$000(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
