.class public Lcom/serenegiant/usb/UVCCamera;
.super Ljava/lang/Object;
.source "UVCCamera.java"


# static fields
.field public static final CTRL_AE:I = 0x2

.field public static final CTRL_AE_ABS:I = 0x8

.field public static final CTRL_AE_PRIORITY:I = 0x4

.field public static final CTRL_AR_REL:I = 0x10

.field public static final CTRL_FOCUS_ABS:I = 0x20

.field public static final CTRL_FOCUS_AUTO:I = 0x20000

.field public static final CTRL_FOCUS_REL:I = 0x40

.field public static final CTRL_FOCUS_SIMPLE:I = 0x80000

.field public static final CTRL_IRIS_ABS:I = 0x80

.field public static final CTRL_IRIS_REL:I = 0x100

.field public static final CTRL_PANTILT_ABS:I = 0x800

.field public static final CTRL_PANTILT_REL:I = 0x1000

.field public static final CTRL_PRIVACY:I = 0x40000

.field public static final CTRL_ROLL_ABS:I = 0x2000

.field public static final CTRL_ROLL_REL:I = 0x4000

.field public static final CTRL_SCANNING:I = 0x1

.field public static final CTRL_WINDOW:I = 0x100000

.field public static final CTRL_ZOOM_ABS:I = 0x200

.field public static final CTRL_ZOOM_REL:I = 0x400

.field private static final DEBUG:Z = false

.field public static final DEFAULT_BANDWIDTH:F = 1.0f

.field public static final DEFAULT_PREVIEW_HEIGHT:I = 0x1e0

.field public static final DEFAULT_PREVIEW_MAX_FPS:I = 0x1f

.field public static final DEFAULT_PREVIEW_MIN_FPS:I = 0x1

.field public static final DEFAULT_PREVIEW_MODE:I = 0x0

.field public static final DEFAULT_PREVIEW_WIDTH:I = 0x280

.field private static final DEFAULT_USBFS:Ljava/lang/String; = "/dev/bus/usb"

.field public static final FRAME_FORMAT_MJPEG:I = 0x1

.field public static final FRAME_FORMAT_YUYV:I = 0x0

.field public static final PIXEL_FORMAT_NV21:I = 0x5

.field public static final PIXEL_FORMAT_RAW:I = 0x0

.field public static final PIXEL_FORMAT_RGB565:I = 0x2

.field public static final PIXEL_FORMAT_RGBX:I = 0x3

.field public static final PIXEL_FORMAT_YUV:I = 0x1

.field public static final PIXEL_FORMAT_YUV420SP:I = 0x4

.field public static final PU_AVIDEO_LOCK:I = -0x7ffe0000

.field public static final PU_AVIDEO_STD:I = -0x7fff0000

.field public static final PU_BACKLIGHT:I = -0x7fffff00

.field public static final PU_BRIGHTNESS:I = -0x7fffffff

.field public static final PU_CONTRAST:I = -0x7ffffffe

.field public static final PU_CONTRAST_AUTO:I = -0x7ffc0000

.field public static final PU_DIGITAL_LIMIT:I = -0x7fff8000

.field public static final PU_DIGITAL_MULT:I = -0x7fffc000

.field public static final PU_GAIN:I = -0x7ffffe00

.field public static final PU_GAMMA:I = -0x7fffffe0

.field public static final PU_HUE:I = -0x7ffffffc

.field public static final PU_HUE_AUTO:I = -0x7ffff800

.field public static final PU_POWER_LF:I = -0x7ffffc00

.field public static final PU_SATURATION:I = -0x7ffffff8

.field public static final PU_SHARPNESS:I = -0x7ffffff0

.field public static final PU_WB_COMPO:I = -0x7fffff80

.field public static final PU_WB_COMPO_AUTO:I = -0x7fffe000

.field public static final PU_WB_TEMP:I = -0x7fffffc0

.field public static final PU_WB_TEMP_AUTO:I = -0x7ffff000

.field public static final STATUS_ATTRIBUTE_FAILURE_CHANGE:I = 0x2

.field public static final STATUS_ATTRIBUTE_INFO_CHANGE:I = 0x1

.field public static final STATUS_ATTRIBUTE_UNKNOWN:I = 0xff

.field public static final STATUS_ATTRIBUTE_VALUE_CHANGE:I = 0x0

.field public static final STATUS_CLASS_CONTROL:I = 0x10

.field public static final STATUS_CLASS_CONTROL_CAMERA:I = 0x11

.field public static final STATUS_CLASS_CONTROL_PROCESSING:I = 0x12

.field private static final SUPPORTS_CTRL:[Ljava/lang/String;

.field private static final SUPPORTS_PROC:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static isLoaded:Z


# instance fields
.field protected mAnalogVideoLockStateDef:I

.field protected mAnalogVideoLockStateMax:I

.field protected mAnalogVideoLockStateMin:I

.field protected mAnalogVideoStandardDef:I

.field protected mAnalogVideoStandardMax:I

.field protected mAnalogVideoStandardMin:I

.field protected mAutoFocusDef:I

.field protected mAutoFocusMax:I

.field protected mAutoFocusMin:I

.field protected mAutoWhiteBlanceCompoDef:I

.field protected mAutoWhiteBlanceCompoMax:I

.field protected mAutoWhiteBlanceCompoMin:I

.field protected mAutoWhiteBlanceDef:I

.field protected mAutoWhiteBlanceMax:I

.field protected mAutoWhiteBlanceMin:I

.field protected mBacklightCompDef:I

.field protected mBacklightCompMax:I

.field protected mBacklightCompMin:I

.field protected mBrightnessDef:I

.field protected mBrightnessMax:I

.field protected mBrightnessMin:I

.field protected mContrastDef:I

.field protected mContrastMax:I

.field protected mContrastMin:I

.field protected mControlSupports:J

.field private mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

.field protected mCurrentBandwidthFactor:F

.field protected mCurrentFrameFormat:I

.field protected mCurrentHeight:I

.field protected mCurrentSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentWidth:I

.field protected mExposureDef:I

.field protected mExposureMax:I

.field protected mExposureMin:I

.field protected mExposureModeDef:I

.field protected mExposureModeMax:I

.field protected mExposureModeMin:I

.field protected mExposurePriorityDef:I

.field protected mExposurePriorityMax:I

.field protected mExposurePriorityMin:I

.field protected mFocusDef:I

.field protected mFocusMax:I

.field protected mFocusMin:I

.field protected mFocusRelDef:I

.field protected mFocusRelMax:I

.field protected mFocusRelMin:I

.field protected mFocusSimpleDef:I

.field protected mFocusSimpleMax:I

.field protected mFocusSimpleMin:I

.field protected mGainDef:I

.field protected mGainMax:I

.field protected mGainMin:I

.field protected mGammaDef:I

.field protected mGammaMax:I

.field protected mGammaMin:I

.field protected mHueDef:I

.field protected mHueMax:I

.field protected mHueMin:I

.field protected mIrisDef:I

.field protected mIrisMax:I

.field protected mIrisMin:I

.field protected mIrisRelDef:I

.field protected mIrisRelMax:I

.field protected mIrisRelMin:I

.field protected mMultiplierDef:I

.field protected mMultiplierLimitDef:I

.field protected mMultiplierLimitMax:I

.field protected mMultiplierLimitMin:I

.field protected mMultiplierMax:I

.field protected mMultiplierMin:I

.field protected mNativePtr:J

.field protected mPanDef:I

.field protected mPanMax:I

.field protected mPanMin:I

.field protected mPanRelDef:I

.field protected mPanRelMax:I

.field protected mPanRelMin:I

.field protected mPowerlineFrequencyDef:I

.field protected mPowerlineFrequencyMax:I

.field protected mPowerlineFrequencyMin:I

.field protected mPrivacyDef:I

.field protected mPrivacyMax:I

.field protected mPrivacyMin:I

.field protected mProcSupports:J

.field protected mRollDef:I

.field protected mRollMax:I

.field protected mRollMin:I

.field protected mRollRelDef:I

.field protected mRollRelMax:I

.field protected mRollRelMin:I

.field protected mSaturationDef:I

.field protected mSaturationMax:I

.field protected mSaturationMin:I

.field protected mScanningModeDef:I

.field protected mScanningModeMax:I

.field protected mScanningModeMin:I

.field protected mSharpnessDef:I

.field protected mSharpnessMax:I

.field protected mSharpnessMin:I

.field protected mSupportedSize:Ljava/lang/String;

.field protected mTiltDef:I

.field protected mTiltMax:I

.field protected mTiltMin:I

.field protected mTiltRelDef:I

.field protected mTiltRelMax:I

.field protected mTiltRelMin:I

.field protected mWhiteBlanceCompoDef:I

.field protected mWhiteBlanceCompoMax:I

.field protected mWhiteBlanceCompoMin:I

.field protected mWhiteBlanceDef:I

.field protected mWhiteBlanceMax:I

.field protected mWhiteBlanceMin:I

.field protected mWhiteBlanceRelDef:I

.field protected mWhiteBlanceRelMax:I

.field protected mWhiteBlanceRelMin:I

.field protected mZoomDef:I

.field protected mZoomMax:I

.field protected mZoomMin:I

.field protected mZoomRelDef:I

.field protected mZoomRelMax:I

.field protected mZoomRelMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 44
    const-class v0, Lcom/serenegiant/usb/UVCCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/usb/UVCCamera;->TAG:Ljava/lang/String;

    .line 118
    sget-boolean v0, Lcom/serenegiant/usb/UVCCamera;->isLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "jpeg-turbo1500"

    .line 119
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "usb100"

    .line 120
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "uvc"

    .line 121
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "UVCCamera"

    .line 122
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 123
    sput-boolean v0, Lcom/serenegiant/usb/UVCCamera;->isLoaded:Z

    :cond_0
    const-string v1, "D0:  Scanning Mode"

    const-string v2, "D1:  Auto-Exposure Mode"

    const-string v3, "D2:  Auto-Exposure Priority"

    const-string v4, "D3:  Exposure Time (Absolute)"

    const-string v5, "D4:  Exposure Time (Relative)"

    const-string v6, "D5:  Focus (Absolute)"

    const-string v7, "D6:  Focus (Relative)"

    const-string v8, "D7:  Iris (Absolute)"

    const-string v9, "D8:  Iris (Relative)"

    const-string v10, "D9:  Zoom (Absolute)"

    const-string v11, "D10: Zoom (Relative)"

    const-string v12, "D11: PanTilt (Absolute)"

    const-string v13, "D12: PanTilt (Relative)"

    const-string v14, "D13: Roll (Absolute)"

    const-string v15, "D14: Roll (Relative)"

    const-string v16, "D15: Reserved"

    const-string v17, "D16: Reserved"

    const-string v18, "D17: Focus, Auto"

    const-string v19, "D18: Privacy"

    const-string v20, "D19: Focus, Simple"

    const-string v21, "D20: Window"

    const-string v22, "D21: Region of Interest"

    const-string v23, "D22: Reserved, set to zero"

    const-string v24, "D23: Reserved, set to zero"

    .line 960
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/usb/UVCCamera;->SUPPORTS_CTRL:[Ljava/lang/String;

    const-string v1, "D0: Brightness"

    const-string v2, "D1: Contrast"

    const-string v3, "D2: Hue"

    const-string v4, "D3: Saturation"

    const-string v5, "D4: Sharpness"

    const-string v6, "D5: Gamma"

    const-string v7, "D6: White Balance Temperature"

    const-string v8, "D7: White Balance Component"

    const-string v9, "D8: Backlight Compensation"

    const-string v10, "D9: Gain"

    const-string v11, "D10: Power Line Frequency"

    const-string v12, "D11: Hue, Auto"

    const-string v13, "D12: White Balance Temperature, Auto"

    const-string v14, "D13: White Balance Component, Auto"

    const-string v15, "D14: Digital Multiplier"

    const-string v16, "D15: Digital Multiplier Limit"

    const-string v17, "D16: Analog Video Standard"

    const-string v18, "D17: Analog Video Lock Status"

    const-string v19, "D18: Contrast, Auto"

    const-string v20, "D19: Reserved. Set to zero"

    const-string v21, "D20: Reserved. Set to zero"

    const-string v22, "D21: Reserved. Set to zero"

    const-string v23, "D22: Reserved. Set to zero"

    const-string v24, "D23: Reserved. Set to zero"

    .line 987
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/usb/UVCCamera;->SUPPORTS_PROC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 130
    iput v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentFrameFormat:I

    const/16 v0, 0x280

    .line 131
    iput v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentWidth:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 132
    iput v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentBandwidthFactor:F

    .line 180
    invoke-direct {p0}, Lcom/serenegiant/usb/UVCCamera;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mSupportedSize:Ljava/lang/String;

    return-void
.end method

.method private static final addSize(Lorg/json/JSONObject;IILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "II",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/Size;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "size"

    .line 378
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 379
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_0

    .line 381
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 383
    :try_start_0
    new-instance v9, Lcom/serenegiant/usb/Size;

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object v2, v9

    move v3, p1

    move v4, p2

    move v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/serenegiant/usb/Size;-><init>(IIIII)V

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static final dumpControls(J)V
    .locals 9

    .line 1015
    sget-object v0, Lcom/serenegiant/usb/UVCCamera;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "controlSupports=%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :goto_0
    sget-object v0, Lcom/serenegiant/usb/UVCCamera;->SUPPORTS_CTRL:[Ljava/lang/String;

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 1017
    sget-object v0, Lcom/serenegiant/usb/UVCCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/serenegiant/usb/UVCCamera;->SUPPORTS_CTRL:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shl-int v3, v1, v4

    int-to-long v5, v3

    and-long/2addr v5, p0

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    const-string v3, "=enabled"

    goto :goto_1

    :cond_0
    const-string v3, "=disabled"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final dumpProc(J)V
    .locals 9

    .line 1022
    sget-object v0, Lcom/serenegiant/usb/UVCCamera;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "procSupports=%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :goto_0
    sget-object v0, Lcom/serenegiant/usb/UVCCamera;->SUPPORTS_PROC:[Ljava/lang/String;

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 1024
    sget-object v0, Lcom/serenegiant/usb/UVCCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/serenegiant/usb/UVCCamera;->SUPPORTS_PROC:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shl-int v3, v1, v4

    int-to-long v5, v3

    and-long/2addr v5, p0

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    const-string v3, "=enabled"

    goto :goto_1

    :cond_0
    const-string v3, "=disabled"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getSupportedSize(ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/Size;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 359
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "formats"

    .line 360
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 363
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 364
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "size"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 365
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, p0, :cond_0

    const/4 v7, -0x1

    if-ne p0, v7, :cond_1

    .line 367
    :cond_0
    invoke-static {v5, v6, v3, v1}, Lcom/serenegiant/usb/UVCCamera;->addSize(Lorg/json/JSONObject;IILjava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 372
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method private final getUSBFSName(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)Ljava/lang/String;
    .locals 6

    .line 1030
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    .line 1031
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "/"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 1032
    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1034
    :goto_1
    array-length v5, v0

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_1

    .line 1035
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1036
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1038
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1039
    sget-object v0, Lcom/serenegiant/usb/UVCCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get USBFS path, try to use default path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/dev/bus/usb"

    :cond_3
    return-object v2
.end method

.method private final native nativeConnect(JIIIIILjava/lang/String;)I
.end method

.method private final native nativeCreate()J
.end method

.method private final native nativeDestroy(J)V
.end method

.method private static final native nativeGetAnalogVideoLoackState(J)I
.end method

.method private static final native nativeGetAnalogVideoStandard(J)I
.end method

.method private static final native nativeGetAutoContrast(J)I
.end method

.method private static final native nativeGetAutoFocus(J)I
.end method

.method private static final native nativeGetAutoHue(J)I
.end method

.method private static final native nativeGetAutoWhiteBlance(J)I
.end method

.method private static final native nativeGetAutoWhiteBlanceCompo(J)I
.end method

.method private static final native nativeGetBacklightComp(J)I
.end method

.method private static final native nativeGetBrightness(J)I
.end method

.method private static final native nativeGetContrast(J)I
.end method

.method private static final native nativeGetCtrlSupports(J)J
.end method

.method private static final native nativeGetDigitalMultiplier(J)I
.end method

.method private static final native nativeGetDigitalMultiplierLimit(J)I
.end method

.method private static final native nativeGetExposure(J)I
.end method

.method private static final native nativeGetExposureMode(J)I
.end method

.method private static final native nativeGetExposurePriority(J)I
.end method

.method private static final native nativeGetExposureRel(J)I
.end method

.method private static final native nativeGetFocus(J)I
.end method

.method private static final native nativeGetFocusRel(J)I
.end method

.method private static final native nativeGetGain(J)I
.end method

.method private static final native nativeGetGamma(J)I
.end method

.method private static final native nativeGetHue(J)I
.end method

.method private static final native nativeGetIris(J)I
.end method

.method private static final native nativeGetIrisRel(J)I
.end method

.method private static final native nativeGetPan(J)I
.end method

.method private static final native nativeGetPanRel(J)I
.end method

.method private static final native nativeGetPowerlineFrequency(J)I
.end method

.method private static final native nativeGetPrivacy(J)I
.end method

.method private static final native nativeGetProcSupports(J)J
.end method

.method private static final native nativeGetRoll(J)I
.end method

.method private static final native nativeGetRollRel(J)I
.end method

.method private static final native nativeGetSaturation(J)I
.end method

.method private static final native nativeGetScanningMode(J)I
.end method

.method private static final native nativeGetSharpness(J)I
.end method

.method private static final native nativeGetSupportedSize(J)Ljava/lang/String;
.end method

.method private static final native nativeGetTilt(J)I
.end method

.method private static final native nativeGetTiltRel(J)I
.end method

.method private static final native nativeGetWhiteBlance(J)I
.end method

.method private static final native nativeGetWhiteBlanceCompo(J)I
.end method

.method private static final native nativeGetZoom(J)I
.end method

.method private static final native nativeGetZoomRel(J)I
.end method

.method private static final native nativeRelease(J)I
.end method

.method private static final native nativeSetAnalogVideoLoackState(JI)I
.end method

.method private static final native nativeSetAnalogVideoStandard(JI)I
.end method

.method private static final native nativeSetAutoContrast(JZ)I
.end method

.method private static final native nativeSetAutoFocus(JZ)I
.end method

.method private static final native nativeSetAutoHue(JZ)I
.end method

.method private static final native nativeSetAutoWhiteBlance(JZ)I
.end method

.method private static final native nativeSetAutoWhiteBlanceCompo(JZ)I
.end method

.method private static final native nativeSetBacklightComp(JI)I
.end method

.method private static final native nativeSetBrightness(JI)I
.end method

.method private static final native nativeSetButtonCallback(JLcom/serenegiant/usb/IButtonCallback;)I
.end method

.method private static final native nativeSetCaptureDisplay(JLandroid/view/Surface;)I
.end method

.method private static final native nativeSetContrast(JI)I
.end method

.method private static final native nativeSetDigitalMultiplier(JI)I
.end method

.method private static final native nativeSetDigitalMultiplierLimit(JI)I
.end method

.method private static final native nativeSetExposure(JI)I
.end method

.method private static final native nativeSetExposureMode(JI)I
.end method

.method private static final native nativeSetExposurePriority(JI)I
.end method

.method private static final native nativeSetExposureRel(JI)I
.end method

.method private static final native nativeSetFocus(JI)I
.end method

.method private static final native nativeSetFocusRel(JI)I
.end method

.method private static final native nativeSetFrameCallback(JLcom/serenegiant/usb/IFrameCallback;I)I
.end method

.method private static final native nativeSetGain(JI)I
.end method

.method private static final native nativeSetGamma(JI)I
.end method

.method private static final native nativeSetHue(JI)I
.end method

.method private static final native nativeSetIris(JI)I
.end method

.method private static final native nativeSetIrisRel(JI)I
.end method

.method private static final native nativeSetPan(JI)I
.end method

.method private static final native nativeSetPanRel(JI)I
.end method

.method private static final native nativeSetPowerlineFrequency(JI)I
.end method

.method private static final native nativeSetPreviewDisplay(JLandroid/view/Surface;)I
.end method

.method private static final native nativeSetPreviewSize(JIIIIIF)I
.end method

.method private static final native nativeSetPrivacy(JZ)I
.end method

.method private static final native nativeSetRoll(JI)I
.end method

.method private static final native nativeSetRollRel(JI)I
.end method

.method private static final native nativeSetSaturation(JI)I
.end method

.method private static final native nativeSetScanningMode(JI)I
.end method

.method private static final native nativeSetSharpness(JI)I
.end method

.method private static final native nativeSetStatusCallback(JLcom/serenegiant/usb/IStatusCallback;)I
.end method

.method private static final native nativeSetTilt(JI)I
.end method

.method private static final native nativeSetTiltRel(JI)I
.end method

.method private static final native nativeSetWhiteBlance(JI)I
.end method

.method private static final native nativeSetWhiteBlanceCompo(JI)I
.end method

.method private static final native nativeSetZoom(JI)I
.end method

.method private static final native nativeSetZoomRel(JI)I
.end method

.method private static final native nativeStartPreview(J)I
.end method

.method private static final native nativeStopPreview(J)I
.end method

.method private final native nativeUpdateAnalogVideoLockStateLimit(J)I
.end method

.method private final native nativeUpdateAnalogVideoStandardLimit(J)I
.end method

.method private final native nativeUpdateAutoContrastLimit(J)I
.end method

.method private final native nativeUpdateAutoFocusLimit(J)I
.end method

.method private final native nativeUpdateAutoHueLimit(J)I
.end method

.method private final native nativeUpdateAutoWhiteBlanceCompoLimit(J)I
.end method

.method private final native nativeUpdateAutoWhiteBlanceLimit(J)I
.end method

.method private final native nativeUpdateBacklightCompLimit(J)I
.end method

.method private final native nativeUpdateBrightnessLimit(J)I
.end method

.method private final native nativeUpdateContrastLimit(J)I
.end method

.method private final native nativeUpdateDigitalMultiplierLimit(J)I
.end method

.method private final native nativeUpdateDigitalMultiplierLimitLimit(J)I
.end method

.method private final native nativeUpdateExposureLimit(J)I
.end method

.method private final native nativeUpdateExposureModeLimit(J)I
.end method

.method private final native nativeUpdateExposurePriorityLimit(J)I
.end method

.method private final native nativeUpdateExposureRelLimit(J)I
.end method

.method private final native nativeUpdateFocusLimit(J)I
.end method

.method private final native nativeUpdateFocusRelLimit(J)I
.end method

.method private final native nativeUpdateGainLimit(J)I
.end method

.method private final native nativeUpdateGammaLimit(J)I
.end method

.method private final native nativeUpdateHueLimit(J)I
.end method

.method private final native nativeUpdateIrisLimit(J)I
.end method

.method private final native nativeUpdateIrisRelLimit(J)I
.end method

.method private final native nativeUpdatePanLimit(J)I
.end method

.method private final native nativeUpdatePanRelLimit(J)I
.end method

.method private final native nativeUpdatePowerlineFrequencyLimit(J)I
.end method

.method private final native nativeUpdatePrivacyLimit(J)I
.end method

.method private final native nativeUpdateRollLimit(J)I
.end method

.method private final native nativeUpdateRollRelLimit(J)I
.end method

.method private final native nativeUpdateSaturationLimit(J)I
.end method

.method private final native nativeUpdateScanningModeLimit(J)I
.end method

.method private final native nativeUpdateSharpnessLimit(J)I
.end method

.method private final native nativeUpdateTiltLimit(J)I
.end method

.method private final native nativeUpdateTiltRelLimit(J)I
.end method

.method private final native nativeUpdateWhiteBlanceCompoLimit(J)I
.end method

.method private final native nativeUpdateWhiteBlanceLimit(J)I
.end method

.method private final native nativeUpdateZoomLimit(J)I
.end method

.method private final native nativeUpdateZoomRelLimit(J)I
.end method


# virtual methods
.method public checkSupportFlag(J)Z
    .locals 7

    .line 461
    invoke-virtual {p0}, Lcom/serenegiant/usb/UVCCamera;->updateCameraParams()V

    const-wide/32 v0, -0x80000000

    and-long v2, p1, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v2, v0

    if-nez v6, :cond_1

    .line 463
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mProcSupports:J

    and-long/2addr v0, p1

    const-wide/32 v2, 0x7fffffff

    and-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 465
    :cond_1
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mControlSupports:J

    and-long/2addr v0, p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/usb/UVCCamera;->stopPreview()V

    .line 252
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 253
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeRelease(J)I

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->close()V

    .line 258
    iput-object v1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 260
    :cond_1
    iput-wide v2, p0, Lcom/serenegiant/usb/UVCCamera;->mProcSupports:J

    iput-wide v2, p0, Lcom/serenegiant/usb/UVCCamera;->mControlSupports:J

    const/4 v0, -0x1

    .line 261
    iput v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentFrameFormat:I

    const/4 v0, 0x0

    .line 262
    iput v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentBandwidthFactor:F

    .line 263
    iput-object v1, p0, Lcom/serenegiant/usb/UVCCamera;->mSupportedSize:Ljava/lang/String;

    .line 264
    iput-object v1, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentSizeList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 5

    monitor-enter p0

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/usb/UVCCamera;->close()V

    .line 452
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 453
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeDestroy(J)V

    .line 454
    iput-wide v2, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFocus()Z
    .locals 6

    monitor-enter p0

    .line 477
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 478
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetAutoFocus(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 480
    :cond_1
    :goto_0
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoWhiteBlance()Z
    .locals 6

    monitor-enter p0

    .line 532
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 533
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetAutoWhiteBlance(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 535
    :cond_1
    :goto_0
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBrightness()I
    .locals 2

    monitor-enter p0

    .line 610
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetBrightness(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/UVCCamera;->getBrightness(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBrightness(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 596
    :try_start_0
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 597
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateBrightnessLimit(J)I

    .line 598
    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mBrightnessMax:I

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mBrightnessMin:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 600
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mBrightnessMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    float-to-int v0, p1

    .line 603
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContrast()I
    .locals 2

    monitor-enter p0

    .line 651
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetContrast(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/UVCCamera;->getContrast(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContrast(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 638
    :try_start_0
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 639
    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mContrastMax:I

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mContrastMin:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 641
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mContrastMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    float-to-int v0, p1

    .line 644
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getFocus()I
    .locals 2

    monitor-enter p0

    .line 514
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetFocus(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/UVCCamera;->getFocus(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFocus(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 500
    :try_start_0
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 501
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateFocusLimit(J)I

    .line 502
    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mFocusMax:I

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mFocusMin:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 504
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mFocusMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    float-to-int v0, p1

    .line 507
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGain()I
    .locals 2

    monitor-enter p0

    .line 732
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetGain(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/UVCCamera;->getGain(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGain(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 718
    :try_start_0
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 719
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateGainLimit(J)I

    .line 720
    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mGainMax:I

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mGainMin:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 722
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mGainMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    float-to-int v0, p1

    .line 725
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGamma()I
    .locals 2

    monitor-enter p0

    .line 773
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetGamma(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/UVCCamera;->getGamma(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGamma(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 759
    :try_start_0
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 760
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateGammaLimit(J)I

    .line 761
    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mGammaMax:I

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mGammaMin:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 763
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mGammaMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    float-to-int v0, p1

    .line 766
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getHue()I
    .locals 2

    monitor-enter p0

    .line 854
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetHue(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/UVCCamera;->getHue(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHue(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 840
    :try_start_0
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 841
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateHueLimit(J)I

    .line 842
    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mHueMax:I

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mHueMin:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 844
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mHueMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    float-to-int v0, p1

    .line 847
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPowerlineFrequency()I
    .locals 2

    .line 870
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetPowerlineFrequency(J)I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/serenegiant/usb/Size;
    .locals 4

    .line 286
    invoke-virtual {p0}, Lcom/serenegiant/usb/UVCCamera;->getSupportedSizeList()Ljava/util/List;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/Size;

    .line 288
    iget v2, v1, Lcom/serenegiant/usb/Size;->width:I

    iget v3, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentWidth:I

    if-eq v2, v3, :cond_2

    iget v2, v1, Lcom/serenegiant/usb/Size;->height:I

    iget v3, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentHeight:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public declared-synchronized getSaturation()I
    .locals 2

    monitor-enter p0

    .line 814
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetSaturation(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/UVCCamera;->getSaturation(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSaturation(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 800
    :try_start_0
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 801
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateSaturationLimit(J)I

    .line 802
    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mSaturationMax:I

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mSaturationMin:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 804
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mSaturationMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    float-to-int v0, p1

    .line 807
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSharpness()I
    .locals 2

    monitor-enter p0

    .line 692
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetSharpness(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/UVCCamera;->getSharpness(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSharpness(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 678
    :try_start_0
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 679
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateSharpnessLimit(J)I

    .line 680
    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mSharpnessMax:I

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mSharpnessMin:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 682
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mSharpnessMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    float-to-int v0, p1

    .line 685
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSupportedSize()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mSupportedSize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mSupportedSize:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetSupportedSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mSupportedSize:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportedSizeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/Size;",
            ">;"
        }
    .end annotation

    .line 351
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentFrameFormat:I

    if-lez v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/serenegiant/usb/UVCCamera;->mSupportedSize:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->getSupportedSize(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsbControlBlock()Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    return-object v0
.end method

.method public declared-synchronized getWhiteBlance()I
    .locals 2

    monitor-enter p0

    .line 570
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetWhiteBlance(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/UVCCamera;->getFocus(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWhiteBlance(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 556
    :try_start_0
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 557
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateWhiteBlanceLimit(J)I

    .line 558
    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mWhiteBlanceMax:I

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mWhiteBlanceMin:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 560
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mWhiteBlanceMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    float-to-int v0, p1

    .line 563
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getZoom()I
    .locals 2

    monitor-enter p0

    .line 909
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetZoom(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/usb/UVCCamera;->getZoom(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getZoom(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 895
    :try_start_0
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 896
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateZoomLimit(J)I

    .line 897
    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mZoomMax:I

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mZoomMin:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 899
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mZoomMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    float-to-int v0, p1

    .line 902
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized open(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 10

    monitor-enter p0

    .line 191
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->clone()Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 194
    iget-wide v2, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    .line 195
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getVenderId()I

    move-result v4

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getProductId()I

    move-result v5

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 196
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getFileDescriptor()I

    move-result v6

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 197
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getBusNum()I

    move-result v7

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 198
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getDevNum()I

    move-result v8

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 199
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/UVCCamera;->getUSBFSName(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    .line 194
    invoke-direct/range {v1 .. v9}, Lcom/serenegiant/usb/UVCCamera;->nativeConnect(JIIIIILjava/lang/String;)I

    move-result p1

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c03\u7528nativeConnect\u8fd4\u56de\u503c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 203
    :try_start_2
    sget-object v1, Lcom/serenegiant/usb/UVCCamera;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 204
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "core message ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    :goto_1
    if-nez p1, :cond_2

    .line 220
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mSupportedSize:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 221
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetSupportedSize(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mSupportedSize:Ljava/lang/String;

    .line 223
    :cond_1
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    const/4 v4, 0x1

    const/16 v5, 0x1f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Lcom/serenegiant/usb/UVCCamera;->nativeSetPreviewSize(JIIIIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 213
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open failed:result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "----->id_camera="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ";venderId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 214
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getVenderId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";productId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 215
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getProductId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";fileDescriptor="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getFileDescriptor()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";busNum="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 216
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getBusNum()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";devAddr="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getDevNum()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";usbfs="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 217
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/UVCCamera;->getUSBFSName(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nException\uff1a"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetBrightness()V
    .locals 5

    monitor-enter p0

    .line 614
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 615
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mBrightnessDef:I

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetBrightness(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetContrast()V
    .locals 5

    monitor-enter p0

    .line 655
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 656
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mContrastDef:I

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetContrast(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetFocus()V
    .locals 5

    monitor-enter p0

    .line 518
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 519
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mFocusDef:I

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetFocus(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetGain()V
    .locals 5

    monitor-enter p0

    .line 736
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 737
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mGainDef:I

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetGain(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetGamma()V
    .locals 5

    monitor-enter p0

    .line 777
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 778
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mGammaDef:I

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetGamma(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetHue()V
    .locals 5

    monitor-enter p0

    .line 858
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 859
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mSaturationDef:I

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetHue(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetSaturation()V
    .locals 5

    monitor-enter p0

    .line 818
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 819
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mSaturationDef:I

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetSaturation(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetSharpness()V
    .locals 5

    monitor-enter p0

    .line 696
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 697
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mSharpnessDef:I

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetSharpness(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetWhiteBlance()V
    .locals 5

    monitor-enter p0

    .line 574
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 575
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mWhiteBlanceDef:I

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetWhiteBlance(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetZoom()V
    .locals 5

    monitor-enter p0

    .line 913
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 914
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    iget v2, p0, Lcom/serenegiant/usb/UVCCamera;->mZoomDef:I

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetZoom(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFocus(Z)V
    .locals 5

    monitor-enter p0

    .line 470
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 471
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetAutoFocus(JZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAutoWhiteBlance(Z)V
    .locals 5

    monitor-enter p0

    .line 525
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 526
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetAutoWhiteBlance(JZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBrightness(I)V
    .locals 5

    monitor-enter p0

    .line 583
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 584
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mBrightnessMax:I

    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mBrightnessMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 586
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mBrightnessMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetBrightness(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setButtonCallback(Lcom/serenegiant/usb/IButtonCallback;)V
    .locals 5

    .line 242
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 243
    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetButtonCallback(JLcom/serenegiant/usb/IButtonCallback;)I

    :cond_0
    return-void
.end method

.method public declared-synchronized setContrast(I)V
    .locals 5

    monitor-enter p0

    .line 624
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 625
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateContrastLimit(J)I

    .line 626
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mContrastMax:I

    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mContrastMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 628
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mContrastMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetContrast(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFocus(I)V
    .locals 5

    monitor-enter p0

    .line 487
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 488
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mFocusMax:I

    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mFocusMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 490
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mFocusMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetFocus(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFrameCallback(Lcom/serenegiant/usb/IFrameCallback;I)V
    .locals 5

    .line 423
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 424
    invoke-static {v0, v1, p1, p2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetFrameCallback(JLcom/serenegiant/usb/IFrameCallback;I)I

    :cond_0
    return-void
.end method

.method public declared-synchronized setGain(I)V
    .locals 5

    monitor-enter p0

    .line 705
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 706
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mGainMax:I

    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mGainMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 708
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mGainMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetGain(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGamma(I)V
    .locals 5

    monitor-enter p0

    .line 746
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 747
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mGammaMax:I

    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mGammaMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 749
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mGammaMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetGamma(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHue(I)V
    .locals 5

    monitor-enter p0

    .line 827
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 828
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mHueMax:I

    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mHueMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 830
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mHueMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetHue(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPowerlineFrequency(I)V
    .locals 5

    .line 865
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 866
    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetPowerlineFrequency(JI)I

    :cond_0
    return-void
.end method

.method public declared-synchronized setPreviewDisplay(Landroid/view/Surface;)V
    .locals 2

    monitor-enter p0

    .line 414
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetPreviewDisplay(JLandroid/view/Surface;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    monitor-enter p0

    .line 396
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetPreviewDisplay(JLandroid/view/Surface;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPreviewSize(II)V
    .locals 7

    .line 303
    iget v5, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentFrameFormat:I

    iget v6, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentBandwidthFactor:F

    const/4 v3, 0x1

    const/16 v4, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/serenegiant/usb/UVCCamera;->setPreviewSize(IIIIIF)V

    return-void
.end method

.method public setPreviewSize(III)V
    .locals 7

    .line 313
    iget v6, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentBandwidthFactor:F

    const/4 v3, 0x1

    const/16 v4, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/serenegiant/usb/UVCCamera;->setPreviewSize(IIIIIF)V

    return-void
.end method

.method public setPreviewSize(IIIF)V
    .locals 7

    const/4 v3, 0x1

    const/16 v4, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    .line 324
    invoke-virtual/range {v0 .. v6}, Lcom/serenegiant/usb/UVCCamera;->setPreviewSize(IIIIIF)V

    return-void
.end method

.method public setPreviewSize(IIIIIF)V
    .locals 8

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 339
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 340
    invoke-static/range {v0 .. v7}, Lcom/serenegiant/usb/UVCCamera;->nativeSetPreviewSize(JIIIIIF)I

    move-result p3

    if-nez p3, :cond_0

    .line 343
    iput p5, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentFrameFormat:I

    .line 344
    iput p1, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentWidth:I

    .line 345
    iput p2, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentHeight:I

    .line 346
    iput p6, p0, Lcom/serenegiant/usb/UVCCamera;->mCurrentBandwidthFactor:F

    goto :goto_0

    .line 342
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed to set preview size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid preview size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    monitor-enter p0

    .line 405
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 406
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v1, v2, v0}, Lcom/serenegiant/usb/UVCCamera;->nativeSetPreviewDisplay(JLandroid/view/Surface;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSaturation(I)V
    .locals 5

    monitor-enter p0

    .line 787
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 788
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mSaturationMax:I

    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mSaturationMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 790
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mSaturationMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetSaturation(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSharpness(I)V
    .locals 5

    monitor-enter p0

    .line 665
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 666
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mSharpnessMax:I

    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mSharpnessMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 668
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mSharpnessMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetSharpness(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStatusCallback(Lcom/serenegiant/usb/IStatusCallback;)V
    .locals 5

    .line 232
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 233
    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetStatusCallback(JLcom/serenegiant/usb/IStatusCallback;)I

    :cond_0
    return-void
.end method

.method public declared-synchronized setWhiteBlance(I)V
    .locals 5

    monitor-enter p0

    .line 543
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 544
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mWhiteBlanceMax:I

    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mWhiteBlanceMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 546
    iget-wide v1, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mWhiteBlanceMin:I

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetWhiteBlance(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setZoom(I)V
    .locals 5

    monitor-enter p0

    .line 879
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 880
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mZoomMax:I

    iget v1, p0, Lcom/serenegiant/usb/UVCCamera;->mZoomMin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 882
    iget v0, p0, Lcom/serenegiant/usb/UVCCamera;->mZoomMin:I

    add-int/2addr p1, v0

    .line 884
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetZoom(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startCapture(Landroid/view/Surface;)V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1069
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/UVCCamera;->nativeSetCaptureDisplay(JLandroid/view/Surface;)I

    return-void

    .line 1071
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "startCapture"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized startPreview()V
    .locals 2

    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-eqz v0, :cond_0

    .line 433
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeStartPreview(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopCapture()V
    .locals 3

    .line 1078
    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-eqz v0, :cond_0

    .line 1079
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->nativeSetCaptureDisplay(JLandroid/view/Surface;)I

    :cond_0
    return-void
.end method

.method public declared-synchronized stopPreview()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 441
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->setFrameCallback(Lcom/serenegiant/usb/IFrameCallback;I)V

    .line 442
    iget-object v0, p0, Lcom/serenegiant/usb/UVCCamera;->mCtrlBlock:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-eqz v0, :cond_0

    .line 443
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeStopPreview(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateCameraParams()V
    .locals 5

    monitor-enter p0

    .line 920
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 921
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mControlSupports:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mProcSupports:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 923
    :cond_0
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mControlSupports:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 924
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetCtrlSupports(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mControlSupports:J

    .line 925
    :cond_1
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mProcSupports:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 926
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeGetProcSupports(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mProcSupports:J

    .line 928
    :cond_2
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mControlSupports:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mProcSupports:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 929
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateBrightnessLimit(J)I

    .line 930
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateContrastLimit(J)I

    .line 931
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateSharpnessLimit(J)I

    .line 932
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateGainLimit(J)I

    .line 933
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateGammaLimit(J)I

    .line 934
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateSaturationLimit(J)I

    .line 935
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateHueLimit(J)I

    .line 936
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateZoomLimit(J)I

    .line 937
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateWhiteBlanceLimit(J)I

    .line 938
    iget-wide v0, p0, Lcom/serenegiant/usb/UVCCamera;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/serenegiant/usb/UVCCamera;->nativeUpdateFocusLimit(J)I

    goto :goto_0

    .line 956
    :cond_3
    iput-wide v2, p0, Lcom/serenegiant/usb/UVCCamera;->mProcSupports:J

    iput-wide v2, p0, Lcom/serenegiant/usb/UVCCamera;->mControlSupports:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
