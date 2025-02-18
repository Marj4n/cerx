.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;
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

    .line 191
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 195
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1400(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)Landroid/widget/AdapterView;

    move-result-object p1

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    .line 196
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 198
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1500(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Play"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p1, v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1602(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;Z)Z

    .line 201
    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1702(Z)Z

    .line 202
    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1802(Z)Z

    .line 203
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$900()[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 205
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1900(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 207
    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    iget-object p2, p2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    .line 208
    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 209
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    .line 210
    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1900(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 209
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 212
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    .line 213
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 215
    new-instance p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2$1;

    invoke-direct {p1, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;)V

    const-string v0, "Cancel"

    .line 216
    invoke-virtual {p2, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1500(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p2

    .line 253
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Download"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 256
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2002(Z)Z

    .line 257
    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2102(Z)Z

    .line 258
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2200()Landroid/app/ProgressDialog;

    move-result-object p1

    if-nez p1, :cond_1

    .line 259
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    iget-object p2, p2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    .line 260
    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2202(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 261
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2200()Landroid/app/ProgressDialog;

    move-result-object p1

    const-string p2, "Prepare to download ..."

    .line 262
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 263
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2200()Landroid/app/ProgressDialog;

    move-result-object p1

    .line 264
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 265
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2200()Landroid/app/ProgressDialog;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 266
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2200()Landroid/app/ProgressDialog;

    move-result-object p1

    .line 267
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 268
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2200()Landroid/app/ProgressDialog;

    move-result-object p1

    const/4 p2, -0x2

    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2$2;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2$2;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;)V

    const-string v1, "Abort"

    .line 269
    invoke-virtual {p1, p2, v1, v0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 289
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2200()Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 292
    :cond_1
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    .line 294
    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result p2

    .line 293
    invoke-virtual {p1, p2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetFileRawdata(I)I

    goto/16 :goto_0

    .line 295
    :cond_2
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1500(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p2

    .line 296
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 297
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    iget-object p2, p2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    .line 298
    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "20"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2400()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x2

    .line 302
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2400()[Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v5

    aget-object v3, v3, v5

    const/4 v5, 0x4

    .line 305
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2400()[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v3

    aget-object v0, v0, v3

    const/4 v3, 0x6

    .line 308
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2400()[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v4

    aget-object v0, v0, v4

    const/16 v4, 0x8

    .line 311
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2400()[Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {v5}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v5

    aget-object v3, v3, v5

    const/16 v5, 0xa

    .line 314
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2400()[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v3

    aget-object v0, v0, v3

    const/16 v3, 0xc

    .line 317
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$900()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nTime: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\nSize: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1000()[I

    move-result-object p2

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v3

    aget p2, p2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 324
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 327
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 328
    :cond_3
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1500(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p2

    .line 329
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Delete"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 330
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    .line 331
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$800(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$900()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 334
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;->this$1:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    iget-object p2, p2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    invoke-virtual {p2, v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method
