.class public Lcom/shizhefei/fragment/LazyFragment;
.super Lcom/shizhefei/fragment/BaseFragment;
.source "LazyFragment.java"


# static fields
.field public static final INTENT_BOOLEAN_LAZYLOAD:Ljava/lang/String; = "intent_boolean_lazyLoad"

.field private static final VISIBLE_STATE_GONE:I = 0x0

.field private static final VISIBLE_STATE_NOTSET:I = -0x1

.field private static final VISIBLE_STATE_VISIABLE:I = 0x1


# instance fields
.field private isInit:Z

.field private isLazyLoad:Z

.field private isStart:Z

.field private isVisibleToUserState:I

.field private layout:Landroid/widget/FrameLayout;

.field private savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/shizhefei/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lcom/shizhefei/fragment/LazyFragment;->isVisibleToUserState:I

    .line 126
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    return-void
.end method


# virtual methods
.method protected getPreviewLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final onCreateView(Landroid/os/Bundle;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->onCreateView(Landroid/os/Bundle;)V

    .line 35
    iput-object p1, p0, Lcom/shizhefei/fragment/LazyFragment;->savedInstanceState:Landroid/os/Bundle;

    .line 36
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-boolean v1, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    const-string v2, "intent_boolean_lazyLoad"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    .line 46
    :cond_0
    iget v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isVisibleToUserState:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getUserVisibleHint()Z

    move-result v0

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-boolean v3, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    if-eqz v3, :cond_6

    if-eqz v0, :cond_3

    .line 52
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-nez v0, :cond_3

    .line 53
    iput-boolean v2, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    .line 54
    invoke-virtual {p0, p1}, Lcom/shizhefei/fragment/LazyFragment;->onCreateViewLazy(Landroid/os/Bundle;)V

    goto :goto_1

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/shizhefei/fragment/LazyFragment;->inflater:Landroid/view/LayoutInflater;

    if-nez p1, :cond_4

    .line 58
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 60
    :cond_4
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/fragment/LazyFragment;->getPreviewLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 63
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 65
    :cond_5
    iget-object p1, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object p1, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 69
    :cond_6
    iput-boolean v2, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    .line 70
    invoke-virtual {p0, p1}, Lcom/shizhefei/fragment/LazyFragment;->onCreateViewLazy(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method protected onCreateViewLazy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onDestroyView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-super {p0}, Lcom/shizhefei/fragment/BaseFragment;->onDestroyView()V

    .line 195
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onDestroyViewLazy()V

    :cond_0
    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    return-void
.end method

.method protected onDestroyViewLazy()V
    .locals 0

    return-void
.end method

.method protected onFragmentStartLazy()V
    .locals 0

    return-void
.end method

.method protected onFragmentStopLazy()V
    .locals 0

    return-void
.end method

.method public final onPause()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-super {p0}, Lcom/shizhefei/fragment/BaseFragment;->onPause()V

    .line 186
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onPauseLazy()V

    :cond_0
    return-void
.end method

.method protected onPauseLazy()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    invoke-super {p0}, Lcom/shizhefei/fragment/BaseFragment;->onResume()V

    .line 177
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onResumeLazy()V

    :cond_0
    return-void
.end method

.method protected onResumeLazy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-super {p0}, Lcom/shizhefei/fragment/BaseFragment;->onStart()V

    .line 110
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    .line 112
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onFragmentStartLazy()V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-super {p0}, Lcom/shizhefei/fragment/BaseFragment;->onStop()V

    .line 120
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    .line 122
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onFragmentStopLazy()V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3

    .line 154
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 156
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->setContentView(I)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isLazyLoad:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 167
    iget-object v0, p0, Lcom/shizhefei/fragment/LazyFragment;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/BaseFragment;->setUserVisibleHint(Z)V

    .line 85
    iput p1, p0, Lcom/shizhefei/fragment/LazyFragment;->isVisibleToUserState:I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 86
    iget-boolean v1, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    .line 88
    iget-object v1, p0, Lcom/shizhefei/fragment/LazyFragment;->savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/shizhefei/fragment/LazyFragment;->onCreateViewLazy(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onResumeLazy()V

    .line 91
    :cond_0
    iget-boolean v1, p0, Lcom/shizhefei/fragment/LazyFragment;->isInit:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 93
    iput-boolean v0, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    .line 94
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onFragmentStartLazy()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/shizhefei/fragment/LazyFragment;->isStart:Z

    .line 97
    invoke-virtual {p0}, Lcom/shizhefei/fragment/LazyFragment;->onFragmentStopLazy()V

    :cond_2
    :goto_0
    return-void
.end method
