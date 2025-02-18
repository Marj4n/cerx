.class public Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$FileComparator;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;


# direct methods
.method public constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$FileComparator;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 61
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$FileComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
