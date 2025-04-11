.class public final Lcom/android/server/am/Pageboost$PageboostHandler;
.super Landroid/os/Handler;
.source "Pageboost.java"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2369
    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 2383
    :try_start_0
    iget p0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    const-string/jumbo v1, "pid"

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string/jumbo v5, "pkg"

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 2645
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmBootFileManager()Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2646
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmBootFileManager()Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->munlockAllFiles()V

    .line 2648
    :cond_0
    invoke-static {v3}, Lcom/android/server/am/Pageboost;->-$$Nest$sfputmBootFileManager(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)V

    goto/16 :goto_3

    :pswitch_2
    const-string p0, "boot_file"

    .line 2640
    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskXMLParser;->getString(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    .line 2641
    new-instance v0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;-><init>(Ljava/util/LinkedList;)V

    invoke-static {v0}, Lcom/android/server/am/Pageboost;->-$$Nest$sfputmBootFileManager(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)V

    .line 2642
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmBootFileManager()Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mlockAllFiles()V

    goto/16 :goto_3

    .line 2634
    :pswitch_3
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "stop alp by timeout"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    goto/16 :goto_3

    .line 2631
    :pswitch_4
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    goto/16 :goto_3

    .line 2622
    :pswitch_5
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_1

    goto/16 :goto_3

    .line 2625
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    .line 2626
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "alp"

    .line 2627
    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost;->prefetchPackage(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2489
    :pswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 2490
    invoke-static {p0}, Lcom/android/server/am/Pageboost$MemUsageCollector;->collectMemUsage(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    goto/16 :goto_3

    .line 2473
    :pswitch_7
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_2

    goto/16 :goto_3

    .line 2477
    :cond_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 2478
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2480
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getMemUsage()Lcom/android/server/am/Pageboost$MemUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$MemUsage;->getTotal()I

    move-result v0

    if-nez v0, :cond_19

    .line 2481
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getGameApp()Z

    move-result v0

    const/16 v1, 0x12

    if-eqz v0, :cond_3

    const v0, 0x88b8

    .line 2482
    invoke-static {v1, p0, v0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    goto/16 :goto_3

    :cond_3
    const/16 v0, 0x1388

    .line 2484
    invoke-static {v1, p0, v0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 2594
    :pswitch_8
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_4

    goto/16 :goto_3

    .line 2597
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "status"

    .line 2598
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2599
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2600
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2602
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v2

    if-eqz v2, :cond_19

    if-ne v0, v7, :cond_6

    .line 2605
    iget v0, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    if-eqz v0, :cond_5

    .line 2606
    invoke-static {p0, v6}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result p0

    if-eqz p0, :cond_5

    move v1, p0

    .line 2609
    :cond_5
    iget p0, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    if-eq p0, v1, :cond_19

    .line 2610
    iput v1, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2611
    iput v7, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    goto/16 :goto_3

    :cond_6
    if-ne v0, v4, :cond_19

    .line 2614
    iget p0, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    if-ne p0, v1, :cond_19

    .line 2615
    iput v6, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2616
    iput v6, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    goto/16 :goto_3

    .line 2462
    :pswitch_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$IoRecord;

    .line 2463
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->getResultFromKernel()J

    .line 2464
    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->captureFinished(Lcom/android/server/am/Pageboost$IoRecord;)V

    .line 2466
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->getApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2468
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmAppDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->storeApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    goto/16 :goto_3

    .line 2427
    :pswitch_a
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_7

    goto/16 :goto_3

    .line 2431
    :cond_7
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 2434
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    .line 2435
    invoke-static {v0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2437
    iget v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2438
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record App IO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_9

    :goto_0
    const/16 v2, 0xa

    if-ge v6, v2, :cond_9

    .line 2443
    :try_start_2
    invoke-static {p0, v7}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_8

    goto :goto_1

    :cond_8
    const-wide/16 v2, 0x32

    .line 2447
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2451
    :try_start_3
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to sleep"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_1
    if-lez v1, :cond_19

    .line 2456
    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto/16 :goto_3

    .line 2591
    :pswitch_b
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->sendData()V

    goto/16 :goto_3

    .line 2502
    :pswitch_c
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_a

    goto/16 :goto_3

    .line 2505
    :cond_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    .line 2506
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "launchtime"

    .line 2507
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v8, "0,0,0"

    .line 2511
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2512
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Launcher App Execution"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v9, ","

    if-eqz v5, :cond_12

    .line 2516
    :try_start_4
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 2517
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2519
    iget v5, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    if-nez v5, :cond_b

    .line 2520
    invoke-static {p0, v6}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result v5

    if-ne v1, v5, :cond_b

    .line 2522
    iput v5, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2523
    iput v4, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 2526
    :cond_b
    iget v5, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    if-ne v5, v7, :cond_c

    .line 2527
    iput v4, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    :cond_c
    if-eqz v1, :cond_e

    .line 2529
    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getPid()I

    move-result v4

    if-eq v1, v4, :cond_e

    .line 2530
    invoke-virtual {v3, v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setPid(I)V

    if-lez v2, :cond_d

    const/16 v1, 0x2710

    if-ge v2, v1, :cond_d

    .line 2533
    invoke-virtual {v3, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->updateExecTime(I)V

    :cond_d
    new-array v1, v0, [J

    .line 2537
    invoke-virtual {v3, v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getIoinfo([J)V

    aget-wide v4, v1, v6

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-eqz v4, :cond_f

    const-string v4, ""

    move-object v8, v4

    move v4, v6

    :goto_2
    if-ge v4, v0, :cond_f

    .line 2540
    aget-wide v10, v1, v4

    .line 2541
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_e
    move v2, v6

    .line 2547
    :cond_f
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/Pageboost$PageboostPredictor;->checkPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2548
    iget v0, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    add-int/2addr v0, v7

    iput v0, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 2549
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefetch Hit! : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2553
    :cond_10
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    invoke-virtual {v0, v3, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 2555
    :cond_11
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostPredictor;->finalizePredict()V

    :cond_12
    if-eqz v3, :cond_19

    if-lez v2, :cond_13

    .line 2561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppEntry,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    if-nez v2, :cond_19

    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppReEntry,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2497
    :pswitch_d
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 2498
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const/16 v0, 0xc

    invoke-static {v0, p0, v2}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithBundle(ILandroid/os/Bundle;I)V

    goto/16 :goto_3

    .line 2493
    :pswitch_e
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 2494
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {v0, p0, v2}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithBundle(ILandroid/os/Bundle;I)V

    goto/16 :goto_3

    .line 2578
    :pswitch_f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_19

    .line 2580
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smremovePackage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2572
    :pswitch_10
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_19

    .line 2574
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smaddPackage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2584
    :pswitch_11
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_14

    goto/16 :goto_3

    .line 2587
    :cond_14
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmAppDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->storeAppLRU(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;)V

    .line 2588
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->keepLastData()V

    goto/16 :goto_3

    .line 2409
    :pswitch_12
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_IO_PREFETCH_ENABLED()Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_3

    .line 2412
    :cond_15
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_16

    goto :goto_3

    .line 2415
    :cond_16
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 2417
    invoke-static {p0, v7}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_19

    .line 2419
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object p0

    .line 2420
    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2421
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "capturing App IO"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto :goto_3

    .line 2569
    :pswitch_13
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$smrealupdatePackages()V

    goto :goto_3

    .line 2399
    :pswitch_14
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_IO_PREFETCH_ENABLED()Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_VRAMDISK_WITHOUT_PREDICT()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_3

    .line 2402
    :cond_17
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 2403
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher Page Up"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2405
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostPredictor;->predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V

    goto :goto_3

    .line 2389
    :pswitch_15
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_IO_PREFETCH_ENABLED()Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_3

    .line 2392
    :cond_18
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 2395
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppList;

    const/16 v1, 0x190

    .line 2396
    invoke-static {v0, p0, v1}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    goto :goto_3

    .line 2386
    :pswitch_16
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$smdelayedInitPageboost()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_19
    :goto_3
    return-void

    .line 2653
    :catch_1
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
