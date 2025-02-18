.class Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    const-class v1, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
