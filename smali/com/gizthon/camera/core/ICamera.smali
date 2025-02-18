.class public interface abstract Lcom/gizthon/camera/core/ICamera;
.super Ljava/lang/Object;
.source "ICamera.java"


# virtual methods
.method public abstract checkDevice()V
.end method

.method public abstract connectDevice()V
.end method

.method public abstract destroyDevice()V
.end method

.method public abstract initDevice(Landroid/app/Activity;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract onStart()V
.end method

.method public abstract setListener(Lcom/gizthon/camera/core/OnCameraConnectedListener;)V
.end method
