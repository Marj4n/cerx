.class public Lcom/serenegiant/dialog/MessageDialogFragment;
.super Landroid/app/DialogFragment;
.source "MessageDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/serenegiant/dialog/MessageDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/dialog/MessageDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/dialog/MessageDialogFragment;)Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/serenegiant/dialog/MessageDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragment;
    .locals 3

    .line 60
    new-instance v0, Lcom/serenegiant/dialog/MessageDialogFragment;

    invoke-direct {v0}, Lcom/serenegiant/dialog/MessageDialogFragment;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestCode"

    .line 63
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title"

    .line 64
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "message"

    .line 65
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p3, p0, [Ljava/lang/String;

    :goto_0
    const-string p0, "permissions"

    .line 66
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/serenegiant/dialog/MessageDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragment;
    .locals 0

    .line 47
    invoke-static {p1, p2, p3, p4}, Lcom/serenegiant/dialog/MessageDialogFragment;->newInstance(III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragment;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    sget-object p2, Lcom/serenegiant/dialog/MessageDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/serenegiant/dialog/MessageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method public static showDialog(Landroid/app/Fragment;III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragment;
    .locals 0

    .line 53
    invoke-static {p1, p2, p3, p4}, Lcom/serenegiant/dialog/MessageDialogFragment;->newInstance(III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragment;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/serenegiant/dialog/MessageDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    sget-object p2, Lcom/serenegiant/dialog/MessageDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/serenegiant/dialog/MessageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 83
    instance-of v0, p1, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-eqz v0, :cond_0

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/serenegiant/dialog/MessageDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 88
    instance-of v1, v0, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-eqz v1, :cond_1

    .line 89
    check-cast v0, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-nez v0, :cond_2

    .line 93
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/serenegiant/dialog/MessageDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 95
    instance-of v1, v0, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-eqz v1, :cond_2

    .line 96
    check-cast v0, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-eqz v0, :cond_3

    return-void

    .line 102
    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    if-eqz p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/dialog/MessageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/serenegiant/dialog/MessageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requestCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/serenegiant/dialog/MessageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 117
    invoke-virtual {p0}, Lcom/serenegiant/dialog/MessageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "permissions"

    .line 118
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/serenegiant/dialog/MessageDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    .line 122
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/serenegiant/dialog/MessageDialogFragment$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/serenegiant/dialog/MessageDialogFragment$2;-><init>(Lcom/serenegiant/dialog/MessageDialogFragment;I[Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/serenegiant/dialog/MessageDialogFragment$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/serenegiant/dialog/MessageDialogFragment$1;-><init>(Lcom/serenegiant/dialog/MessageDialogFragment;I[Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
