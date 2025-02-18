.class public Lgeneralplus/com/GPCamLib/CamWrapper;
.super Ljava/lang/Object;
.source "CamWrapper.java"


# static fields
.field public static final COMMAND_URL:Ljava/lang/String; = "192.168.25.1"

.field public static final COMMAN_PORT:I = 0x1f91

.field public static final CamDefaulFolderName:Ljava/lang/String; = "GoPlus_Drone"

.field public static final ConfigFileName:Ljava/lang/String; = "GoPlusDroneConf.ini"

.field public static final Error_FullStorage:I = 0xfff7

.field public static final Error_GetFileListFail:I = 0xfff9

.field public static final Error_GetThumbnailFail:I = 0xfff8

.field public static final Error_InvalidCommand:I = 0xfffe

.field public static final Error_LostConnection:I = 0xffc0

.field public static final Error_ModeError:I = 0xfffc

.field public static final Error_NoStorage:I = 0xfffb

.field public static final Error_RequestTimeOut:I = 0xfffd

.field public static final Error_ServerIsBusy:I = 0xffff

.field public static final Error_SocketClosed:I = 0xffc1

.field public static final Error_WriteFail:I = 0xfffa

.field public static final EventMessgae_SMS:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final GPBATTERTY_GHARGE:I = 0x5

.field public static final GPBATTERTY_LEVEL0:I = 0x0

.field public static final GPBATTERTY_LEVEL1:I = 0x1

.field public static final GPBATTERTY_LEVEL2:I = 0x2

.field public static final GPBATTERTY_LEVEL3:I = 0x3

.field public static final GPBATTERTY_LEVEL4:I = 0x4

.field public static final GPCALLBACKSTATUSTYPE_CMDID:Ljava/lang/String; = "CmdID"

.field public static final GPCALLBACKSTATUSTYPE_CMDINDEX:Ljava/lang/String; = "CmdIndex"

.field public static final GPCALLBACKSTATUSTYPE_CMDMODE:Ljava/lang/String; = "CmdMode"

.field public static final GPCALLBACKSTATUSTYPE_CMDTYPE:Ljava/lang/String; = "CmdType"

.field public static final GPCALLBACKSTATUSTYPE_DATA:Ljava/lang/String; = "Data"

.field public static final GPCALLBACKSTATUSTYPE_DATASIZE:Ljava/lang/String; = "DataSize"

.field public static final GPCALLBACKTYPE_CAMDATA:I = 0x1

.field public static final GPCALLBACKTYPE_CAMSTATUS:I = 0x0

.field public static final GPDEVICEMODE_Capture:I = 0x1

.field public static final GPDEVICEMODE_Menu:I = 0x3

.field public static final GPDEVICEMODE_Playback:I = 0x2

.field public static final GPDEVICEMODE_Record:I = 0x0

.field public static final GPDEVICEMODE_USB:I = 0x4

.field public static final GPFILECALLBACKTYPE_FILEFLAG:Ljava/lang/String; = "FileFlag"

.field public static final GPFILECALLBACKTYPE_FILEINDEX:Ljava/lang/String; = "FileIndex"

.field public static final GPFILECALLBACKTYPE_FILEURL:Ljava/lang/String; = "FileURL"

.field public static final GPFILEFLAG_AVISTREAMING:I = 0x1

.field public static final GPFILEFLAG_JPGSTREAMING:I = 0x2

.field public static final GPSOCK_CapturePicture_CMD_Capture:I = 0x0

.field public static final GPSOCK_Firmware_CMD_Download:I = 0x0

.field public static final GPSOCK_Firmware_CMD_SendRawData:I = 0x1

.field public static final GPSOCK_Firmware_CMD_Upgrade:I = 0x2

.field public static final GPSOCK_General_CMD_AuthDevice:I = 0x5

.field public static final GPSOCK_General_CMD_GetDeviceStatus:I = 0x1

.field public static final GPSOCK_General_CMD_GetParameterFile:I = 0x2

.field public static final GPSOCK_General_CMD_Poweroff:I = 0x3

.field public static final GPSOCK_General_CMD_RestartStreaming:I = 0x4

.field public static final GPSOCK_General_CMD_SetMode:I = 0x0

.field public static final GPSOCK_MODE_CapturePicture:I = 0x2

.field public static final GPSOCK_MODE_Firmware:I = 0x5

.field public static final GPSOCK_MODE_General:I = 0x0

.field public static final GPSOCK_MODE_Menu:I = 0x4

.field public static final GPSOCK_MODE_Playback:I = 0x3

.field public static final GPSOCK_MODE_Record:I = 0x1

.field public static final GPSOCK_MODE_Vendor:I = 0xff

.field public static final GPSOCK_Menu_CMD_GetParameter:I = 0x0

.field public static final GPSOCK_Menu_CMD_SetParameter:I = 0x1

.field public static final GPSOCK_Playback_CMD_ERROR:I = 0xff

.field public static final GPSOCK_Playback_CMD_GetFileCount:I = 0x2

.field public static final GPSOCK_Playback_CMD_GetNameList:I = 0x3

.field public static final GPSOCK_Playback_CMD_GetRawData:I = 0x5

.field public static final GPSOCK_Playback_CMD_GetThumbnail:I = 0x4

.field public static final GPSOCK_Playback_CMD_Pause:I = 0x1

.field public static final GPSOCK_Playback_CMD_Start:I = 0x0

.field public static final GPSOCK_Playback_CMD_Stop:I = 0x6

.field public static final GPSOCK_Record_CMD_Audio:I = 0x1

.field public static final GPSOCK_Record_CMD_Start:I = 0x0

.field public static final GPSOCK_Vendor_CMD_Vendor:I = 0x0

.field public static final GPTYPE_ConnectionStatus_Connected:I = 0x2

.field public static final GPTYPE_ConnectionStatus_Connecting:I = 0x1

.field public static final GPTYPE_ConnectionStatus_DisConnected:I = 0x3

.field public static final GPTYPE_ConnectionStatus_Idle:I = 0x0

.field public static final GPTYPE_ConnectionStatus_SocketClosed:I = 0xa

.field public static final GPVIEW_FILELIST:I = 0x2

.field public static final GPVIEW_MENU:I = 0x1

.field public static final GPVIEW_STREAMING:I = 0x0

.field public static final GP_SOCK_TYPE_ACK:I = 0x2

.field public static final GP_SOCK_TYPE_CMD:I = 0x1

.field public static final GP_SOCK_TYPE_NAK:I = 0x3

.field public static final ParameterFileName:Ljava/lang/String; = "Menu.xml"

.field public static final STREAMING_PORT:I = 0x1f90

.field public static final STREAMING_URL:Ljava/lang/String; = "rtsp://192.168.25.1:8080/?action=stream"

.field public static final SaveFileToDevicePath:Ljava/lang/String; = "/DCIM/Camera/"

.field public static final SaveLogFileName:Ljava/lang/String; = "GoPlusDroneCmdLog"

.field public static final SupportMaxLogLength:I = 0x10000

.field public static final SupportMaxShowLogLength:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CamWrapper"

.field private static m_ComWrapperInstance:Lgeneralplus/com/GPCamLib/CamWrapper; = null

.field private static m_NowViewHandler:Landroid/os/Handler; = null

.field private static m_NowViewIndex:I = 0x0

.field private static m_ParameterFileName:Ljava/lang/String; = null

.field private static m_ParameterFilePath:Ljava/lang/String; = null

.field private static m_bNewFile:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "CamWrapper"

    :try_start_0
    const-string v1, "Trying to load GPCam.so ..."

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GPCam"

    .line 136
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Cannot load GPCam.so ..."

    .line 138
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 141
    :goto_1
    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sput-object p0, Lgeneralplus/com/GPCamLib/CamWrapper;->m_ComWrapperInstance:Lgeneralplus/com/GPCamLib/CamWrapper;

    return-void
.end method

.method private native GPCamSendGetParameterFile(Ljava/lang/String;)I
.end method

.method private native GPCamSetDownloadPath(Ljava/lang/String;)V
.end method

.method public static getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;
    .locals 1

    .line 157
    sget-object v0, Lgeneralplus/com/GPCamLib/CamWrapper;->m_ComWrapperInstance:Lgeneralplus/com/GPCamLib/CamWrapper;

    return-object v0
.end method


# virtual methods
.method public native GPCamAbort(I)I
.end method

.method public native GPCamClearCommandQueue()V
.end method

.method public native GPCamConnectToDevice(Ljava/lang/String;I)I
.end method

.method GPCamDataCallBack(ZI[B)V
    .locals 0

    return-void
.end method

.method public native GPCamDisconnect()V
.end method

.method public native GPCamGetFileExt(I)B
.end method

.method public native GPCamGetFileIndex(I)I
.end method

.method public native GPCamGetFileName(I)Ljava/lang/String;
.end method

.method public native GPCamGetFileSize(I)I
.end method

.method public native GPCamGetFileTime(I[B)Z
.end method

.method public native GPCamGetStatus()I
.end method

.method public native GPCamSendAudioOnOff(Z)I
.end method

.method public native GPCamSendCapturePicture()I
.end method

.method public native GPCamSendFirmwareDownload(JJ)I
.end method

.method public native GPCamSendFirmwareRawData(J[B)I
.end method

.method public native GPCamSendFirmwareUpgrade()I
.end method

.method public native GPCamSendGetFileRawdata(I)I
.end method

.method public native GPCamSendGetFileThumbnail(I)I
.end method

.method public native GPCamSendGetFullFileList()I
.end method

.method public native GPCamSendGetParameter(I)I
.end method

.method public native GPCamSendGetStatus()I
.end method

.method public native GPCamSendPausePlayback()I
.end method

.method public native GPCamSendPowerOff()I
.end method

.method public native GPCamSendRecordCmd()I
.end method

.method public native GPCamSendRestartStreaming()I
.end method

.method public native GPCamSendSetMode(I)I
.end method

.method public native GPCamSendSetParameter(II[B)I
.end method

.method public native GPCamSendStartPlayback(I)I
.end method

.method public native GPCamSendStopPlayback()I
.end method

.method public native GPCamSendVendorCmd([BI)I
.end method

.method public native GPCamSetNextPlaybackFileListIndex(I)I
.end method

.method GPCamStatusCallBack(IIIII[B)V
    .locals 3

    .line 167
    sget-object v0, Lgeneralplus/com/GPCamLib/CamWrapper;->m_NowViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 170
    iput v1, v0, Landroid/os/Message;->what:I

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CmdIndex"

    .line 172
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "CmdType"

    .line 173
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "CmdMode"

    .line 174
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "CmdID"

    .line 175
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "DataSize"

    .line 176
    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "Data"

    .line 177
    invoke-virtual {v1, p1, p6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 178
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 179
    sget-object p1, Lgeneralplus/com/GPCamLib/CamWrapper;->m_NowViewHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public GetGPCamSendGetParameterFile()Ljava/lang/String;
    .locals 1

    .line 269
    sget-object v0, Lgeneralplus/com/GPCamLib/CamWrapper;->m_ParameterFileName:Ljava/lang/String;

    return-object v0
.end method

.method public GetGPCamSetDownloadPath()Ljava/lang/String;
    .locals 1

    .line 258
    sget-object v0, Lgeneralplus/com/GPCamLib/CamWrapper;->m_ParameterFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public SetGPCamSendGetParameterFile(Ljava/lang/String;)V
    .locals 0

    .line 263
    sput-object p1, Lgeneralplus/com/GPCamLib/CamWrapper;->m_ParameterFileName:Ljava/lang/String;

    .line 264
    invoke-direct {p0, p1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetParameterFile(Ljava/lang/String;)I

    return-void
.end method

.method public SetGPCamSetDownloadPath(Ljava/lang/String;)V
    .locals 0

    .line 252
    sput-object p1, Lgeneralplus/com/GPCamLib/CamWrapper;->m_ParameterFilePath:Ljava/lang/String;

    .line 253
    invoke-direct {p0, p1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSetDownloadPath(Ljava/lang/String;)V

    return-void
.end method

.method public SetViewHandler(Landroid/os/Handler;I)V
    .locals 0

    .line 151
    sput-object p1, Lgeneralplus/com/GPCamLib/CamWrapper;->m_NowViewHandler:Landroid/os/Handler;

    .line 152
    sput p2, Lgeneralplus/com/GPCamLib/CamWrapper;->m_NowViewIndex:I

    return-void
.end method

.method public getIsNewFile()Z
    .locals 1

    .line 278
    sget-boolean v0, Lgeneralplus/com/GPCamLib/CamWrapper;->m_bNewFile:Z

    return v0
.end method

.method public setIsNewFile(Z)V
    .locals 0

    .line 274
    sput-boolean p1, Lgeneralplus/com/GPCamLib/CamWrapper;->m_bNewFile:Z

    return-void
.end method
