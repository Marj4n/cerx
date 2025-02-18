.class Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;
.super Ljava/lang/Object;
.source "PreviewPhotoActivity.java"

# interfaces
.implements Lcom/gizthon/camera/dialog/ShareDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shareFecebook()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 128
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v2, v2, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-virtual {v2}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 131
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 133
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    .line 134
    iget-object v2, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v2, v2, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-virtual {v2}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v4, v4, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-static {v4}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget v5, v5, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "pangu"

    invoke-static {v2, v3, v5, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 136
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v3, v3, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-static {v3}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget v4, v4, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 138
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x10000000

    .line 139
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.facebook.katana"

    const-string v4, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 141
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 142
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 143
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    const-string v2, "\u5206\u4eab"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public shareQq()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->isInstallApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.SEND"

    .line 101
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v3, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v3, v3, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-virtual {v3}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 104
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 106
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_0

    .line 107
    iget-object v3, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v3, v3, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-virtual {v3}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v5, v5, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-static {v5}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget v6, v6, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "pangu"

    invoke-static {v3, v4, v6, v5}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 109
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v4, v4, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-static {v4}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget v5, v5, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 111
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x10000000

    .line 112
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 114
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 115
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 116
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    const-string v1, "\u5206\u4eab"

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    const/4 v1, 0x1

    const-string v2, "\u60a8\u9700\u8981\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public shareTwiter()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 151
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v2, v2, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-virtual {v2}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 154
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 156
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    .line 157
    iget-object v2, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v2, v2, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-virtual {v2}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v4, v4, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-static {v4}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget v5, v5, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "pangu"

    invoke-static {v2, v3, v5, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 159
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v3, v3, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-static {v3}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget v4, v4, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 161
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x10000000

    .line 162
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.twitter.android"

    const-string v4, "com.twitter.composer.ComposerActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 164
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 165
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 166
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    const-string v2, "\u5206\u4eab"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public shareWchat()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->isInstallApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.SEND"

    .line 73
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v3, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v3, v3, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-virtual {v3}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 76
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 78
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_0

    .line 79
    iget-object v3, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v3, v3, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-virtual {v3}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v5, v5, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-static {v5}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget v6, v6, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "pangu"

    invoke-static {v3, v4, v6, v5}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 81
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v4, v4, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-static {v4}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget v5, v5, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 83
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x10000000

    .line 84
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 86
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 87
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 88
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    const-string v1, "\u5206\u4eab"

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    const/4 v1, 0x1

    const-string v2, "\u60a8\u9700\u8981\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public shareYoutube()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 174
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v2, v2, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-virtual {v2}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 177
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 179
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    .line 180
    iget-object v2, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v2, v2, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-virtual {v2}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v4, v4, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-static {v4}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget v5, v5, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "pangu"

    invoke-static {v2, v3, v5, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 182
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v3, v3, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-static {v3}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget v4, v4, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 184
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x10000000

    .line 185
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.google.android.youtube"

    const-string v4, "com.google.android.apps.youtube.app.application.Shell_UploadActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 187
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 188
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 189
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1$1;->this$1:Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    const-string v2, "\u5206\u4eab"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
