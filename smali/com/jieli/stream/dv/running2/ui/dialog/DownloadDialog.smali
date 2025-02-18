.class public Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_PROGRESS:I = 0x64


# instance fields
.field private isRecordPrepared:Z

.field private mFileType:I

.field private mFrameCount:I

.field private final mOnNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

.field private mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

.field private final onDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

.field private pbNumber:Lcom/daimajia/numberprogressbar/NumberProgressBar;

.field private progress:I

.field final tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tvContent:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mFileType:I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->isRecordPrepared:Z

    .line 58
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mFrameCount:I

    .line 136
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mOnNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 157
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$3;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->onDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/lib/dv/control/player/PlaybackStream;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/PlaybackStream;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->onDownloadListener:Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mFrameCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/stream/dv/running2/data/VideoRecord;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/VideoRecord;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mFileType:I

    return p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->isRecordPrepared:Z

    return p0
.end method

.method static synthetic access$502(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->isRecordPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->closeMovWrapper()V

    return-void
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->progress:I

    return p0
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->stopDownload()V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->dismissDialog()V

    return-void
.end method

.method private closeMovWrapper()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->close()V

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    :cond_0
    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->isRecordPrepared:Z

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initUI(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->download_file:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 266
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tvContent:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_1
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->progress:I

    if-lez p1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->pbNumber:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    invoke-virtual {v0, p1}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public static newInstance(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;
    .locals 3

    .line 63
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "file_info"

    .line 65
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private stopDownload()V
    .locals 3

    .line 295
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$4;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$4;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToChangePlaybackState(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 302
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    const-string v1, "stop download"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->closeMovWrapper()V

    .line 304
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->dismissDialog()V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->progress:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p1, "file_info"

    .line 100
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mFileType:I

    .line 107
    new-instance v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    .line 108
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->setDownloadDuration(I)V

    .line 109
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mOnNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 111
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getOffset()I

    move-result v2

    new-instance v3, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$1;

    invoke-direct {v3, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$1;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToStartPlayback(Ljava/lang/String;ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    const-string v0, "File info error"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->initUI(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 121
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0xc8

    .line 122
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 123
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 125
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 127
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_4
    :goto_2
    const/4 v0, -0x2

    .line 129
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 130
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 131
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$drawable;->dialog_bg:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_download_cancel_btn:I

    if-ne p1, v0, :cond_1

    .line 246
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->getCurrentMediaInfo()Lcom/jieli/lib/dv/control/model/MediaInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mFrameCount:I

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getFrameRate()I

    move-result p1

    if-lt v0, p1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->stopDownload()V

    goto :goto_0

    .line 250
    :cond_0
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->dialod_wait:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 79
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->dialog_download:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 83
    :cond_0
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_download_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tvTitle:Landroid/widget/TextView;

    .line 84
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_download_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tvContent:Landroid/widget/TextView;

    .line 85
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_download_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/daimajia/numberprogressbar/NumberProgressBar;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->pbNumber:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    .line 86
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_download_cancel_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 88
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->pbNumber:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    const/16 p3, 0x64

    invoke-virtual {p2, p3}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setMax(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 233
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onDestroy()V

    .line 234
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->closeMovWrapper()V

    .line 235
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mOnNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 236
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->release()Z

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/16 p1, 0x64

    .line 280
    :cond_0
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->progress:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->title:Ljava/lang/String;

    return-void
.end method

.method public updateNumberPb(I)V
    .locals 1

    .line 284
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->setProgress(I)V

    .line 285
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->pbNumber:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    if-eqz p1, :cond_0

    .line 286
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->progress:I

    invoke-virtual {p1, v0}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
