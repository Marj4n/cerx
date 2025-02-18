.class final Lcom/serenegiant/notification/NotificationBuilder$1;
.super Lcom/serenegiant/notification/NotificationBuilder;
.source "NotificationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/notification/NotificationBuilder;->showNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/serenegiant/notification/NotificationBuilder$IntentFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$factory:Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/serenegiant/notification/NotificationBuilder$IntentFactory;)V
    .locals 0

    .line 151
    iput-object p4, p0, Lcom/serenegiant/notification/NotificationBuilder$1;->val$factory:Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;

    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/notification/NotificationBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/notification/NotificationBuilder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->addExtras(Landroid/os/Bundle;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->addPerson(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected createContentIntent()Landroid/app/PendingIntent;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder$1;->val$factory:Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder$1;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;->createContentIntent(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected createDeleteIntent()Landroid/app/PendingIntent;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder$1;->val$factory:Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder$1;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;->createDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/serenegiant/notification/NotificationBuilder;->createDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected createFullScreenIntent()Landroid/app/PendingIntent;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder$1;->val$factory:Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder$1;->getFullScreenIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;->createFullScreenIntent(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/serenegiant/notification/NotificationBuilder;->createFullScreenIntent()Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public isHighPriorityFullScreenIntent()Z
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/serenegiant/notification/NotificationBuilder;->isHighPriorityFullScreenIntent()Z

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/serenegiant/notification/NotificationBuilder$1;->val$factory:Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;

    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v1, v0}, Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;->isHighPriorityFullScreenIntent(Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setAutoCancel(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setBadgeIconType(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCategory(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setChannelId(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setColor(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setColor(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setColorized(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContent(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentInfo(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCustomContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setDefaults(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setDeleteIntent(Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setExtras(Landroid/os/Bundle;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setGroup(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setGroupAlertBehavior(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setGroupSummary(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLights(III)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/notification/NotificationBuilder;->setLights(III)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setLocalOnly(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNumber(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setNumber(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setOngoing(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setOnlyAlertOnce(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPriority(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setPriority(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/notification/NotificationBuilder;->setProgress(IIZ)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setPublicVersion(Landroid/app/Notification;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRemoteInputHistory([Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setShortcutId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setShortcutId(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setShowWhen(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSmallIcon(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSmallIcon(II)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setSmallIcon(II)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSortKey(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSound(Landroid/net/Uri;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setSound(Landroid/net/Uri;I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSubText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setTicker(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setTimeoutAfter(J)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setUsesChronometer(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setVibrate([J)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setVisibility(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWhen(J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setWhen(J)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method
