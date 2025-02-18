.class public abstract Lcom/gizthon/camera/dialog/CenterDialog;
.super Landroid/app/DialogFragment;
.source "CenterDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getLayoutBind()Landroidx/databinding/ViewDataBinding;
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLayoutId()I
.end method

.method public getScreenHeight()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getScreenWidth(Landroid/content/Context;)I
    .locals 1

    .line 160
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 161
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 162
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p1
.end method

.method public getWindowWidth()I
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gizthon/camera/dialog/CenterDialog;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public abstract initView(Landroidx/databinding/ViewDataBinding;)V
.end method

.method protected initWindowParams(Landroid/app/Dialog;)V
    .locals 3

    .line 74
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->isBottom()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1200f1

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 79
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gizthon/camera/dialog/CenterDialog;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x50

    .line 80
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 82
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 83
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gizthon/camera/dialog/CenterDialog;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f3ba5e4    # 0.73300004f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    const/4 v1, -0x2

    .line 85
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public isBottom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCancele()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 36
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200f0

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->getLayoutBind()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->isCancele()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->isCancele()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/dialog/CenterDialog;->initView(Landroidx/databinding/ViewDataBinding;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/dialog/CenterDialog;->initWindowParams(Landroid/app/Dialog;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 156
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 61
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public show(Ljava/lang/Object;)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gizthon/camera/dialog/CenterDialog;->show(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public show(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 108
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 109
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 110
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->dismiss()V

    goto :goto_0

    .line 113
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 114
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 115
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/gizthon/camera/dialog/CenterDialog;->dismiss()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 121
    :try_start_0
    const-class v1, Landroid/app/DialogFragment;

    const-string v2, "mDismissed"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 123
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 130
    :goto_1
    :try_start_1
    const-class v1, Landroid/app/DialogFragment;

    const-string v2, "mShownByMe"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 138
    :goto_2
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 139
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 140
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
