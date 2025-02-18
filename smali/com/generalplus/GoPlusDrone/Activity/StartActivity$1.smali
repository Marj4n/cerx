.class Lcom/generalplus/GoPlusDrone/Activity/StartActivity$1;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->showLanDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/StartActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->access$000(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;)I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartActivity;

    invoke-static {p1, p2}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->access$002(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;I)I

    .line 101
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;)V

    .line 102
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->access$200(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartActivity;

    .line 103
    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->access$000(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;)I

    move-result p2

    const-string v0, "Language_KEY"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
