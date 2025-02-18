.class Lcom/serenegiant/widget/CustomRecycleViewAdapter$1$1;
.super Ljava/lang/Object;
.source "CustomRecycleViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;Landroid/view/View;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1$1;->this$1:Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;

    iput-object p2, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method
