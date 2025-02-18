.class Lcom/serenegiant/dialog/ColorPickerDialogV4$2;
.super Ljava/lang/Object;
.source "ColorPickerDialogV4.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/dialog/ColorPickerDialogV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/dialog/ColorPickerDialogV4;


# direct methods
.method constructor <init>(Lcom/serenegiant/dialog/ColorPickerDialogV4;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4$2;->this$0:Lcom/serenegiant/dialog/ColorPickerDialogV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 262
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :goto_0
    return-void
.end method
