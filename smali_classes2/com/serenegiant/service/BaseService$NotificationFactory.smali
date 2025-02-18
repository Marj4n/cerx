.class public abstract Lcom/serenegiant/service/BaseService$NotificationFactory;
.super Ljava/lang/Object;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/service/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NotificationFactory"
.end annotation


# instance fields
.field protected final channelId:Ljava/lang/String;

.field protected final channelTitle:Ljava/lang/String;

.field protected final groupId:Ljava/lang/String;

.field protected final groupName:Ljava/lang/String;

.field protected final importance:I

.field protected final largeIconId:I

.field protected final smallIconId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 169
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid7()Z

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/serenegiant/common/R$drawable;->ic_notification:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move v6, p3

    .line 168
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/service/BaseService$NotificationFactory;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 179
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid7()Z

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move v6, p3

    move v7, p4

    .line 178
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/service/BaseService$NotificationFactory;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->channelId:Ljava/lang/String;

    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->channelTitle:Ljava/lang/String;

    .line 192
    iput p3, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->importance:I

    .line 193
    iput-object p4, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->groupId:Ljava/lang/String;

    .line 194
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p4, p5

    :goto_1
    iput-object p4, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->groupName:Ljava/lang/String;

    .line 195
    iput p6, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->smallIconId:I

    .line 196
    iput p7, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->largeIconId:I

    return-void
.end method


# virtual methods
.method protected abstract createContentIntent()Landroid/app/PendingIntent;
.end method

.method protected createDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;
    .locals 1

    .line 210
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/serenegiant/service/BaseService$NotificationFactory;->createNotificationChannel(Landroid/content/Context;)V

    .line 215
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/service/BaseService$NotificationFactory;->createNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method protected createNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 333
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->channelId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->smallIconId:I

    .line 337
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 339
    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    .line 340
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    .line 341
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    .line 338
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 342
    invoke-virtual {p0}, Lcom/serenegiant/service/BaseService$NotificationFactory;->createContentIntent()Landroid/app/PendingIntent;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 344
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/service/BaseService$NotificationFactory;->createDeleteIntent()Landroid/app/PendingIntent;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 348
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 350
    :cond_1
    iget-object p3, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->groupId:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 351
    iget-object p3, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->groupId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 354
    :cond_2
    iget p3, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->largeIconId:I

    if-eqz p3, :cond_3

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p3, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->largeIconId:I

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 355
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_3
    return-object p2
.end method

.method protected createNotificationChannel(Landroid/content/Context;)V
    .locals 5

    const-string v0, "notification"

    .line 240
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 241
    iget-object v1, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 242
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->channelId:Ljava/lang/String;

    iget-object v3, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->channelTitle:Ljava/lang/String;

    iget v4, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->importance:I

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 244
    iget-object v2, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->groupId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->groupName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/serenegiant/service/BaseService$NotificationFactory;->createNotificationChannelGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/serenegiant/service/BaseService$NotificationFactory;->groupId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 248
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 249
    invoke-virtual {p0, v1}, Lcom/serenegiant/service/BaseService$NotificationFactory;->setupNotificationChannel(Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method protected createNotificationChannelGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 290
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "notification"

    .line 292
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 294
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 298
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    if-nez v1, :cond_3

    .line 304
    new-instance v0, Landroid/app/NotificationChannelGroup;

    .line 305
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p3, p2

    :cond_2
    invoke-direct {v0, p2, p3}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/serenegiant/service/BaseService$NotificationFactory;->setupNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)Landroid/app/NotificationChannelGroup;

    move-result-object p2

    .line 306
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    :cond_3
    return-void
.end method

.method protected isForegroundService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setupNotificationChannel(Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;
    .locals 0

    return-object p1
.end method

.method protected setupNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)Landroid/app/NotificationChannelGroup;
    .locals 0

    return-object p1
.end method
