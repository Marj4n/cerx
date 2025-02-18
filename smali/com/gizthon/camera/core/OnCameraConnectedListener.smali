.class public interface abstract Lcom/gizthon/camera/core/OnCameraConnectedListener;
.super Ljava/lang/Object;
.source "OnCameraConnectedListener.java"


# static fields
.field public static final ADMIN_ACTIVE:I = 0x4e20

.field public static final FAILED_DEVICE_ACTIVE:I = 0x2711

.field public static final FAILED_DEVICE_DETACHED:I = 0x4e22

.field public static final FAILED_DEVICE_DISCONNECTED:I = 0x4e24

.field public static final FAILED_UN_SUPPORT:I = 0x2710

.field public static final SUCCESS_DEVICE_ATTACHED:I = 0x4e21

.field public static final SUCCESS_DEVICE_CONNECTED:I = 0x4e23


# virtual methods
.method public abstract onConnectedFailed(I)V
.end method

.method public abstract onConnectedSuccess(I)V
.end method
