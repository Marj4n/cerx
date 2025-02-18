.class public Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;
.super Landroid/app/Activity;
.source "VideoViewActivity.java"


# instance fields
.field private m_ayFilePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_mediaController:Landroid/widget/MediaController;

.field private m_videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->m_mediaController:Landroid/widget/MediaController;

    .line 19
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->m_ayFilePath:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->activity_videoview:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->setContentView(I)V

    .line 24
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->videoView:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    .line 25
    new-instance p1, Landroid/widget/MediaController;

    invoke-direct {p1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->m_mediaController:Landroid/widget/MediaController;

    .line 26
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "FilePath"

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->m_ayFilePath:Ljava/util/ArrayList;

    .line 30
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->m_mediaController:Landroid/widget/MediaController;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 32
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 33
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->requestFocus()Z

    return-void
.end method
