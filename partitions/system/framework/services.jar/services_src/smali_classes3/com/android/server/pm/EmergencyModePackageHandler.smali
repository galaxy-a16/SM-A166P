.class public Lcom/android/server/pm/EmergencyModePackageHandler;
.super Ljava/lang/Object;
.source "EmergencyModePackageHandler.java"


# static fields
.field public static final EMPTY_INT_ARRAY:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

.field public final mEMPackageHanderThread:Lcom/android/server/ServiceThread;

.field public final mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

.field public final mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

.field public final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field public mUserManager:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$mhandlePendingBroadcastsForBurst(Lcom/android/server/pm/EmergencyModePackageHandler;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/EmergencyModePackageHandler;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendPackageChangedBroadcastWithReceiver(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/EmergencyModePackageHandler;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 65
    sput-object v0, Lcom/android/server/pm/EmergencyModePackageHandler;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/pm/ProtectedPackages;)V
    .locals 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "EMPackageHandler"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHanderThread:Lcom/android/server/ServiceThread;

    .line 436
    new-instance v1, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-direct {v1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    .line 85
    iput-object p4, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 86
    new-instance p1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;-><init>(Lcom/android/server/pm/EmergencyModePackageHandler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    .line 87
    iput-object p3, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 89
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    const-wide/32 p2, 0x927c0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    return-void
.end method


# virtual methods
.method public cancelEMPHandlerSendPendingBroadcast()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EMPkgHandler"

    const-string v1, "cancelEMHandlerSendPendingBroadcast : Already done"

    .line 615
    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 620
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    .line 467
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPendingBroadcastsForBurst()Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    return-object p0
.end method

.method public getProgressionOfPackageChanged()I
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    if-eqz p0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->getProgressionOfPackageChanged()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    .locals 12

    move-object v0, p0

    move/from16 v1, p6

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePendingBroadcastsForBurst size["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EMPkgHandler"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    .line 566
    :cond_0
    iget-object v3, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    move v4, v2

    move v5, v4

    .line 567
    :goto_0
    iget-object v6, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v6}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->userIdCount()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 568
    iget-object v6, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->userIdAt(I)I

    move-result v6

    .line 569
    iget-object v7, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    .line 570
    invoke-virtual {v7, v6}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->packagesForUserId(I)Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 571
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 572
    iget-object v8, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v8, v6}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->packagesNewStateForUserId(I)Ljava/util/LinkedHashMap;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 574
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    if-ge v5, v1, :cond_4

    .line 575
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 576
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3, v10}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 578
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, p1, v5

    .line 579
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    aput-object v9, p2, v5

    .line 580
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v6, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    aput v9, p3, v5

    .line 581
    aget-object v9, p1, v5

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 582
    aput v9, p5, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 585
    aput-boolean v10, p4, v5

    goto :goto_2

    :cond_2
    if-nez v9, :cond_3

    .line 587
    aput-boolean v10, p4, v5

    goto :goto_2

    .line 590
    :cond_3
    aput-boolean v2, p4, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 597
    :cond_5
    iget-object v0, v0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->clear()V

    return v5
.end method

.method public isKnox(I)Z
    .locals 0

    .line 625
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public sendPackageChangedBroadcastEMPkgHndlr(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .locals 8

    .line 643
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 644
    iget-object v1, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    const-string v7, "EmergencyMode"

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method public final sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    .locals 15

    move-object/from16 v1, p3

    .line 445
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    .line 448
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v6, p1

    :try_start_1
    invoke-interface {v0, v6, v2}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v6, p1

    .line 450
    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v3

    :goto_1
    if-eqz v0, :cond_0

    .line 453
    filled-new-array {v2}, [I

    move-result-object v0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/android/server/pm/EmergencyModePackageHandler;->EMPTY_INT_ARRAY:[I

    :goto_2
    move-object v12, v0

    .line 454
    new-instance v7, Landroid/os/Bundle;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 455
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "android.intent.extra.changed_component_name"

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 457
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v1, "android.intent.extra.changed_component_name_list"

    .line 458
    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "android.intent.extra.DONT_KILL_APP"

    move/from16 v1, p2

    .line 459
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.intent.extra.UID"

    move/from16 v1, p4

    .line 460
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EM_PKG_HADNLER_ID"

    move/from16 v2, p6

    .line 461
    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, p0

    .line 462
    iget-object v4, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    .line 463
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p1

    move-object/from16 v10, p5

    .line 462
    invoke-virtual/range {v4 .. v14}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method public setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V
    .locals 20

    move-object/from16 v8, p0

    move/from16 v9, p4

    move/from16 v7, p5

    move/from16 v10, p6

    const-string/jumbo v11, "setEnabledSettingEMPkgHndlr :  "

    const-string v12, "EMPkgHandler"

    if-eqz p1, :cond_b

    .line 472
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 477
    :cond_0
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p7, :cond_2

    .line 481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    :cond_2
    move-object/from16 v13, p7

    :goto_0
    and-int/lit8 v0, p3, -0x2

    or-int/lit8 v14, v0, 0x4

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setApplicationEnabledSettingWithList usePending = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  Start now = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v15

    .line 496
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 497
    array-length v5, v15

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_1
    if-ge v4, v5, :cond_6

    aget v0, v15, v4

    .line 499
    invoke-virtual {v8, v0}, Lcom/android/server/pm/EmergencyModePackageHandler;->isKnox(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setApplicationEnabledSettingWithList- skip knox user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    goto/16 :goto_3

    .line 503
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setApplicationEnabledSettingWithList - user id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 505
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 506
    iget-object v3, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v1

    const-string/jumbo v1, "setApplicationEnabledSettingWithList- skip ProtectedPackage = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p3

    goto :goto_2

    :cond_4
    move-object/from16 p3, v1

    .line 510
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, p2

    move/from16 v17, v4

    move v4, v14

    move/from16 v18, v5

    move v5, v0

    move-object/from16 v19, v6

    move-object v6, v13

    .line 514
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/EmergencyModePackageHandler;->setEnabledSettingEMPkgHndlr(Ljava/util/ArrayList;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_3
    add-int/lit8 v4, v17, 0x1

    move/from16 v5, v18

    move-object/from16 v6, v19

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, "setApplicationEnabledSettingWithList"

    .line 527
    invoke-static {v12, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_7

    if-eqz v7, :cond_9

    .line 530
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 531
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 532
    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 533
    iget-object v1, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 537
    :cond_7
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    if-eqz v0, :cond_9

    .line 538
    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->size()I

    move-result v7

    if-gtz v7, :cond_8

    return-void

    .line 542
    :cond_8
    new-array v0, v7, [Ljava/lang/String;

    .line 543
    new-array v10, v7, [Ljava/util/ArrayList;

    .line 544
    new-array v11, v7, [I

    .line 545
    new-array v12, v7, [Z

    .line 546
    new-array v6, v7, [I

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    .line 547
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/EmergencyModePackageHandler;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v1

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v0, 0x0

    move-object v10, v0

    move-object v11, v10

    move-object v12, v11

    move/from16 v1, v16

    :goto_5
    if-nez v9, :cond_a

    move/from16 v2, v16

    :goto_6
    if-ge v2, v1, :cond_a

    .line 554
    aget-object v3, v0, v2

    aget-boolean v4, v12, v2

    aget-object v5, v10, v2

    aget v6, v11, v2

    invoke-virtual {v8, v3, v4, v5, v6}, Lcom/android/server/pm/EmergencyModePackageHandler;->sendPackageChangedBroadcastEMPkgHndlr(Ljava/lang/String;ZLjava/util/ArrayList;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    return-void

    :cond_b
    :goto_7
    const-string v0, "list of PackageName is invalid"

    .line 473
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEnabledSettingEMPkgHndlr(Ljava/util/ArrayList;IIILjava/lang/String;)V
    .locals 3

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 635
    new-instance v2, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v2, v1, p2, p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, v0, p4, p5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSettings(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method
