.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$ExceptionHandler;
.super Ljava/lang/Object;
.source "CameraNewActivity.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;


# direct methods
.method private constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$ExceptionHandler;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$ExceptionHandler;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uncaught_exception_handler: uncaught exception in thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ControlFragment"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    instance-of p1, p2, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 111
    instance-of p1, p2, Ljava/lang/Error;

    if-nez p1, :cond_0

    .line 114
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 115
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 116
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uncaught_exception handler: unable to rethrow checked exception\ntrace: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_0
    check-cast p2, Ljava/lang/Error;

    throw p2

    .line 110
    :cond_1
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2
.end method
