.class public Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$MyTimerTask;
.super Ljava/util/TimerTask;
.source "CameraNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;


# direct methods
.method public constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$MyTimerTask;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$MyTimerTask;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->tryPlay()V

    return-void
.end method
