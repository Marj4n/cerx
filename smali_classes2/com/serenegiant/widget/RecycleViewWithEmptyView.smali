.class public Lcom/serenegiant/widget/RecycleViewWithEmptyView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecycleViewWithEmptyView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mEmptyView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    new-instance v0, Lcom/serenegiant/widget/RecycleViewWithEmptyView$2;

    invoke-direct {v0, p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView$2;-><init>(Lcom/serenegiant/widget/RecycleViewWithEmptyView;)V

    iput-object v0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 58
    sget-object v2, Lcom/serenegiant/common/R$styleable;->RecycleViewWithEmptyView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 61
    :try_start_0
    sget p3, Lcom/serenegiant/common/R$styleable;->RecycleViewWithEmptyView_listDivider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 62
    sget p3, Lcom/serenegiant/common/R$styleable;->RecycleViewWithEmptyView_listDivider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    const/4 p2, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    instance-of p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p3, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p2

    .line 74
    :cond_2
    new-instance p3, Lcom/serenegiant/widget/DividerItemDecoration;

    invoke-direct {p3, p1, v0}, Lcom/serenegiant/widget/DividerItemDecoration;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p3, p2}, Lcom/serenegiant/widget/DividerItemDecoration;->setOrientation(I)V

    .line 76
    invoke-virtual {p0, p3}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/widget/RecycleViewWithEmptyView;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mEmptyView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 89
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->updateEmptyView()V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mEmptyView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 99
    iput-object p1, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mEmptyView:Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->updateEmptyView()V

    :cond_0
    return-void
.end method

.method protected updateEmptyView()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/serenegiant/widget/RecycleViewWithEmptyView$1;

    invoke-direct {v1, p0, v0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView$1;-><init>(Lcom/serenegiant/widget/RecycleViewWithEmptyView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v1}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
