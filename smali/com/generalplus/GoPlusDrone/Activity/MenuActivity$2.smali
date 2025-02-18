.class Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$2;
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

    .line 103
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 121
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IsCard"

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    const-class v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
