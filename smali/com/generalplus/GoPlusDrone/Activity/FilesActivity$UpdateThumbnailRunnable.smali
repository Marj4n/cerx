.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateThumbnailRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V
    .locals 2

    .line 466
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FilesActivity"

    const-string v1, "Create UpdateThumbnailRunnable ... "

    .line 468
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2900()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;

    invoke-direct {v1, p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateGridViewRunnable;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2902(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 472
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2900()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    const/4 p1, 0x0

    .line 474
    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1702(Z)Z

    .line 475
    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2102(Z)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 482
    :goto_0
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$400()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1700()Z

    move-result v0

    if-nez v0, :cond_d

    .line 484
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x32

    .line 489
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 496
    :goto_1
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 497
    :try_start_1
    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$402(Z)Z

    .line 499
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->getIsNewFile()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 501
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 504
    :goto_2
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_c

    .line 506
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v4

    aget v4, v4, v2

    const/16 v5, 0xa1

    const-wide/16 v6, 0x7d0

    const/16 v8, 0xa2

    if-eq v4, v5, :cond_a

    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v4

    aget v4, v4, v2

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_2

    goto/16 :goto_5

    .line 528
    :cond_2
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v4

    aget v4, v4, v2

    if-ne v4, v8, :cond_5

    .line 530
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$3108(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I

    .line 531
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$3100(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_4

    .line 533
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v4, v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$3102(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I

    .line 534
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->getIsNewFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 535
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetFileIndex(I)I

    move-result v1

    if-ne v3, v1, :cond_3

    .line 536
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSetNextPlaybackFileListIndex(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    .line 541
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 546
    :cond_3
    :goto_3
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    .line 547
    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetFileThumbnail(I)I

    .line 550
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v1

    aput v8, v1, v2

    .line 553
    :cond_4
    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$3002(I)I

    goto/16 :goto_7

    .line 556
    :cond_5
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v4

    aget v4, v4, v2

    const/16 v5, 0xa3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_8

    .line 558
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v4, v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$3102(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I

    .line 559
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "ThumbnailFilePath"

    .line 561
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$3200()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 560
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$900()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    if-eqz v5, :cond_6

    const-string v5, "FileName"

    .line 564
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$900()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "FileTime"

    .line 565
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2400()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "FileSize"

    .line 567
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1000()[I

    move-result-object v7

    aget v7, v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 566
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v5, "FileIndex"

    .line 569
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2600()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v4, v2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$3302(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I

    .line 574
    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$402(Z)Z

    .line 575
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v6

    if-ne v2, v4, :cond_7

    .line 576
    invoke-static {v6}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$402(Z)Z

    .line 578
    :cond_7
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v4

    const/16 v5, 0xa7

    aput v5, v4, v2

    goto :goto_4

    .line 580
    :cond_8
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v4

    aget v4, v4, v2

    const/16 v5, 0xa6

    if-ne v4, v5, :cond_9

    .line 582
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "ThumbnailFilePath"

    .line 583
    sget v7, Lcom/generalplus/GoPlusDrone/R$drawable;->broken:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "FileName"

    .line 584
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$900()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2600()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v4, v2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$3302(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;I)I

    .line 587
    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$402(Z)Z

    .line 588
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v6

    if-ne v2, v4, :cond_9

    .line 589
    invoke-static {v6}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$402(Z)Z

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 508
    :cond_a
    :goto_5
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->getIsNewFile()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 509
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetFileIndex(I)I

    move-result v1

    if-ne v3, v1, :cond_b

    .line 510
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSetNextPlaybackFileListIndex(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 512
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v1

    .line 515
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 520
    :cond_b
    :goto_6
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    .line 521
    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetFileThumbnail(I)I

    .line 523
    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$3002(I)I

    .line 524
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object v1

    aput v8, v1, v2

    const-string v1, "FilesActivity"

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", FileTag_FileGettingThumbnail..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_c
    :goto_7
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :cond_d
    const-string v0, "FilesActivity"

    const-string v1, "m_UpdateThumbnailThread = null"

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$UpdateThumbnailRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2700(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V

    const/4 v0, 0x0

    .line 596
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$502(Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
