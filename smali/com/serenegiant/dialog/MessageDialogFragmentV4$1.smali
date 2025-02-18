.class Lcom/serenegiant/dialog/MessageDialogFragmentV4$1;
.super Ljava/lang/Object;
.source "MessageDialogFragmentV4.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/dialog/MessageDialogFragmentV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/dialog/MessageDialogFragmentV4;


# direct methods
.method constructor <init>(Lcom/serenegiant/dialog/MessageDialogFragmentV4;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4$1;->this$0:Lcom/serenegiant/dialog/MessageDialogFragmentV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4$1;->this$0:Lcom/serenegiant/dialog/MessageDialogFragmentV4;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->access$000(Lcom/serenegiant/dialog/MessageDialogFragmentV4;Z)V

    return-void
.end method
