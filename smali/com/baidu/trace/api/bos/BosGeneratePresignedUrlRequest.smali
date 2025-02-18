.class public final Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;
.super Lcom/baidu/trace/api/bos/BosObjectRequest;


# instance fields
.field private a:Lcom/baidu/trace/api/bos/ImageProcessCommand;

.field private b:Lcom/baidu/trace/api/bos/ImageWatermarkCommand;

.field private c:Lcom/baidu/trace/api/bos/TextWatermarkCommand;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/api/bos/BosObjectRequest;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->a:Lcom/baidu/trace/api/bos/ImageProcessCommand;

    iput-object v0, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->b:Lcom/baidu/trace/api/bos/ImageWatermarkCommand;

    iput-object v0, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->c:Lcom/baidu/trace/api/bos/TextWatermarkCommand;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/trace/api/bos/BosObjectRequest;-><init>(IJ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->a:Lcom/baidu/trace/api/bos/ImageProcessCommand;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->b:Lcom/baidu/trace/api/bos/ImageWatermarkCommand;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->c:Lcom/baidu/trace/api/bos/TextWatermarkCommand;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/baidu/trace/api/bos/BosObjectRequest;-><init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->a:Lcom/baidu/trace/api/bos/ImageProcessCommand;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->b:Lcom/baidu/trace/api/bos/ImageWatermarkCommand;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->c:Lcom/baidu/trace/api/bos/TextWatermarkCommand;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;Lcom/baidu/trace/api/bos/ImageProcessCommand;Lcom/baidu/trace/api/bos/ImageWatermarkCommand;Lcom/baidu/trace/api/bos/TextWatermarkCommand;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;-><init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;)V

    iput-object p6, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->a:Lcom/baidu/trace/api/bos/ImageProcessCommand;

    iput-object p7, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->b:Lcom/baidu/trace/api/bos/ImageWatermarkCommand;

    iput-object p8, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->c:Lcom/baidu/trace/api/bos/TextWatermarkCommand;

    return-void
.end method


# virtual methods
.method public final getImageProcessCommand()Lcom/baidu/trace/api/bos/ImageProcessCommand;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->a:Lcom/baidu/trace/api/bos/ImageProcessCommand;

    return-object v0
.end method

.method public final getImageWatermarkCommand()Lcom/baidu/trace/api/bos/ImageWatermarkCommand;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->b:Lcom/baidu/trace/api/bos/ImageWatermarkCommand;

    return-object v0
.end method

.method public final getTextWatermarkCommand()Lcom/baidu/trace/api/bos/TextWatermarkCommand;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->c:Lcom/baidu/trace/api/bos/TextWatermarkCommand;

    return-object v0
.end method

.method public final setImageProcessCommand(Lcom/baidu/trace/api/bos/ImageProcessCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->a:Lcom/baidu/trace/api/bos/ImageProcessCommand;

    return-void
.end method

.method public final setImageWatermarkCommand(Lcom/baidu/trace/api/bos/ImageWatermarkCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->b:Lcom/baidu/trace/api/bos/ImageWatermarkCommand;

    return-void
.end method

.method public final setTextWatermarkCommand(Lcom/baidu/trace/api/bos/TextWatermarkCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->c:Lcom/baidu/trace/api/bos/TextWatermarkCommand;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BosGeneratePresignedUrlRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "imageProcessCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->a:Lcom/baidu/trace/api/bos/ImageProcessCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", imageWatermarkCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->b:Lcom/baidu/trace/api/bos/ImageWatermarkCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", textWatermarkCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;->c:Lcom/baidu/trace/api/bos/TextWatermarkCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
