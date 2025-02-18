.class public final Lcom/baidu/trace/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidubce/services/bos/BosClient; = null

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;)Ljava/lang/String;
    .locals 16

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->getImageProcessCommand()Lcom/baidu/trace/api/bos/ImageProcessCommand;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->getImageWatermarkCommand()Lcom/baidu/trace/api/bos/ImageWatermarkCommand;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->getTextWatermarkCommand()Lcom/baidu/trace/api/bos/TextWatermarkCommand;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x2

    const-string v6, "a_"

    const-string v7, "y_"

    const/16 v9, -0x168

    const-string v10, "x_"

    const-string v11, "|"

    const/4 v12, 0x1

    const/16 v13, 0x1000

    const-string v14, ","

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getScale()I

    move-result v15

    const/4 v8, 0x0

    invoke-static {v15, v8, v5}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v15

    if-eqz v15, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "s_"

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getScale()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getMaxWidth()I

    move-result v5

    invoke-static {v5, v12, v13}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v5

    const-string v15, "w_"

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getMaxWidth()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getMaxHeight()I

    move-result v5

    invoke-static {v5, v12, v13}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v5

    const-string v8, "h_"

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getMaxHeight()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getQuality()I

    move-result v5

    invoke-static {v5, v12, v4}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "q_"

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getQuality()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getFormat()Lcom/baidu/trace/api/bos/ImageFormat;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "f_"

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getFormat()Lcom/baidu/trace/api/bos/ImageFormat;

    move-result-object v13

    invoke-virtual {v13}, Lcom/baidu/trace/api/bos/ImageFormat;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getAngle()I

    move-result v5

    const/16 v13, 0x168

    invoke-static {v5, v9, v13}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getAngle()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getDisplay()Lcom/baidu/trace/api/bos/ImageDisplay;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "d_"

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getDisplay()Lcom/baidu/trace/api/bos/ImageDisplay;

    move-result-object v13

    invoke-virtual {v13}, Lcom/baidu/trace/api/bos/ImageDisplay;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const-string v5, "l_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->isLimit()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getOffsetX()I

    move-result v5

    const/16 v4, 0x1000

    const/4 v13, 0x0

    invoke-static {v5, v13, v4}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getOffsetX()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getOffsetY()I

    move-result v5

    invoke-static {v5, v13, v4}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getOffsetY()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getCropWidth()I

    move-result v5

    invoke-static {v5, v12, v4}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getCropWidth()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getCropHeight()I

    move-result v5

    invoke-static {v5, v12, v4}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->getCropHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    const-string v4, "c_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/ImageProcessCommand;->isCrop()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_b
    const-string v1, "g_"

    const/16 v4, 0x9

    const/16 v5, -0x1000

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getObjectKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "k_"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getObjectKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getGravity()I

    move-result v8

    invoke-static {v8, v12, v4}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getGravity()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getGravityX()I

    move-result v8

    const/16 v13, 0x1000

    invoke-static {v8, v5, v13}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getGravityX()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getGravityY()I

    move-result v8

    invoke-static {v8, v5, v13}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getGravityY()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getAngle()I

    move-result v8

    const/16 v13, 0x168

    invoke-static {v8, v9, v13}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getAngle()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getOpacity()I

    move-result v8

    const/16 v13, 0x64

    invoke-static {v8, v12, v13}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "o_"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/ImageWatermarkCommand;->getOpacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    const-string v2, "wm_1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    if-eqz v3, :cond_1e

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14
    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "t_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_15
    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getGravity()I

    move-result v2

    invoke-static {v2, v12, v4}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getGravityX()I

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v5, v2}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getGravityX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getGravityY()I

    move-result v1

    invoke-static {v1, v5, v2}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getGravityY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getAngle()I

    move-result v1

    const/16 v2, 0x168

    invoke-static {v1, v9, v2}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getAngle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_19
    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getFontSize()I

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v12, v2}, Lcom/baidu/trace/c/e;->a(III)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "sz_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1a
    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getFontColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "fc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getFontColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b
    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getFontFamily()Lcom/baidu/trace/api/bos/FontFamily;

    move-result-object v1

    if-eqz v1, :cond_1c

    const-string v1, "ff_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getFontFamily()Lcom/baidu/trace/api/bos/FontFamily;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/FontFamily;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1c
    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getFontStyle()Lcom/baidu/trace/api/bos/FontStyle;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v1, "fs_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/TextWatermarkCommand;->getFontStyle()Lcom/baidu/trace/api/bos/FontStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/api/bos/FontStyle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1d
    const-string v1, "wm_2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a()V
    .locals 5

    new-instance v0, Lcom/baidubce/services/bos/BosClientConfiguration;

    invoke-direct {v0}, Lcom/baidubce/services/bos/BosClientConfiguration;-><init>()V

    new-instance v1, Lcom/baidubce/auth/DefaultBceSessionCredentials;

    sget-object v2, Lcom/baidu/trace/g;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/trace/g;->c:Ljava/lang/String;

    sget-object v4, Lcom/baidu/trace/g;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/baidubce/auth/DefaultBceSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidubce/services/bos/BosClientConfiguration;->setCredentials(Lcom/baidubce/auth/BceCredentials;)V

    const-string v1, "gz.bcebos.com"

    invoke-virtual {v0, v1}, Lcom/baidubce/services/bos/BosClientConfiguration;->setEndpoint(Ljava/lang/String;)V

    sget-object v1, Lcom/baidubce/Protocol;->HTTPS:Lcom/baidubce/Protocol;

    invoke-virtual {v0, v1}, Lcom/baidubce/services/bos/BosClientConfiguration;->setProtocol(Lcom/baidubce/Protocol;)V

    new-instance v1, Lcom/baidubce/services/bos/BosClient;

    invoke-direct {v1, v0}, Lcom/baidubce/services/bos/BosClient;-><init>(Lcom/baidubce/services/bos/BosClientConfiguration;)V

    sput-object v1, Lcom/baidu/trace/h;->a:Lcom/baidubce/services/bos/BosClient;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/trace/h;->b:Z

    return-void
.end method

.method private static a(ILcom/baidu/trace/api/bos/BosObjectResponse;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/baidu/trace/k;

    invoke-direct {v0, p0, p2, p1}, Lcom/baidu/trace/k;-><init>(ILcom/baidu/trace/api/bos/OnBosListener;Lcom/baidu/trace/api/bos/BosObjectResponse;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(ILjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectRequest;Lcom/baidu/trace/api/bos/BosObjectResponse;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V
    .locals 16

    move/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    sget-object v6, Lcom/baidu/trace/h;->a:Lcom/baidubce/services/bos/BosClient;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    const/16 v0, 0x3e80

    invoke-virtual {v3, v0}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setStatus(I)V

    const-string v0, "\u5b58\u50a8\u670d\u52a1\u672a\u521d\u59cb\u5316"

    invoke-virtual {v3, v0}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setMessage(Ljava/lang/String;)V

    invoke-static {v1, v3, v4, v5}, Lcom/baidu/trace/h;->a(ILcom/baidu/trace/api/bos/BosObjectResponse;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V

    sput-boolean v7, Lcom/baidu/trace/h;->b:Z

    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/trace/bc;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/trace/LBSTraceClient;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-virtual {v0}, Lcom/baidu/trace/LBSTraceClient;->a()V

    :cond_0
    return-void

    :cond_1
    sget-boolean v6, Lcom/baidu/trace/h;->b:Z

    const/16 v8, 0x36b1

    if-nez v6, :cond_2

    invoke-virtual {v3, v8}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setStatus(I)V

    :goto_0
    const-string v0, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v3, v0}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setMessage(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v3, v4, v5}, Lcom/baidu/trace/h;->a(ILcom/baidu/trace/api/bos/BosObjectResponse;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V

    return-void

    :cond_2
    sget-wide v9, Lcom/baidu/trace/g;->b:J

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    move-object v6, v3

    check-cast v6, Lcom/baidu/trace/api/bos/BosGetObjectResponse;

    invoke-static {v0, v2, v6, v4, v5}, Lcom/baidu/trace/h;->a(Ljava/lang/String;Lcom/baidu/trace/api/bos/BosObjectRequest;Lcom/baidu/trace/api/bos/BosGetObjectResponse;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V

    :goto_2
    return-void

    :cond_4
    check-cast v2, Lcom/baidu/trace/api/bos/BosPutObjectRequest;

    move-object v6, v3

    check-cast v6, Lcom/baidu/trace/api/bos/BosPutObjectResponse;

    new-instance v11, Lcom/baidubce/services/bos/model/ObjectMetadata;

    invoke-direct {v11}, Lcom/baidubce/services/bos/model/ObjectMetadata;-><init>()V

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectSize()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/baidubce/services/bos/model/ObjectMetadata;->setContentLength(J)V

    sget-object v12, Lcom/baidu/trace/api/bos/BosObjectType;->image:Lcom/baidu/trace/api/bos/BosObjectType;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;

    move-result-object v13

    if-ne v12, v13, :cond_5

    const-string v12, "image/jpeg"

    invoke-virtual {v11, v12}, Lcom/baidubce/services/bos/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getServiceId()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v15

    if-eqz v15, :cond_6

    sget-object v14, Lcom/baidu/trace/h;->a:Lcom/baidubce/services/bos/BosClient;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v14, v0, v8, v2, v11}, Lcom/baidubce/services/bos/BosClient;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/baidubce/services/bos/model/ObjectMetadata;)Lcom/baidubce/services/bos/model/PutObjectResponse;

    move-result-object v14

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getStreamData()Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/baidu/trace/h;->a:Lcom/baidubce/services/bos/BosClient;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getStreamData()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v8, v0, v12, v2, v11}, Lcom/baidubce/services/bos/BosClient;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/baidubce/services/bos/model/ObjectMetadata;)Lcom/baidubce/services/bos/model/PutObjectResponse;

    move-result-object v14

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getByteArray()[B

    move-result-object v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/baidu/trace/h;->a:Lcom/baidubce/services/bos/BosClient;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getByteArray()[B

    move-result-object v2

    invoke-virtual {v8, v0, v12, v2, v11}, Lcom/baidubce/services/bos/BosClient;->putObject(Ljava/lang/String;Ljava/lang/String;[BLcom/baidubce/services/bos/model/ObjectMetadata;)Lcom/baidubce/services/bos/model/PutObjectResponse;

    move-result-object v14

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getStringData()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/baidu/trace/h;->a:Lcom/baidubce/services/bos/BosClient;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getStringData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v12, v2, v11}, Lcom/baidubce/services/bos/BosClient;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidubce/services/bos/model/ObjectMetadata;)Lcom/baidubce/services/bos/model/PutObjectResponse;

    move-result-object v14

    :cond_9
    :goto_3
    if-eqz v14, :cond_a

    invoke-virtual {v6, v7}, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->setStatus(I)V

    const-string v0, "\u6210\u529f"

    invoke-virtual {v6, v0}, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/baidubce/services/bos/model/PutObjectResponse;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->setETag(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Lcom/baidu/trace/l;

    invoke-direct {v0, v4, v6}, Lcom/baidu/trace/l;-><init>(Lcom/baidu/trace/api/bos/OnBosListener;Lcom/baidu/trace/api/bos/BosPutObjectResponse;)V

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/baidubce/BceServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/baidubce/BceClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 v2, 0x36b1

    invoke-virtual {v3, v2}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setStatus(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/16 v2, 0x36b1

    const-class v6, Lcom/baidu/trace/h;

    monitor-enter v6

    const/16 v8, 0x190

    :try_start_1
    invoke-virtual {v0}, Lcom/baidubce/BceServiceException;->getStatusCode()I

    move-result v11

    if-ne v8, v11, :cond_b

    sget-boolean v8, Lcom/baidu/trace/h;->b:Z

    if-eqz v8, :cond_b

    sget-wide v11, Lcom/baidu/trace/g;->b:J

    cmp-long v8, v9, v11

    if-nez v8, :cond_b

    sput-boolean v7, Lcom/baidu/trace/h;->b:Z

    invoke-static {}, Lcom/baidu/trace/bc;->a()Lcom/baidu/trace/bc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/trace/bc;->c()Z

    move-result v7

    if-nez v7, :cond_b

    sget-object v7, Lcom/baidu/trace/LBSTraceClient;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-virtual {v7}, Lcom/baidu/trace/LBSTraceClient;->a()V

    :cond_b
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "\u8bf7\u6c42\u5931\u8d25"

    const/16 v7, 0x194

    invoke-virtual {v0}, Lcom/baidubce/BceServiceException;->getStatusCode()I

    move-result v0

    if-ne v7, v0, :cond_c

    const/16 v8, 0x3e81

    const-string v6, "\u6307\u5b9aobjectKey\u4e0d\u5b58\u5728"

    goto :goto_4

    :cond_c
    const/16 v8, 0x36b1

    :goto_4
    invoke-virtual {v3, v8}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setStatus(I)V

    invoke-virtual {v3, v6}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V
    .locals 7

    invoke-virtual {p0}, Lcom/baidu/trace/model/BaseRequest;->getTag()I

    move-result v0

    move-object v3, p0

    check-cast v3, Lcom/baidu/trace/api/bos/BosObjectRequest;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 p6, 0x3

    if-eq p1, p6, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;

    invoke-direct {p1, v0, p3, p4}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/BosObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/BosObjectRequest;->getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;->setObjectType(Lcom/baidu/trace/api/bos/BosObjectType;)V

    invoke-static {p4, v1, p1}, Lcom/baidu/trace/h;->a(Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/baidu/trace/api/bos/BosObjectResponse;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;->setStatus(I)V

    const-string p2, "\u6210\u529f"

    invoke-virtual {p1, p2}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;->setMessage(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p5, p1}, Lcom/baidu/trace/api/bos/OnBosListener;->onGeneratePresignedUrlCallback(Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;)V

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/baidu/trace/api/bos/BosGetObjectResponse;

    invoke-direct {v4, v0, p3, p4}, Lcom/baidu/trace/api/bos/BosGetObjectResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/BosObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/BosObjectRequest;->getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->setObjectType(Lcom/baidu/trace/api/bos/BosObjectType;)V

    invoke-static {p4, v1, v4}, Lcom/baidu/trace/h;->a(Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/baidu/trace/api/bos/BosObjectResponse;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v1, p0

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/baidu/trace/h;->a(ILjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectRequest;Lcom/baidu/trace/api/bos/BosObjectResponse;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V

    return-void

    :cond_3
    new-instance p1, Lcom/baidu/trace/j;

    invoke-direct {p1, p5, v4}, Lcom/baidu/trace/j;-><init>(Lcom/baidu/trace/api/bos/OnBosListener;Lcom/baidu/trace/api/bos/BosGetObjectResponse;)V

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/baidu/trace/api/bos/BosPutObjectResponse;

    invoke-direct {v4, v0, p3, p4}, Lcom/baidu/trace/api/bos/BosPutObjectResponse;-><init>(IILjava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/BosObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/baidu/trace/api/bos/BosObjectRequest;->getObjectType()Lcom/baidu/trace/api/bos/BosObjectType;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/baidu/trace/api/bos/BosPutObjectResponse;->setObjectType(Lcom/baidu/trace/api/bos/BosObjectType;)V

    invoke-static {p4, v1, v4}, Lcom/baidu/trace/h;->a(Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/baidu/trace/api/bos/BosObjectResponse;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/baidu/trace/i;

    invoke-direct {p1, p5, v4}, Lcom/baidu/trace/i;-><init>(Lcom/baidu/trace/api/bos/OnBosListener;Lcom/baidu/trace/api/bos/BosPutObjectResponse;)V

    :goto_1
    invoke-virtual {p6, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    instance-of p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;

    if-eqz p1, :cond_6

    check-cast p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;

    invoke-virtual {p0}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->getStreamData()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_6

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/baidu/trace/api/bos/BosObjectRequest;Lcom/baidu/trace/api/bos/BosGetObjectResponse;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/baidu/trace/h;->a:Lcom/baidubce/services/bos/BosClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/trace/api/bos/BosObjectRequest;->getServiceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/trace/api/bos/BosObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/baidubce/services/bos/BosClient;->getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/baidubce/services/bos/model/BosObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidubce/services/bos/model/BosObject;->getObjectMetadata()Lcom/baidubce/services/bos/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->setMetaData(Lcom/baidubce/services/bos/model/ObjectMetadata;)V

    invoke-virtual {p0}, Lcom/baidubce/services/bos/model/BosObject;->getObjectContent()Lcom/baidubce/services/bos/BosObjectInputStream;

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x1000

    new-array v1, v0, [B

    if-eqz p0, :cond_1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2}, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->setStatus(I)V

    const-string v0, "\u6210\u529f"

    invoke-virtual {p2, v0}, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/baidu/trace/api/bos/BosGetObjectResponse;->setObjectContent(Ljava/io/ByteArrayOutputStream;)V

    :cond_1
    new-instance v0, Lcom/baidu/trace/m;

    invoke-direct {v0, p3, p2}, Lcom/baidu/trace/m;-><init>(Lcom/baidu/trace/api/bos/OnBosListener;Lcom/baidu/trace/api/bos/BosGetObjectResponse;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/baidu/trace/api/bos/BosObjectResponse;)Z
    .locals 10

    const-string v0, "bucket"

    const-string v1, "message"

    const-string v2, "url"

    const-string v3, "status"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x36b1

    const-string v6, "\u8bf7\u6c42\u5931\u8d25"

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p2, v5}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setStatus(I)V

    invoke-virtual {p2, v6}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setMessage(Ljava/lang/String;)V

    return v7

    :cond_0
    const-string v4, "\u54cd\u5e94\u89e3\u6790\u5931\u8d25"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x36b0

    if-eqz v8, :cond_1

    invoke-virtual {p2, v9}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setStatus(I)V

    invoke-virtual {p2, v4}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setMessage(Ljava/lang/String;)V

    return v7

    :cond_1
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p2, v5}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setStatus(I)V

    invoke-virtual {p2, v6}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setMessage(Ljava/lang/String;)V

    return v7

    :cond_2
    invoke-static {p0, p2}, Lcom/baidu/trace/a;->b(Ljava/lang/String;Lcom/baidu/trace/model/BaseResponse;)Z

    move-result v5

    if-nez v5, :cond_3

    return v7

    :cond_3
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    instance-of p0, p2, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;

    if-eqz p0, :cond_4

    move-object p0, p2

    check-cast p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlResponse;->setUrl(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setStatus(I)V

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setMessage(Ljava/lang/String;)V

    :cond_7
    return v7

    :cond_8
    invoke-virtual {p2, v9}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setStatus(I)V

    invoke-virtual {p2, v4}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    invoke-virtual {p2, v9}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setStatus(I)V

    invoke-virtual {p2, v4}, Lcom/baidu/trace/api/bos/BosObjectResponse;->setMessage(Ljava/lang/String;)V

    return v7
.end method
