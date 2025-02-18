.class public Lcom/gizthon/camera/activity/PreviewVideoActivity;
.super Landroid/app/Activity;
.source "PreviewVideoActivity.java"


# instance fields
.field private mController:Landroid/widget/MediaController;

.field private m_ayFilePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field position:I

.field private video_view:Lcom/gizthon/camera/view/IjkVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/gizthon/camera/activity/PreviewVideoActivity;->m_ayFilePath:Ljava/util/ArrayList;

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p1, v2, :cond_0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileProvider"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "video/*"

    .line 42
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00db

    .line 50
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/activity/PreviewVideoActivity;->setContentView(I)V

    const p1, 0x7f090389

    .line 51
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/activity/PreviewVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/gizthon/camera/view/IjkVideoView;

    iput-object p1, p0, Lcom/gizthon/camera/activity/PreviewVideoActivity;->video_view:Lcom/gizthon/camera/view/IjkVideoView;

    .line 52
    invoke-virtual {p0}, Lcom/gizthon/camera/activity/PreviewVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gizthon/camera/activity/PreviewVideoActivity;->position:I

    const-string v0, "FilePath"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/gizthon/camera/activity/PreviewVideoActivity;->m_ayFilePath:Ljava/util/ArrayList;

    .line 55
    iget v0, p0, Lcom/gizthon/camera/activity/PreviewVideoActivity;->position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gizthon/camera/activity/PreviewVideoActivity;->mController:Landroid/widget/MediaController;

    .line 60
    new-instance v0, Lcom/gizthon/camera/view/AndroidMediaController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gizthon/camera/view/AndroidMediaController;-><init>(Landroid/content/Context;Z)V

    .line 61
    iget-object v1, p0, Lcom/gizthon/camera/activity/PreviewVideoActivity;->video_view:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/gizthon/camera/view/IjkVideoView;->setMediaController(Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;)V

    .line 62
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewVideoActivity;->video_view:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gizthon/camera/view/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 63
    iget-object p1, p0, Lcom/gizthon/camera/activity/PreviewVideoActivity;->video_view:Lcom/gizthon/camera/view/IjkVideoView;

    invoke-virtual {p1}, Lcom/gizthon/camera/view/IjkVideoView;->start()V

    return-void
.end method
