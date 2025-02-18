.class public abstract Lcom/serenegiant/dialog/DialogFragmentEx;
.super Landroidx/fragment/app/DialogFragment;
.source "DialogFragmentEx.java"


# static fields
.field protected static final ARGS_KEY_ID_MESSAGE:Ljava/lang/String; = "message"

.field protected static final ARGS_KEY_ID_TITLE:Ljava/lang/String; = "title"

.field protected static final ARGS_KEY_REQUEST_CODE:Ljava/lang/String; = "requestCode"

.field protected static final ARGS_KEY_TAG:Ljava/lang/String; = "tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/serenegiant/dialog/DialogFragmentEx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected requireArguments()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/serenegiant/dialog/DialogFragmentEx;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
