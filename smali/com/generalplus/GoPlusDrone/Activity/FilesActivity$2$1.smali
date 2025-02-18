.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$1;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 187
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
