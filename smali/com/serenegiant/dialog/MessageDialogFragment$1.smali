.class Lcom/serenegiant/dialog/MessageDialogFragment$1;
.super Ljava/lang/Object;
.source "MessageDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/dialog/MessageDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/dialog/MessageDialogFragment;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/serenegiant/dialog/MessageDialogFragment;I[Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/serenegiant/dialog/MessageDialogFragment$1;->this$0:Lcom/serenegiant/dialog/MessageDialogFragment;

    iput p2, p0, Lcom/serenegiant/dialog/MessageDialogFragment$1;->val$requestCode:I

    iput-object p3, p0, Lcom/serenegiant/dialog/MessageDialogFragment$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 144
    :try_start_0
    iget-object p1, p0, Lcom/serenegiant/dialog/MessageDialogFragment$1;->this$0:Lcom/serenegiant/dialog/MessageDialogFragment;

    invoke-static {p1}, Lcom/serenegiant/dialog/MessageDialogFragment;->access$000(Lcom/serenegiant/dialog/MessageDialogFragment;)Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    move-result-object p1

    iget-object p2, p0, Lcom/serenegiant/dialog/MessageDialogFragment$1;->this$0:Lcom/serenegiant/dialog/MessageDialogFragment;

    iget v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment$1;->val$requestCode:I

    iget-object v1, p0, Lcom/serenegiant/dialog/MessageDialogFragment$1;->val$permissions:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;->onMessageDialogResult(Lcom/serenegiant/dialog/MessageDialogFragment;I[Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    invoke-static {}, Lcom/serenegiant/dialog/MessageDialogFragment;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
