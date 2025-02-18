.class public Lcom/gizthon/camera/activity/CameraBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CameraBaseActivity.java"


# instance fields
.field public cameraManager:Lcom/gizthon/camera/core/CameraManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gizthon/camera/view/MyContextWrapper;->wrap(Landroid/content/Context;Ljava/util/Locale;)Lcom/gizthon/camera/view/MyContextWrapper;

    move-result-object p1

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 35
    iget-object v0, p0, Lcom/gizthon/camera/activity/CameraBaseActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gizthon/camera/core/CameraManager;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClickBack()V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/gizthon/camera/activity/CameraBaseActivity;->finish()V

    return-void
.end method

.method public onClickGallery()V
    .locals 0

    return-void
.end method

.method public onClickTakePhoto()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance p1, Lcom/gizthon/camera/core/CameraManager;

    invoke-direct {p1, p0}, Lcom/gizthon/camera/core/CameraManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gizthon/camera/activity/CameraBaseActivity;->cameraManager:Lcom/gizthon/camera/core/CameraManager;

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method
