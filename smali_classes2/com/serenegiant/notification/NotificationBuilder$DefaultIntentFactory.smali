.class public Lcom/serenegiant/notification/NotificationBuilder$DefaultIntentFactory;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"

# interfaces
.implements Lcom/serenegiant/notification/NotificationBuilder$NotificationBuilderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/notification/NotificationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultIntentFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContentIntent(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    return-object p1
.end method

.method public createDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    return-object p1
.end method

.method public createFullScreenIntent(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    return-object p1
.end method

.method public isHighPriorityFullScreenIntent(Z)Z
    .locals 0

    return p1
.end method

.method public setupBuilder(Lcom/serenegiant/notification/NotificationBuilder;)V
    .locals 0

    return-void
.end method
