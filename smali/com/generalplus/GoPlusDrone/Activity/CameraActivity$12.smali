.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$12;
.super Ljava/util/TimerTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$12;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 913
    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isHave:Z

    const-wide/16 v0, 0x1f40

    .line 915
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 917
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 919
    :goto_0
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isHave:Z

    return-void
.end method
