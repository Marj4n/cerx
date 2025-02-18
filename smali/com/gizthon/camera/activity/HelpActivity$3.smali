.class Lcom/gizthon/camera/activity/HelpActivity$3;
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

    .line 56
    iput-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity$3;->this$0:Lcom/gizthon/camera/activity/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity$3;->this$0:Lcom/gizthon/camera/activity/HelpActivity;

    invoke-virtual {p1}, Lcom/gizthon/camera/activity/HelpActivity;->finish()V

    return-void
.end method
