.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2$2;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2$2;->this$2:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 277
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2$2;->this$2:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 278
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2$2;->this$2:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    .line 279
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$800(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$900()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2$2;->this$2:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p1, 0x0

    .line 285
    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2202(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    const/4 p1, 0x1

    .line 286
    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2002(Z)Z

    return-void
.end method
