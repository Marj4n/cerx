.class Lcom/serenegiant/service/BaseService$2;
.super Lcom/serenegiant/service/BaseService$NotificationFactory;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/service/BaseService;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/service/BaseService;

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$isForegroundService:Z


# direct methods
.method constructor <init>(Lcom/serenegiant/service/BaseService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIZLandroid/app/PendingIntent;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 482
    iput-object v0, v8, Lcom/serenegiant/service/BaseService$2;->this$0:Lcom/serenegiant/service/BaseService;

    move/from16 v0, p9

    iput-boolean v0, v8, Lcom/serenegiant/service/BaseService$2;->val$isForegroundService:Z

    move-object/from16 v0, p10

    iput-object v0, v8, Lcom/serenegiant/service/BaseService$2;->val$intent:Landroid/app/PendingIntent;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/service/BaseService$NotificationFactory;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected createContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/serenegiant/service/BaseService$2;->val$intent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected isForegroundService()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/serenegiant/service/BaseService$2;->val$isForegroundService:Z

    return v0
.end method
