.class Lcom/gizthon/camera/activity/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/activity/HelpActivity;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/HelpActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity$2;->this$0:Lcom/gizthon/camera/activity/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity$2;->this$0:Lcom/gizthon/camera/activity/HelpActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/HelpActivity;->access$000(Lcom/gizthon/camera/activity/HelpActivity;)Lcom/gizthon/camera/databinding/HelpActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->llLayout2:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity$2;->this$0:Lcom/gizthon/camera/activity/HelpActivity;

    invoke-static {p1}, Lcom/gizthon/camera/activity/HelpActivity;->access$000(Lcom/gizthon/camera/activity/HelpActivity;)Lcom/gizthon/camera/databinding/HelpActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->llLayout1:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
