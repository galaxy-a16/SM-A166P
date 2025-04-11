.class public final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field public static CORE_DEFER_UNTIL_ACTIVE:Z = false

.field public static final EMPTY_RECEIVERS:Ljava/util/List;

.field public static sNextToken:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final alarm:Z

.field public anrCount:I

.field public final appOp:I

.field public beyondCount:I

.field public final blockedUntilBeyondCount:[I

.field public final callerApp:Lcom/android/server/am/ProcessRecord;

.field public final callerFeatureId:Ljava/lang/String;

.field public final callerInstantApp:Z

.field public final callerInstrumented:Z

.field public final callerPackage:Ljava/lang/String;

.field public final callerProcState:I

.field public final callingPid:I

.field public final callingUid:I

.field public curApp:Lcom/android/server/am/ProcessRecord;

.field public curAppLastProcessState:I

.field public curComponent:Landroid/content/ComponentName;

.field public curFilter:Lcom/android/server/am/BroadcastFilter;

.field public curFilteredExtras:Landroid/os/Bundle;

.field public curReceiver:Landroid/content/pm/ActivityInfo;

.field public final deferUntilActive:Z

.field public deferred:Z

.field public deferredCount:I

.field public final delivery:[I

.field public final deliveryReasons:[Ljava/lang/String;

.field public dispatchClockTime:J

.field public dispatchRealTime:J

.field public dispatchTime:J

.field public enqueueClockTime:J

.field public enqueueRealTime:J

.field public enqueueTime:J

.field public final excludedPackages:[Ljava/lang/String;

.field public final excludedPermissions:[Ljava/lang/String;

.field public final filterExtrasForReceiver:Ljava/util/function/BiFunction;

.field public finishTime:J

.field public hadResultTo:Z

.field public final initialSticky:Z

.field public final intent:Landroid/content/Intent;

.field public final interactive:Z

.field public final mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public mCachedToShortString:Ljava/lang/String;

.field public mCachedToString:Ljava/lang/String;

.field public mCounted:Z

.field public mIsReceiverAppRunning:Z

.field public mMARsTargetReceiver:Ljava/util/ArrayList;

.field public mMatchingRecordsCache:Landroid/util/ArrayMap;

.field public mWasReceiverAppStopped:Z

.field public manifestCount:I

.field public manifestSkipCount:I

.field public nextReceiver:I

.field public final options:Landroid/app/BroadcastOptions;

.field public final ordered:Z

.field public originalEnqueueClockTime:J

.field public final originalStickyCallingUid:I

.field public final prioritized:Z

.field public final pushMessage:Z

.field public final pushMessageOverQuota:Z

.field public queue:Lcom/android/server/am/BroadcastQueue;

.field public receiverTime:J

.field public final receivers:Ljava/util/List;

.field public receiversDispatchTime:[J

.field public receiversExtraTime:[Ljava/lang/String;

.field public receiversFinishTime:[J

.field public final requiredPermissions:[Ljava/lang/String;

.field public final resolvedType:Ljava/lang/String;

.field public resultAbort:Z

.field public resultCode:I

.field public resultData:Ljava/lang/String;

.field public resultExtras:Landroid/os/Bundle;

.field public resultTo:Landroid/content/IIntentReceiver;

.field public resultToApp:Lcom/android/server/am/ProcessRecord;

.field public final scheduledTime:[J

.field public final shareIdentity:Z

.field public splitToken:I

.field public state:I

.field public final sticky:Z

.field public final targetComp:Landroid/content/ComponentName;

.field public terminalCount:I

.field public final terminalTime:[J

.field public final timeoutExempt:Z

.field public final urgent:Z

.field public final userId:I

.field public wasDeferred:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 196
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    .line 298
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->sNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p7

    move-object/from16 v4, p14

    move-object/from16 v5, p17

    move/from16 v6, p21

    .line 538
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    if-eqz v1, :cond_a

    move-object v7, p1

    .line 542
    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 543
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 544
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 545
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object v7, p4

    .line 546
    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object v7, p5

    .line 547
    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    move/from16 v7, p6

    .line 548
    iput v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 549
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v7, p29

    .line 550
    iput v7, v0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    move/from16 v7, p8

    .line 551
    iput-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 552
    invoke-static {p3, v3}, Lcom/android/server/am/BroadcastRecord;->isCallerInstrumented(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    move-object/from16 v2, p9

    .line 553
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v2, p10

    .line 554
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object/from16 v2, p11

    .line 555
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    move-object/from16 v2, p12

    .line 556
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    move/from16 v2, p13

    .line 557
    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 558
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz p15, :cond_0

    move-object/from16 v2, p15

    goto :goto_0

    .line 559
    :cond_0
    sget-object v2, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    :goto_0
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 561
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    const/4 v7, 0x0

    if-eqz p15, :cond_1

    .line 563
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    new-array v8, v8, [I

    iput-object v8, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 564
    array-length v9, v8

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, v0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 565
    invoke-static {p2, v4}, Lcom/android/server/am/BroadcastRecord;->calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 566
    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/server/am/BroadcastRecord;->calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 568
    invoke-static {v2, v6}, Lcom/android/server/am/BroadcastRecord;->calculateBlockedUntilBeyondCount(Ljava/util/List;Z)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 569
    array-length v2, v8

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 570
    array-length v2, v8

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    move-object/from16 v2, p16

    .line 571
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 572
    iput-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move/from16 v2, p18

    .line 573
    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v2, p19

    .line 574
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v2, p20

    .line 575
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 576
    iput-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v2, p22

    .line 577
    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v2, p23

    .line 578
    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 579
    invoke-static {v1, v6}, Lcom/android/server/am/BroadcastRecord;->isPrioritized([IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    move/from16 v1, p24

    .line 580
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 581
    iput v7, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 582
    iput v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    move-object/from16 v1, p26

    .line 583
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    move/from16 v1, p27

    .line 584
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    const/4 v1, 0x1

    if-eqz v4, :cond_2

    .line 585
    invoke-virtual/range {p14 .. p14}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v7

    :goto_2
    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v4, :cond_3

    .line 586
    invoke-virtual/range {p14 .. p14}, Landroid/app/BroadcastOptions;->isPushMessagingBroadcast()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v7

    :goto_3
    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v4, :cond_4

    .line 587
    invoke-virtual/range {p14 .. p14}, Landroid/app/BroadcastOptions;->isPushMessagingOverQuotaBroadcast()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v7

    :goto_4
    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v4, :cond_5

    .line 588
    invoke-virtual/range {p14 .. p14}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    move v2, v7

    :goto_5
    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v4, :cond_6

    .line 589
    invoke-virtual/range {p14 .. p14}, Landroid/app/BroadcastOptions;->isShareIdentityEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move v1, v7

    :goto_6
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    move-object/from16 v1, p28

    .line 590
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    move/from16 v1, p25

    .line 591
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    if-eqz p15, :cond_7

    .line 594
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v7

    :goto_7
    new-array v1, v1, [J

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    if-eqz p15, :cond_8

    .line 595
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v7

    :goto_8
    new-array v1, v1, [J

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    if-eqz p15, :cond_9

    .line 596
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v7

    :cond_9
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    return-void

    .line 540
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t construct with a null intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v26, p25

    move/from16 v27, p26

    move-object/from16 v28, p27

    move/from16 v29, p28

    const/16 v25, -0x1

    .line 517
    invoke-direct/range {v0 .. v29}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .locals 2

    .line 605
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 606
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 607
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 609
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 610
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 611
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 612
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 613
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 614
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 615
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 616
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    .line 617
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 618
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 619
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 620
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 621
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 622
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 623
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 624
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 625
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 626
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 627
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 628
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    .line 632
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 633
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 634
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 635
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 636
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 637
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    .line 638
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 639
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 640
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 641
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 642
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 643
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 644
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 645
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 646
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 647
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 648
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 649
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 650
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 651
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 652
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 653
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 654
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 655
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 656
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 657
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 658
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 659
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 660
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 661
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    .line 662
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    .line 663
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    .line 664
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    .line 665
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 666
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    .line 667
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    .line 670
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    .line 671
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    .line 672
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    return-void
.end method

.method public static areMatchingKeysEqual(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 2

    .line 1327
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v1

    .line 1329
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1333
    :cond_0
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p0

    .line 1334
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p1

    .line 1335
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static calculateBlockedUntilBeyondCount(Ljava/util/List;Z)[I
    .locals 6

    .line 1009
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1010
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_3

    if-eqz p1, :cond_0

    .line 1017
    aput v2, v1, v2

    goto :goto_2

    .line 1021
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverPriority(Ljava/lang/Object;)I

    move-result v5

    if-eqz v2, :cond_2

    if-eq v5, v3, :cond_1

    goto :goto_1

    .line 1027
    :cond_1
    aput v4, v1, v2

    goto :goto_2

    .line 1025
    :cond_2
    :goto_1
    aput v2, v1, v2

    move v4, v2

    move v3, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 1033
    aget p0, v1, v0

    if-nez p0, :cond_4

    const/4 p0, -0x1

    .line 1034
    invoke-static {v1, p0}, Ljava/util/Arrays;->fill([II)V

    :cond_4
    return-object v1
.end method

.method public static calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_4

    .line 1137
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->getDeferralPolicy()I

    move-result p1

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    return v0

    .line 1151
    :cond_5
    sget-boolean p1, Lcom/android/server/am/BroadcastRecord;->CORE_DEFER_UNTIL_ACTIVE:Z

    if-eqz p1, :cond_6

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public static calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z
    .locals 1

    .line 1102
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 1106
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 1109
    :cond_1
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static deliveryStateToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 240
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "DEFERRED"

    return-object p0

    :pswitch_1
    const-string p0, "FAILURE"

    return-object p0

    :pswitch_2
    const-string p0, "SCHEDULED"

    return-object p0

    :pswitch_3
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_4
    const-string p0, "SKIPPED"

    return-object p0

    :pswitch_5
    const-string p0, "DELIVERED"

    return-object p0

    :pswitch_6
    const-string p0, "PENDING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDeliveryGroupMatchingFilter(Lcom/android/server/am/BroadcastRecord;)Landroid/content/IntentFilter;
    .locals 0

    .line 1353
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingFilter()Landroid/content/IntentFilter;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 0

    .line 1347
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1348
    :cond_0
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingKeyFragment()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 0

    .line 1341
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1342
    :cond_0
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingNamespaceFragment()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getReceiverClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1064
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 1065
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastFilter;->getReceiverClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1067
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1056
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 1057
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 1059
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverPriority(Ljava/lang/Object;)I
    .locals 1

    .line 1072
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 1073
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    return p0

    .line 1075
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget p0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    return p0
.end method

.method public static getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1048
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 1049
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    return-object p0

    .line 1051
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverUid(Ljava/lang/Object;)I
    .locals 1

    .line 1040
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 1041
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget p0, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    return p0

    .line 1043
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public static isCallerInstrumented(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 2

    .line 973
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDeliveryStateBeyond(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isDeliveryStateTerminal(I)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1

    .line 1319
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1320
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPrioritized([IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 990
    array-length p1, p0

    if-lez p1, :cond_0

    aget p0, p0, v0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1082
    :cond_0
    instance-of v1, p0, Landroid/content/pm/ResolveInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_2

    .line 1083
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 1084
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 1085
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1086
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 1088
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public static matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 2

    .line 1305
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingFilter(Lcom/android/server/am/BroadcastRecord;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 1308
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1310
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    if-eqz v0, :cond_1

    .line 1312
    invoke-virtual {v0}, Landroid/content/IntentFilter;->asPredicate()Ljava/util/function/Predicate;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1315
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastRecord;->areMatchingKeysEqual(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public allReceiversPending()Z
    .locals 4

    .line 1364
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public applySingletonPolicy(Lcom/android/server/am/ActivityManagerService;)V
    .locals 7

    .line 1252
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1253
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1254
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1255
    instance-of v3, v2, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_1

    .line 1256
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1259
    :try_start_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, v4, v5, v6, v3}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1263
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    move v3, v0

    .line 1265
    :goto_1
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1266
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_1

    if-eqz v3, :cond_1

    .line 1267
    invoke-virtual {p1, v5, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1268
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public calculateTypeForLogging()I
    .locals 2

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1165
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1168
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    .line 1171
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    .line 1174
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    .line 1177
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x40

    .line 1180
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    .line 1183
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    .line 1186
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x200

    .line 1189
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x400

    .line 1192
    :cond_9
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz p0, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    return v0
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 7

    .line 1208
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p3, v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    .line 1213
    :goto_0
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eq v5, p3, :cond_3

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    return v1

    .line 1220
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v2, v1

    :goto_2
    if-ltz v0, :cond_b

    .line 1221
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1222
    instance-of v6, v5, Landroid/content/pm/ResolveInfo;

    if-nez v6, :cond_4

    goto :goto_5

    .line 1225
    :cond_4
    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_6

    .line 1227
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1228
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p2, :cond_6

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1229
    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v3

    :goto_4
    if-eqz v6, :cond_a

    if-nez v4, :cond_7

    .line 1230
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1231
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p3, :cond_a

    :cond_7
    if-nez p4, :cond_8

    return v3

    .line 1236
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1237
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v0, v2, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 1238
    iput v2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    :cond_9
    move v2, v3

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1242
    :cond_b
    iget p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    return v2
.end method

.method public clearMatchingRecordsCache()V
    .locals 1

    const/4 v0, 0x0

    .line 1391
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public containsAllReceivers(Ljava/util/List;)Z
    .locals 3

    .line 1285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1286
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public containsReceiver(Ljava/lang/Object;)Z
    .locals 3

    .line 1276
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1277
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public copyEnqueueTimeFrom(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2

    .line 891
    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    .line 892
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 893
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 894
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 20
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 312
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " to user "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 315
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 322
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  targetComp: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    :cond_0
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 332
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "caller="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " pid="

    .line 334
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " uid="

    .line 335
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 336
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    array-length v0, v0

    if-gtz v0, :cond_3

    :cond_2
    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v0, v1, :cond_4

    .line 338
    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requiredPermissions="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  appOp="

    .line 340
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 342
    :cond_4
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    .line 343
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "excludedPermissions="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    :cond_5
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    .line 347
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "excludedPackages="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    :cond_6
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v0, :cond_7

    .line 351
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "options="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 353
    :cond_7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enqueueClockTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/util/Date;

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " dispatchClockTime="

    .line 355
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/util/Date;

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    const-wide/16 v11, 0x0

    cmp-long v0, v2, v11

    if-lez v0, :cond_8

    const-string v0, " originalEnqueueClockTime="

    .line 358
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/util/Date;

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 362
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dispatchTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v2, v3, v9, v10, v7}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " ("

    .line 364
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v4, v6, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v2, " since enq)"

    .line 366
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    cmp-long v2, v2, v11

    if-eqz v2, :cond_9

    const-string v2, " finishTime="

    .line 368
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v2, v3, v9, v10, v7}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 369
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v4, v6, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, " since disp)"

    .line 371
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v0, " receiverTime="

    .line 373
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v2, v3, v9, v10, v7}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_1
    const-string v0, ""

    .line 375
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v0, :cond_a

    .line 377
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "anrCount="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 379
    :cond_a
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v0, :cond_b

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    if-ne v0, v1, :cond_b

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->hadResultTo:Z

    if-eqz v0, :cond_d

    .line 381
    :cond_b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resultTo="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " resultCode="

    .line 382
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " hadResultTo="

    .line 384
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->hadResultTo:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 385
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, " resultData=(has data)"

    .line 386
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v0, " resultData="

    .line 389
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    :cond_d
    :goto_2
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    .line 395
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resultExtras=(has extras)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    :cond_e
    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v0, :cond_f

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_f

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v0, :cond_f

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v0, :cond_10

    .line 402
    :cond_f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resultAbort="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " ordered="

    .line 403
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " sticky="

    .line 404
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " initialSticky="

    .line 405
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " originalStickyCallingUid="

    .line 406
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 408
    :cond_10
    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-eqz v0, :cond_11

    .line 409
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "nextReceiver="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 411
    :cond_11
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_12

    .line 412
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curFilter="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 414
    :cond_12
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_13

    .line 415
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curReceiver="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 417
    :cond_13
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_15

    .line 418
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curApp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 419
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curComponent="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_14
    const-string v0, "--"

    :goto_3
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_15

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_15

    .line 422
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curSourceDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    :cond_15
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_16

    const-string v0, " filtered extras: "

    .line 427
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 429
    :cond_16
    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    const-string v0, " (?)"

    goto :goto_4

    :cond_17
    const-string v0, " (WAITING_SERVICES)"

    goto :goto_4

    :cond_18
    const-string v0, " (CALL_DONE_RECEIVE)"

    goto :goto_4

    :cond_19
    const-string v0, " (CALL_IN_RECEIVE)"

    goto :goto_4

    :cond_1a
    const-string v0, " (APP_RECEIVE)"

    .line 437
    :goto_4
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "state="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    :cond_1b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "terminalCount="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 440
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v14, v0

    goto :goto_5

    :cond_1c
    const/4 v14, 0x0

    .line 441
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, p2

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 442
    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, v7}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v14, :cond_24

    .line 444
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 445
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, v3

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 447
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 448
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v16, v1, v3

    cmp-long v1, v16, v11

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "scheduled "

    .line 449
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v16, v1, v3

    move/from16 v18, v14

    iget-wide v13, v6, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v13, v16, v13

    invoke-static {v13, v14, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 451
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_7

    :cond_1d
    move/from16 v18, v14

    .line 453
    :goto_7
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v13, v1, v3

    cmp-long v1, v13, v11

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "terminal "

    .line 454
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v13, v1, v3

    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v16, v1, v3

    sub-long v13, v13, v16

    invoke-static {v13, v14, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 456
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(C)V

    :cond_1e
    const-string v0, "("

    .line 458
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget v0, v0, v3

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "#"

    .line 459
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 460
    instance-of v0, v2, Lcom/android/server/am/BroadcastFilter;

    const-string v1, "/ "

    const-string v13, "/ o:"

    const-string v14, "/ e:"

    const-string v11, "/ s:"

    if-eqz v0, :cond_20

    .line 463
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isModernBroadcastQueueEnabled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 464
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 465
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, p1

    move/from16 v19, v3

    move-object v11, v4

    move-object v13, v5

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceExt;->printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V

    move-object v4, v11

    move-object v5, v13

    goto :goto_8

    :cond_1f
    move-object v12, v2

    move/from16 v19, v3

    .line 467
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v2, v0, v19

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v2, v0, v19

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    aget-object v0, v0, v19

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 476
    :goto_8
    move-object v2, v12

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v2, v7, v4}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    move-object v0, v4

    move-object v3, v5

    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_20
    move-object v12, v2

    move/from16 v19, v3

    .line 477
    instance-of v0, v12, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_22

    .line 480
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isModernBroadcastQueueEnabled()Z

    move-result v0

    const-string v2, "(manifest)"

    if-nez v0, :cond_21

    .line 481
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v19

    move-object v11, v4

    move-object v13, v5

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceExt;->printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V

    move-object v0, v11

    move-object v3, v13

    goto :goto_9

    :cond_21
    move-object v0, v4

    move-object v3, v5

    .line 484
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v4, v4, v19

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v4, v4, v19

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    aget-object v4, v4, v19

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    :goto_9
    move-object v2, v12

    check-cast v2, Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_a

    :cond_22
    move-object v0, v4

    move-object v3, v5

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 497
    :goto_a
    iget-object v2, v6, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aget-object v2, v2, v19

    if-eqz v2, :cond_23

    .line 498
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "reason: "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_23
    add-int/lit8 v2, v19, 0x1

    move-object v4, v0

    move-object v5, v3

    move/from16 v14, v18

    const-wide/16 v11, 0x0

    move v3, v2

    goto/16 :goto_6

    :cond_24
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1420
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 1421
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1422
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x10900000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1423
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDeliveryGroupPolicy()I
    .locals 0

    .line 1295
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDeliveryState(I)I
    .locals 0

    .line 867
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget p0, p0, p1

    return p0
.end method

.method public getHostingRecordTriggerType()Ljava/lang/String;
    .locals 1

    .line 928
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_0

    const-string p0, "alarm"

    return-object p0

    .line 930
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v0, :cond_1

    const-string/jumbo p0, "push_message"

    return-object p0

    .line 932
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "push_message_over_quota"

    return-object p0

    :cond_2
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 4

    .line 949
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 952
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v2

    .line 953
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-object v1

    .line 958
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 959
    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 963
    :cond_1
    instance-of v0, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    .line 965
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v1, v0

    .line 967
    :cond_2
    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_0

    .line 969
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    :goto_0
    return-object v1
.end method

.method public isAssumedDelivered(I)Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBlocked(I)Z
    .locals 1

    .line 875
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget p0, p0, p1

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeferUntilActive()Z
    .locals 0

    .line 920
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    return p0
.end method

.method public isForeground()Z
    .locals 1

    .line 904
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMARsTargetReceiver(I)Z
    .locals 0

    .line 899
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isMatchingRecord(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 5

    .line 1368
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1370
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    .line 1375
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_3

    .line 1376
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v3, v0

    .line 1382
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public isNoAbort()Z
    .locals 1

    .line 912
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOffload()Z
    .locals 1

    .line 916
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReplacePending()Z
    .locals 1

    .line 908
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUrgent()Z
    .locals 0

    .line 924
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    return p0
.end method

.method public matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 0

    .line 1300
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastRecord;->matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result p0

    return p0
.end method

.method public maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;
    .locals 2

    .line 1199
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1202
    :cond_0
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setDeliveryState(IILjava/lang/String;)Z
    .locals 6

    .line 816
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, p1

    .line 817
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    if-ne p2, v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x6

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 826
    :cond_1
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 837
    :pswitch_0
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    goto :goto_1

    .line 834
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, p1

    goto :goto_1

    .line 843
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, p1

    .line 844
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    goto :goto_1

    .line 831
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v0, p1

    .line 848
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput p2, v0, p1

    .line 849
    iget-object p2, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aput-object p3, p2, p1

    .line 853
    iget p2, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    if-lt p1, p2, :cond_2

    move p1, p2

    .line 855
    :goto_2
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    array-length p3, p3

    if-ge p1, p3, :cond_2

    .line 856
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p3

    invoke-static {p3}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateBeyond(I)Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 857
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    goto :goto_2

    .line 863
    :cond_2
    iget p0, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    if-eq p0, p2, :cond_3

    move v2, v3

    :cond_3
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setMARsTargetReceiver(IZ)V
    .locals 0

    .line 802
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMatchingRecordsCache(Landroid/util/ArrayMap;)V
    .locals 0

    .line 1387
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public splitDeferredBootCompletedBroadcastLocked(Landroid/app/ActivityManagerInternal;I)Landroid/util/SparseArray;
    .locals 36

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 737
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    if-nez v1, :cond_0

    return-object v2

    .line 742
    :cond_0
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v3, :cond_1

    return-object v2

    .line 746
    :cond_1
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 747
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    .line 748
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    .line 752
    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 753
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_0
    const/4 v6, 0x0

    if-ltz v4, :cond_8

    .line 754
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 755
    invoke-static {v7}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v8

    if-eq v1, v5, :cond_5

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_3

    move-object/from16 v9, p1

    .line 758
    invoke-virtual {v9, v8}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result v10

    const/16 v11, 0x32

    if-ge v10, v11, :cond_4

    goto :goto_1

    :cond_3
    move-object/from16 v9, p1

    :cond_4
    and-int/lit8 v10, v1, 0x4

    if-eqz v10, :cond_6

    const-wide/32 v10, 0xc2449f6

    .line 765
    invoke-static {v10, v11, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_5
    move-object/from16 v9, p1

    .line 773
    :cond_6
    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 774
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_7

    .line 776
    invoke-interface {v10, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 778
    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 779
    invoke-virtual {v10, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 780
    invoke-virtual {v3, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 783
    :cond_8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_2
    if-ge v6, v1, :cond_9

    .line 785
    new-instance v4, Lcom/android/server/am/BroadcastRecord;

    move-object v7, v4

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v13, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v14, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v15, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v16, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object/from16 v17, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    move-object/from16 v19, v5

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v20, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v21, v5

    .line 788
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, Ljava/util/List;

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v25, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v26, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v27, v5

    iget-boolean v5, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v28, v5

    iget-boolean v5, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v29, v5

    iget-boolean v5, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v30, v5

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v31, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    move-object/from16 v32, v5

    iget-boolean v5, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v33, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    move-object/from16 v34, v5

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    move/from16 v35, v5

    invoke-direct/range {v7 .. v35}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;I)V

    .line 792
    iget-wide v7, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v7, v4, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 793
    iget-wide v7, v0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v7, v4, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 794
    iget-wide v7, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v7, v4, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 795
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    return-object v2
.end method

.method public splitRecipientsLocked(II)Lcom/android/server/am/BroadcastRecord;
    .locals 32

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p2

    move-object/from16 v18, v1

    .line 686
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 687
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 688
    invoke-static {v3}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v4

    move/from16 v5, p1

    if-ne v4, v5, :cond_1

    if-nez v18, :cond_0

    .line 690
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_0
    move-object/from16 v4, v18

    .line 692
    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v18, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v18, :cond_3

    return-object v1

    .line 705
    :cond_3
    new-instance v1, Lcom/android/server/am/BroadcastRecord;

    move-object v3, v1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v10, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v20, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v21, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v23, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v24, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v25, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v26, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v27, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    move-object/from16 v28, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v29, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    move-object/from16 v30, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    move/from16 v31, v2

    invoke-direct/range {v3 .. v31}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;I)V

    .line 712
    iget-wide v2, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v2, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 713
    iget-wide v2, v0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v2, v1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 714
    iget-wide v2, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v2, v1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 715
    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    iput v0, v1, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    return-object v1
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    .line 1407
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1412
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/u"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    .line 1415
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1396
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 1401
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    .line 1403
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    return-object p0
.end method

.method public wasDeliveryAttempted(I)Z
    .locals 1

    .line 879
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method
