.class public Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$MyTimerTask;
.super Ljava/util/TimerTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$MyTimerTask;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$MyTimerTask;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->tryPlay()V

    return-void
.end method
