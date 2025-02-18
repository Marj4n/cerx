.class public Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;
.super Landroidx/fragment/app/Fragment;
.source "TabFragment.java"


# instance fields
.field private adapter:Landroidx/fragment/app/FragmentPagerAdapter;

.field private m_iSelect:I

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private tabs:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->m_iSelect:I

    return-void
.end method

.method private getFragments()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "Photo"

    .line 103
    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->newInstance(Ljava/lang/String;)Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "Video"

    .line 104
    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->newInstance(Ljava/lang/String;)Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static newInstance()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 33
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;

    invoke-direct {v0}, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 39
    sget p3, Lcom/generalplus/GoPlusDrone/R$layout;->fragment_sample:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 98
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->getFragments()Ljava/util/LinkedList;

    move-result-object p2

    .line 46
    new-instance v0, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/LinkedList;)V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->adapter:Landroidx/fragment/app/FragmentPagerAdapter;

    .line 48
    sget p2, Lcom/generalplus/GoPlusDrone/R$id;->viewpager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 49
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->adapter:Landroidx/fragment/app/FragmentPagerAdapter;

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 51
    sget p2, Lcom/generalplus/GoPlusDrone/R$id;->sliding_tabs:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->tabs:Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;

    .line 65
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 67
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 68
    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    .line 69
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, -0x1

    .line 70
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 72
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 74
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 76
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method
