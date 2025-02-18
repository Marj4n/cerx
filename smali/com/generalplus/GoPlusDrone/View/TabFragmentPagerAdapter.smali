.class public Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "TabFragmentPagerAdapter.java"


# instance fields
.field fragments:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/LinkedList<",
            "Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->fragments:Ljava/util/LinkedList;

    if-nez p2, :cond_0

    .line 17
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->fragments:Ljava/util/LinkedList;

    goto :goto_0

    .line 19
    :cond_0
    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->fragments:Ljava/util/LinkedList;

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->fragments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getIconResId(I)I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->fragments:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->getIconResId()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->getItem(I)Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->fragments:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->fragments:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
