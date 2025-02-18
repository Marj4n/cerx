.class public abstract Lcom/serenegiant/notification/NotificationBuilder;
.super Landroidx/core/app/NotificationCompat$Builder;
.source "NotificationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/notification/NotificationBuilder$BadgeIconType;,
        Lcom/serenegiant/notification/NotificationBuilder$DefaultIntentFactory;,
        Lcom/serenegiant/notification/NotificationBuilder$NotificationBuilderFactory;,
        Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PRIORITY_UNSPECIFIED:I = -0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mHighPriorityFullScreenIntent:Z

.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/serenegiant/notification/NotificationBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/notification/NotificationBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 221
    invoke-direct {p0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x3

    .line 211
    iput v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mPriority:I

    .line 222
    iput-object p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContext:Landroid/content/Context;

    .line 223
    invoke-static {p1, p2}, Lcom/serenegiant/notification/ChannelBuilder;->getBuilder(Landroid/content/Context;Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    .line 224
    invoke-virtual {p0, p3}, Lcom/serenegiant/notification/NotificationBuilder;->setSmallIcon(I)Lcom/serenegiant/notification/NotificationBuilder;

    return-void
.end method

.method private static notify(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0

    .line 892
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    .line 893
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public static showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/serenegiant/notification/NotificationBuilder$IntentFactory;)V
    .locals 8

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 128
    invoke-static/range {v0 .. v7}, Lcom/serenegiant/notification/NotificationBuilder;->showNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/serenegiant/notification/NotificationBuilder$IntentFactory;)V

    return-void
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/serenegiant/notification/NotificationBuilder$IntentFactory;)V
    .locals 0

    .line 151
    new-instance p1, Lcom/serenegiant/notification/NotificationBuilder$1;

    invoke-direct {p1, p0, p3, p6, p7}, Lcom/serenegiant/notification/NotificationBuilder$1;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/serenegiant/notification/NotificationBuilder$IntentFactory;)V

    .line 181
    invoke-virtual {p1, p4}, Lcom/serenegiant/notification/NotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p0

    .line 182
    invoke-virtual {p0, p5}, Lcom/serenegiant/notification/NotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    .line 183
    instance-of p0, p7, Lcom/serenegiant/notification/NotificationBuilder$NotificationBuilderFactory;

    if-eqz p0, :cond_0

    .line 184
    check-cast p7, Lcom/serenegiant/notification/NotificationBuilder$NotificationBuilderFactory;

    invoke-interface {p7, p1}, Lcom/serenegiant/notification/NotificationBuilder$NotificationBuilderFactory;->setupBuilder(Lcom/serenegiant/notification/NotificationBuilder;)V

    .line 186
    :cond_0
    invoke-virtual {p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->notify(I)Lcom/serenegiant/notification/NotificationBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/notification/NotificationBuilder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 793
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public addAction(Landroidx/core/app/NotificationCompat$Action;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 799
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->addExtras(Landroid/os/Bundle;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addExtras(Landroid/os/Bundle;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 781
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->addPerson(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addPerson(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 745
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getImportance()I

    move-result v0

    if-nez v0, :cond_5

    .line 235
    iget v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mPriority:I

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, -0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, v3}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_0

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, v2}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    .line 256
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->build()Landroid/app/NotificationChannel;

    .line 257
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->createContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 258
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->createDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 259
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->createFullScreenIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->isHighPriorityFullScreenIntent()Z

    move-result v1

    invoke-super {p0, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 260
    invoke-super {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createContentIntent()Landroid/app/PendingIntent;
.end method

.method protected createDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected createFullScreenIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mFullScreenIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public enableLights(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->enableLights(Z)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public enableVibration(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->enableVibration(Z)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Extender;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 877
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public getChannelBuilder()Lcom/serenegiant/notification/ChannelBuilder;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelName()Ljava/lang/CharSequence;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getFullScreenIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mFullScreenIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getImportance()I

    move-result v0

    return v0
.end method

.method public getLockscreenVisibility()I
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getLockscreenVisibility()I

    move-result v0

    return v0
.end method

.method public isHighPriorityFullScreenIntent()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mHighPriorityFullScreenIntent:Z

    return v0
.end method

.method public notify(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/serenegiant/notification/NotificationBuilder;->notify(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)V

    return-object p0
.end method

.method public notify(Ljava/lang/String;I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/serenegiant/notification/NotificationBuilder;->notify(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)V

    return-object p0
.end method

.method public notifyForeground(Landroid/app/Service;I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, p1, v0, p2}, Lcom/serenegiant/notification/NotificationBuilder;->notifyForeground(Landroid/app/Service;Ljava/lang/String;I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public notifyForeground(Landroid/app/Service;Ljava/lang/String;I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 306
    invoke-virtual {p1, p3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 307
    invoke-static {p1, p2, p3, v0}, Lcom/serenegiant/notification/NotificationBuilder;->notify(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)V

    return-object p0
.end method

.method public bridge synthetic setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setAutoCancel(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAutoCancel(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 714
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setBadgeIconType(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBadgeIconType(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 865
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setBypassDnd(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setBypassDnd(Z)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCategory(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCategory(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 726
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setChannelGroup(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public setChannelGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/notification/ChannelBuilder;->setGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setChannelId(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 319
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 320
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setId(Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public setChannelName(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setName(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setColor(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setColor(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setColor(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 816
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setColorized(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setColorized(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 702
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContent(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 604
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentInfo(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 592
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-super {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 480
    iput-object p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public bridge synthetic setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 568
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 562
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 841
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCustomContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 835
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 847
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setDefaults(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDefaults(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 732
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setDeleteIntent(Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 507
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 508
    iput-object p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setDescription(Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setExtras(Landroid/os/Bundle;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 787
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 612
    invoke-super {p0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 613
    iput-object p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 614
    iput-boolean p2, p0, Lcom/serenegiant/notification/NotificationBuilder;->mHighPriorityFullScreenIntent:Z

    return-object p0
.end method

.method public bridge synthetic setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setGroup(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setGroup(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 757
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setGroupAlertBehavior(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setGroupAlertBehavior(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 871
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setGroupSummary(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setGroupSummary(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 769
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setImportance(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLargeIcon(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContext:Landroid/content/Context;

    .line 655
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 654
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 645
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setLightColor(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setLightColor(I)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setLights(III)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/notification/NotificationBuilder;->setLights(III)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLights(III)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 689
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    .line 690
    iget-object p2, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {p2, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setLightColor(I)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setLocalOnly(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLocalOnly(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 720
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setLockscreenVisibility(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setLockscreenVisibility(I)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setNumber(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setNumber(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNumber(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 586
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setOngoing(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOngoing(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 696
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setOnlyAlertOnce(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOnlyAlertOnce(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 708
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setPriority(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setPriority(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 738
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 739
    iput p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mPriority:I

    return-object p0
.end method

.method public bridge synthetic setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/notification/NotificationBuilder;->setProgress(IIZ)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setProgress(IIZ)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 598
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setPublicVersion(Landroid/app/Notification;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPublicVersion(Landroid/app/Notification;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 829
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setRemoteInputHistory([Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 580
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setShortcutId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setShortcutId(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setShortcutId(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 859
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setShortcutId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setShowBadge(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setShowBadge(Z)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setShowWhen(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setShowWhen(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 538
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSmallIcon(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSmallIcon(II)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setSmallIcon(II)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSmallIcon(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 550
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setSmallIcon(II)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 556
    invoke-super {p0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(II)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSortKey(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSortKey(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 775
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSound(Landroid/net/Uri;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setSound(Landroid/net/Uri;I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSound(Landroid/net/Uri;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 2

    .line 661
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 662
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 669
    invoke-super {p0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    .line 671
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 676
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/notification/ChannelBuilder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 443
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 444
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/notification/ChannelBuilder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setStyle(Landroidx/core/app/NotificationCompat$Style;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 805
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSubText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 574
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setTicker(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 633
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 639
    invoke-super {p0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setTimeoutAfter(J)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTimeoutAfter(J)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 853
    invoke-super {p0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setUsesChronometer(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUsesChronometer(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 544
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public bridge synthetic setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setVibrate([J)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setVibrate([J)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 682
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 683
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setVibrationPattern([J)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public setVibrationPattern([J)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setVibrationPattern([J)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setVisibility(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setVisibility(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 822
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 823
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setLockscreenVisibility(I)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setWhen(J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setWhen(J)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setWhen(J)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 532
    invoke-super {p0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method
