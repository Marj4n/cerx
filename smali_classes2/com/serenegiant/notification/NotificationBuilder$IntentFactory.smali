.class public interface abstract Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/notification/NotificationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IntentFactory"
.end annotation


# virtual methods
.method public abstract createContentIntent(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
.end method

.method public abstract createDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
.end method

.method public abstract createFullScreenIntent(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
.end method

.method public abstract isHighPriorityFullScreenIntent(Z)Z
.end method
