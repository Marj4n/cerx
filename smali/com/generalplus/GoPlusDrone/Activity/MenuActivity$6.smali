.class Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$6;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->getFileView()Landroid/view/View;
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

    .line 349
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$6;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 353
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$6;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->access$000(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
