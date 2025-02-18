.class public Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;
.super Landroid/app/Activity;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;,
        Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;
    }
.end annotation


# static fields
.field public static final FileFlag_AVIStreaming:I = 0x1

.field public static final FileFlag_JPGStreaming:I = 0x2

.field public static final FileFlag_LocalFile:I = 0x3

.field public static final FileFlag_Unknown:I = 0x0

.field private static final FileTag_FileBroken:I = 0xa6

.field public static final FileTag_FileCount:I = 0x0

.field private static final FileTag_FileDeviceInit:I = 0xa0

.field private static final FileTag_FileDeviceReady:I = 0xa1

.field private static final FileTag_FileDownload:I = 0xa4

.field private static final FileTag_FileGettingThumbnail:I = 0xa2

.field private static final FileTag_FileGotThumbnail:I = 0xa3

.field private static final FileTag_FileGotThumbnailEnd:I = 0xa7

.field public static final FileTag_FileName:I = 0x1

.field private static final FileTag_FilePalying:I = 0xa5

.field private static final TAG:Ljava/lang/String; = "FilesActivity"

.field private static _bSetModeDone:Z = false

.field private static _i32GettingThumbnailFileIndex:I = -0x1

.field private static bIsStopDownload:Z = false

.field private static bIsStopUpdateThumbnail:Z = false

.field private static bSaveImageItem:Z = false

.field private static listImageItem:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_DownloadDialog:Landroid/app/ProgressDialog; = null

.field private static m_FilesActivityInstance:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity; = null

.field private static m_UpdateGridVierThread:Ljava/lang/Thread; = null

.field private static m_UpdateThumbnailThread:Ljava/lang/Thread; = null

.field private static m_bPendingGetThumbnail:Z = false

.field private static m_bRunCreateGridViewDone:Z = false

.field private static m_i32AryFileSize:[I

.field private static m_i32AryFileStatus:[I

.field private static m_strAryFileName:[Ljava/lang/String;

.field private static m_strAryFilePath:[Ljava/lang/String;

.field private static m_strAryFileTime:[Ljava/lang/String;


# instance fields
.field private CharSequenceItemsDefault:[Ljava/lang/CharSequence;

.field private CharSequenceItemsDelete:[Ljava/lang/CharSequence;

.field private _bUserLeaveHint:Z

.field private _firstVisibleItem:I

.field private _i32CommandIndex:I

.field private _i32ErrorCount:I

.field private _i32GotThumbnailFileIndex:I

.field private _i32SelectedFirstItem:I

.field private _i32WaitGettingThumbnailCount:I

.field private _scrollState:I

.field private bIsCopingFile:Z

.field private i32GetThumbnailCount:I

.field private mLastClickTime:J

.field private m_Context:Landroid/content/Context;

.field private m_FromWrapperHandler:Landroid/os/Handler;

.field private m_Gridview:Landroid/widget/GridView;

.field private m_handler:Landroid/os/Handler;

.field private m_saImageItems:Landroid/widget/SimpleAdapter;

.field private strDevicePICLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_handler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_bUserLeaveHint:Z

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsCopingFile:Z

    .line 84
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->i32GetThumbnailCount:I

    const-string v2, ""

    .line 85
    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->strDevicePICLocation:Ljava/lang/String;

    .line 86
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32CommandIndex:I

    .line 87
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32ErrorCount:I

    .line 88
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32WaitGettingThumbnailCount:I

    const/4 v2, -0x1

    .line 90
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    .line 91
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32SelectedFirstItem:I

    .line 92
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_firstVisibleItem:I

    .line 93
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_scrollState:I

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "Play"

    aput-object v4, v3, v1

    const-string v5, "Download"

    aput-object v5, v3, v0

    const/4 v5, 0x2

    const-string v6, "Info"

    aput-object v6, v3, v5

    .line 94
    iput-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->CharSequenceItemsDefault:[Ljava/lang/CharSequence;

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    const-string v1, "Delete"

    aput-object v1, v2, v0

    aput-object v6, v2, v5

    .line 96
    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->CharSequenceItemsDelete:[Ljava/lang/CharSequence;

    .line 766
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$4;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$4;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_FromWrapperHandler:Landroid/os/Handler;

    return-void
.end method

.method private FinishToMainController()V
    .locals 2

    const-string v0, "FilesActivity"

    const-string v1, "Finish ..."

    .line 1088
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamDisconnect()V

    .line 1090
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->finish()V

    return-void
.end method

.method private ParseGPCamStatus(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "CmdIndex"

    .line 786
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "CmdType"

    .line 787
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CmdMode"

    .line 788
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CmdID"

    .line 789
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "DataSize"

    .line 790
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    const-string v4, "Data"

    .line 791
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v1, v5, :cond_24

    if-eqz v2, :cond_22

    if-eq v2, v8, :cond_21

    if-eq v2, v5, :cond_20

    const/4 v1, 0x4

    if-eq v2, v4, :cond_2

    if-eq v2, v1, :cond_1

    if-eq v2, v6, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string p1, "FilesActivity"

    const-string v0, "GPSOCK_MODE_Vendor ... "

    .line 1010
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1
    const-string p1, "FilesActivity"

    const-string v0, "GPSOCK_MODE_Menu ... "

    .line 1007
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2
    const-string v2, "FilesActivity"

    const-string v9, "GPSOCK_MODE_Playback ... "

    .line 818
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa0

    const/4 v9, 0x0

    if-eq v3, v5, :cond_17

    if-eq v3, v4, :cond_f

    if-eq v3, v1, :cond_9

    const/4 v2, 0x5

    if-eq v3, v2, :cond_3

    goto/16 :goto_7

    .line 960
    :cond_3
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32CommandIndex:I

    .line 962
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopDownload:Z

    if-eqz v0, :cond_4

    .line 963
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32CommandIndex:I

    invoke-virtual {p1, v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamAbort(I)I

    .line 964
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetStatus()I

    .line 965
    sput-boolean v7, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopDownload:Z

    goto/16 :goto_7

    .line 969
    :cond_4
    aget-byte v0, p1, v7

    and-int/2addr v0, v6

    if-ne v0, v8, :cond_8

    .line 972
    aget-byte v0, p1, v8

    and-int/2addr v0, v6

    aget-byte v2, p1, v5

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 973
    aget-byte v2, p1, v4

    and-int/2addr v2, v6

    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v2, v1

    .line 974
    new-array v1, v2, [C

    .line 975
    aput-char v7, v1, v7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    add-int/lit8 v4, v3, 0x5

    .line 977
    aget-byte v4, p1, v4

    and-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 978
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    .line 980
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_6

    const-string v2, "Copy file, please wait."

    .line 981
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 982
    :cond_6
    iput-boolean v8, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsCopingFile:Z

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->strDevicePICLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileName:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_7

    .line 987
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 988
    sput-object v9, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    .line 991
    :cond_7
    sput-boolean v7, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bPendingGetThumbnail:Z

    goto/16 :goto_7

    .line 993
    :cond_8
    iput-boolean v7, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsCopingFile:Z

    .line 994
    aget-byte p1, p1, v8

    and-int/2addr p1, v6

    int-to-float p1, p1

    .line 995
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_27

    const-string v1, "Downloading ... "

    .line 996
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 997
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_7

    .line 923
    :cond_9
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    if-eqz v1, :cond_e

    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileName:[Ljava/lang/String;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFilePath:[Ljava/lang/String;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileSize:[I

    if-eqz v1, :cond_e

    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileTime:[Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_2

    .line 928
    :cond_a
    aget-byte v1, p1, v7

    and-int/2addr v1, v6

    aget-byte v2, p1, v8

    and-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 930
    aget-byte v2, p1, v5

    and-int/2addr v2, v6

    aget-byte v3, p1, v4

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 932
    new-array v3, v2, [C

    .line 934
    aput-char v7, v3, v7

    :goto_1
    if-ge v7, v2, :cond_b

    add-int/lit8 v4, v7, 0x4

    .line 936
    aget-byte v4, p1, v4

    and-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 938
    :cond_b
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    .line 939
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32CommandIndex:I

    .line 941
    sget-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopUpdateThumbnail:Z

    if-eqz p1, :cond_c

    .line 942
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32CommandIndex:I

    invoke-virtual {p1, v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamAbort(I)I

    .line 943
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetStatus()I

    goto/16 :goto_7

    .line 947
    :cond_c
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    monitor-enter p1

    .line 948
    :try_start_0
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    aget v0, v0, v1

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_d

    .line 949
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->i32GetThumbnailCount:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->i32GetThumbnailCount:I

    .line 952
    :cond_d
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFilePath:[Ljava/lang/String;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 953
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    const/16 v2, 0xa3

    aput v2, v0, v1

    .line 954
    monitor-exit p1

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 924
    :cond_e
    :goto_2
    sput-boolean v8, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bRunCreateGridViewDone:Z

    goto/16 :goto_7

    .line 872
    :cond_f
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    if-eqz v1, :cond_16

    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileName:[Ljava/lang/String;

    if-eqz v1, :cond_16

    sget-object v3, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFilePath:[Ljava/lang/String;

    if-eqz v3, :cond_16

    sget-object v3, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileSize:[I

    if-eqz v3, :cond_16

    sget-object v3, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileTime:[Ljava/lang/String;

    if-nez v3, :cond_10

    goto/16 :goto_5

    .line 879
    :cond_10
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32CommandIndex:I

    .line 881
    aget-byte v0, p1, v7

    and-int/2addr v0, v6

    aget-byte v3, p1, v8

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    .line 882
    aget-byte p1, p1, v5

    and-int/2addr p1, v6

    .line 884
    sget-boolean v3, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopUpdateThumbnail:Z

    if-eqz v3, :cond_11

    .line 885
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32CommandIndex:I

    invoke-virtual {p1, v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamAbort(I)I

    .line 886
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetStatus()I

    goto/16 :goto_7

    :cond_11
    add-int v3, v0, p1

    .line 890
    array-length v4, v1

    if-le v3, v4, :cond_12

    .line 891
    array-length p1, v1

    sub-int/2addr p1, v0

    .line 893
    :cond_12
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    monitor-enter v1

    move v3, v0

    :goto_3
    add-int v4, p1, v0

    if-ge v3, v4, :cond_15

    const/4 v4, 0x6

    :try_start_1
    new-array v5, v4, [B

    .line 897
    sget-object v6, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileName:[Ljava/lang/String;

    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v9

    invoke-virtual {v9, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetFileName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v3

    .line 898
    sget-object v6, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileSize:[I

    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v9

    invoke-virtual {v9, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetFileSize(I)I

    move-result v9

    aput v9, v6, v3

    .line 899
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetFileTime(I[B)Z

    .line 901
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v4, :cond_13

    .line 902
    aget-byte v10, v5, v9

    const-string v11, "%02d"

    new-array v12, v8, [Ljava/lang/Object;

    .line 903
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v12, v7

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 905
    :cond_13
    sget-object v4, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileTime:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 906
    sget-object v4, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    aget v4, v4, v3

    if-ne v4, v2, :cond_14

    .line 907
    sget-object v4, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    const/16 v5, 0xa1

    aput v5, v4, v3

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 910
    :cond_15
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 912
    sput-boolean v7, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bRunCreateGridViewDone:Z

    .line 914
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    if-nez p1, :cond_27

    .line 915
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 917
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    .line 910
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 875
    :cond_16
    :goto_5
    sput-boolean v8, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bRunCreateGridViewDone:Z

    goto/16 :goto_7

    .line 823
    :cond_17
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bSaveImageItem:Z

    if-eqz v0, :cond_18

    return-void

    .line 826
    :cond_18
    aget-byte v0, p1, v7

    and-int/2addr v0, v6

    aget-byte p1, p1, v8

    and-int/2addr p1, v6

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    if-gtz p1, :cond_19

    goto/16 :goto_7

    :cond_19
    const/4 v0, -0x1

    .line 830
    sput v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GettingThumbnailFileIndex:I

    .line 831
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    .line 832
    iput v7, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->i32GetThumbnailCount:I

    .line 833
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    if-eqz v0, :cond_1a

    .line 834
    sput-object v9, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    .line 835
    :cond_1a
    new-array v0, p1, [I

    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    .line 836
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 838
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileName:[Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 839
    sput-object v9, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileName:[Ljava/lang/String;

    .line 840
    :cond_1b
    new-array v0, p1, [Ljava/lang/String;

    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileName:[Ljava/lang/String;

    .line 842
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFilePath:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 843
    sput-object v9, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFilePath:[Ljava/lang/String;

    .line 844
    :cond_1c
    new-array v0, p1, [Ljava/lang/String;

    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFilePath:[Ljava/lang/String;

    .line 846
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileSize:[I

    if-eqz v0, :cond_1d

    .line 847
    sput-object v9, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileSize:[I

    .line 848
    :cond_1d
    new-array v0, p1, [I

    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileSize:[I

    .line 850
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileTime:[Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 851
    sput-object v9, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileTime:[Ljava/lang/String;

    .line 853
    :cond_1e
    new-array v0, p1, [Ljava/lang/String;

    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileTime:[Ljava/lang/String;

    .line 854
    sput-boolean v7, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bRunCreateGridViewDone:Z

    .line 855
    sput-boolean v7, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopDownload:Z

    :goto_6
    if-ge v7, p1, :cond_1f

    .line 858
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ThumbnailFilePath"

    .line 859
    sget v2, Lcom/generalplus/GoPlusDrone/R$mipmap;->loading:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FileName"

    const-string v2, "Unknown"

    .line 860
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FileIndex"

    .line 861
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FileSize"

    const-string v2, "0"

    .line 862
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FileTime"

    const-string v2, "0"

    .line 863
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 867
    :cond_1f
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->UpdateGridView()V

    goto/16 :goto_7

    :cond_20
    const-string p1, "FilesActivity"

    const-string v0, "GPSOCK_MODE_CapturePicture ... "

    .line 815
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_21
    const-string p1, "FilesActivity"

    const-string v0, "GPSOCK_MODE_Record ... "

    .line 812
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_22
    if-eqz v3, :cond_23

    goto/16 :goto_7

    .line 800
    :cond_23
    sput-boolean v8, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_bSetModeDone:Z

    const-string p1, "FilesActivity"

    const-string v0, "_bSetModeDone = true"

    .line 801
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_24
    if-ne v1, v4, :cond_27

    .line 1016
    aget-byte v0, p1, v7

    and-int/2addr v0, v6

    aget-byte p1, p1, v8

    and-int/2addr p1, v6

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0xa6

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_0
    const-string p1, "FilesActivity"

    const-string v0, "Error_ServerIsBusy ... "

    .line 1021
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32ErrorCount:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32ErrorCount:I

    const/16 v0, 0x14

    if-le p1, v0, :cond_27

    .line 1025
    iput v7, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32ErrorCount:I

    .line 1026
    sput-boolean v8, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopDownload:Z

    .line 1027
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32CommandIndex:I

    invoke-virtual {p1, v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamAbort(I)I

    .line 1028
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetStatus()I

    .line 1029
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_Context:Landroid/content/Context;

    const-string v0, "Getting thumbnail is failed."

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1030
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :pswitch_1
    const-string v0, "FilesActivity"

    const-string v1, "Error_InvalidCommand ... "

    .line 1034
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    sput-boolean v7, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bPendingGetThumbnail:Z

    .line 1036
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    monitor-enter v0

    .line 1037
    :try_start_3
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    add-int/2addr v1, v8

    sget-object v2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    array-length v2, v2

    if-ge v1, v2, :cond_25

    sget-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopDownload:Z

    if-nez v1, :cond_25

    .line 1039
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    add-int/2addr v2, v8

    aput p1, v1, v2

    .line 1040
    :cond_25
    monitor-exit v0

    goto/16 :goto_7

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :pswitch_2
    const-string p1, "FilesActivity"

    const-string v0, "Error_RequestTimeOut ... "

    .line 1043
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_3
    const-string p1, "FilesActivity"

    const-string v0, "Error_ModeError ... "

    .line 1046
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_4
    const-string p1, "FilesActivity"

    const-string v0, "Error_NoStorage ... "

    .line 1049
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    new-instance p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$5;

    invoke-direct {p1, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$5;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7

    :pswitch_5
    const-string p1, "FilesActivity"

    const-string v0, "Error_WriteFail ... "

    .line 1059
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_6
    const-string p1, "FilesActivity"

    const-string v0, "Error_GetFileListFail ... "

    .line 1062
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_7
    const-string v0, "FilesActivity"

    const-string v1, "Error_GetThumbnailFail ... "

    .line 1065
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    monitor-enter v0

    .line 1067
    :try_start_4
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    add-int/2addr v1, v8

    sget-object v2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    array-length v2, v2

    if-ge v1, v2, :cond_26

    sget-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopDownload:Z

    if-nez v1, :cond_26

    .line 1069
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    add-int/2addr v2, v8

    aput p1, v1, v2

    .line 1070
    :cond_26
    monitor-exit v0

    goto :goto_7

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p1

    :pswitch_8
    const-string p1, "FilesActivity"

    const-string v0, "Error_FullStorage ... "

    .line 1073
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_9
    const-string p1, "FilesActivity"

    const-string v0, "Error_SocketClosed ... "

    .line 1076
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->FinishToMainController()V

    goto :goto_7

    :pswitch_a
    const-string p1, "FilesActivity"

    const-string v0, "Error_LostConnection ..."

    .line 1080
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->FinishToMainController()V

    :cond_27
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0xffc0
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfff7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private UpdateGridView()V
    .locals 1

    .line 408
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$3;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$3;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$002(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_scrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32SelectedFirstItem:I

    return p0
.end method

.method static synthetic access$1000()[I
    .locals 1

    .line 43
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileSize:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32SelectedFirstItem:I

    return p1
.end method

.method static synthetic access$1100(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)[Ljava/lang/CharSequence;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->CharSequenceItemsDelete:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_Context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_bUserLeaveHint:Z

    return p1
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopUpdateThumbnail:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0

    .line 43
    sput-boolean p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopUpdateThumbnail:Z

    return p0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0

    .line 43
    sput-boolean p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bSaveImageItem:Z

    return p0
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_firstVisibleItem:I

    return p0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0

    .line 43
    sput-boolean p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopDownload:Z

    return p0
.end method

.method static synthetic access$202(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_firstVisibleItem:I

    return p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bPendingGetThumbnail:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0

    .line 43
    sput-boolean p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bPendingGetThumbnail:Z

    return p0
.end method

.method static synthetic access$2200()Landroid/app/ProgressDialog;
    .locals 1

    .line 43
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 43
    sput-object p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsCopingFile:Z

    return p0
.end method

.method static synthetic access$2400()[Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileTime:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/widget/SimpleAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_saImageItems:Landroid/widget/SimpleAdapter;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_saImageItems:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method static synthetic access$2600()Ljava/util/ArrayList;
    .locals 1

    .line 43
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->UpdateGridView()V

    return-void
.end method

.method static synthetic access$2800(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2900()Ljava/lang/Thread;
    .locals 1

    .line 43
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2902(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 43
    sput-object p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/widget/GridView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_Gridview:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$3002(I)I
    .locals 0

    .line 43
    sput p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GettingThumbnailFileIndex:I

    return p0
.end method

.method static synthetic access$3100(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32WaitGettingThumbnailCount:I

    return p0
.end method

.method static synthetic access$3102(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32WaitGettingThumbnailCount:I

    return p1
.end method

.method static synthetic access$3108(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32WaitGettingThumbnailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32WaitGettingThumbnailCount:I

    return v0
.end method

.method static synthetic access$3200()[Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFilePath:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_i32GotThumbnailFileIndex:I

    return p1
.end method

.method static synthetic access$3400(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->ParseGPCamStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bRunCreateGridViewDone:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 43
    sput-boolean p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bRunCreateGridViewDone:Z

    return p0
.end method

.method static synthetic access$500()Ljava/lang/Thread;
    .locals 1

    .line 43
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 43
    sput-object p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$600()[I
    .locals 1

    .line 43
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)[Ljava/lang/CharSequence;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->CharSequenceItemsDefault:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->strDevicePICLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileName:[Ljava/lang/String;

    return-object v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "FilesActivity"

    .line 698
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 700
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 702
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 703
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 707
    :goto_0
    invoke-virtual {v2, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 708
    invoke-virtual {p1, p2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 713
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 714
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 717
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 717
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 723
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p1

    .line 721
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;
    .locals 1

    .line 404
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_FilesActivityInstance:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    return-object v0
.end method

.method private isFastClick()Z
    .locals 7

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 603
    iget-wide v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/4 v0, 0x1

    return v0

    .line 608
    :cond_0
    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->mLastClickTime:J

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clearApplicationData()V
    .locals 6

    .line 730
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 731
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 732
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 733
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 735
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 736
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 739
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    const-string v5, "lib"

    .line 740
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 741
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->deleteDir(Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deleteDir(Ljava/io/File;)Z
    .locals 5

    if-eqz p1, :cond_1

    .line 748
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 750
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 751
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Menu.xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 752
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Crash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 753
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Logcat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 754
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GoPlusDroneCmdLog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 755
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GoPlusDroneConf.ini"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 756
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->deleteDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "FilesActivity"

    const-string v1, "onBackPressed ..."

    .line 614
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_bSetModeDone:Z

    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 621
    :cond_1
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 623
    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopUpdateThumbnail:Z

    const-wide/16 v0, 0x320

    .line 625
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 628
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 632
    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 633
    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 635
    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bSaveImageItem:Z

    .line 636
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamClearCommandQueue()V

    .line 637
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 690
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->activity_filelist:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->setContentView(I)V

    .line 107
    iput-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_Context:Landroid/content/Context;

    .line 108
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/DCIM/Camera/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->strDevicePICLocation:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_handler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 114
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_handler:Landroid/os/Handler;

    .line 116
    :cond_0
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->gridView:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_Gridview:Landroid/widget/GridView;

    .line 117
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 149
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_Gridview:Landroid/widget/GridView;

    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 352
    sget-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bSaveImageItem:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 354
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 355
    sput-object v2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    .line 357
    :cond_1
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileName:[Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 358
    sput-object v2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileName:[Ljava/lang/String;

    .line 360
    :cond_2
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFilePath:[Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 361
    sput-object v2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFilePath:[Ljava/lang/String;

    .line 363
    :cond_3
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileSize:[I

    if-eqz p1, :cond_4

    .line 364
    sput-object v2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileSize:[I

    .line 366
    :cond_4
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileTime:[Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 367
    sput-object v2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_strAryFileTime:[Ljava/lang/String;

    .line 369
    :cond_5
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    if-nez p1, :cond_6

    .line 370
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    .line 371
    :cond_6
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v2, 0x1f4

    .line 374
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 376
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 379
    :goto_0
    sput-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_bSetModeDone:Z

    .line 380
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    .line 383
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetFullFileList()I

    goto :goto_1

    .line 387
    :cond_7
    sput-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_bSetModeDone:Z

    .line 388
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    .line 391
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetFullFileList()I

    .line 393
    sput-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_bRunCreateGridViewDone:Z

    .line 394
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    if-nez p1, :cond_8

    .line 395
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 397
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_8
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "FilesActivity"

    const-string v1, "onDestroy ..."

    .line 658
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 659
    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    .line 661
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bSaveImageItem:Z

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GoPlus_Drone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->deleteDir(Ljava/io/File;)Z

    const/4 v0, 0x1

    .line 667
    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopDownload:Z

    .line 670
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string v0, "FilesActivity"

    const-string v1, "onResume ..."

    .line 642
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    .line 644
    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopUpdateThumbnail:Z

    .line 645
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_FromWrapperHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetViewHandler(Landroid/os/Handler;I)V

    .line 647
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_i32AryFileStatus:[I

    if-eqz v0, :cond_0

    .line 648
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 651
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    const-string v0, "FilesActivity"

    const-string v1, "onUserLeaveHint ..."

    .line 675
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 676
    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->bIsStopDownload:Z

    .line 677
    iget-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_bUserLeaveHint:Z

    if-eqz v1, :cond_0

    .line 679
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    .line 681
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->finish()V

    .line 683
    :cond_0
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->_bUserLeaveHint:Z

    .line 684
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method
