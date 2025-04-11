.class public Lcom/android/server/chimera/ChimeraAppManager;
.super Ljava/lang/Object;
.source "ChimeraAppManager.java"


# static fields
.field public static final CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;


# instance fields
.field public mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

.field public mCemPkgProtectedIntervalMs:I

.field public mDeviceIdleKillAllowList:Ljava/util/List;

.field public mDeviceIdleKillProtectedList:Ljava/util/List;

.field public mForegroundG3ProcList:Ljava/util/Set;

.field public mGcApps:Ljava/util/Map;

.field public mReclaimApps:Ljava/util/Map;

.field public mStandbyInfoMap:Ljava/util/Map;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0xea60

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 53
    new-instance v0, Lcom/android/server/chimera/ChimeraAppManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ChimeraAppManager$1;-><init>(Lcom/android/server/chimera/ChimeraAppManager;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mDeviceIdleKillAllowList:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/android/server/chimera/ChimeraAppManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ChimeraAppManager$2;-><init>(Lcom/android/server/chimera/ChimeraAppManager;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mDeviceIdleKillProtectedList:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-direct {v0, p1}, Lcom/android/server/chimera/ChimeraAppClassifier;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 65
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v0, "persist.sys.chimera_cem_pkg_protected_interval_ms"

    .line 67
    sget-object v1, Lcom/android/server/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 68
    invoke-interface {p1, v0, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 70
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraAppManager;->collectStandbyBucketList()V

    return-void
.end method


# virtual methods
.method public addToGcAppList(Ljava/lang/String;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 83
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Lcom/android/server/chimera/ChimeraAppInfo;

    move/from16 v3, p2

    invoke-direct {v2, v3, v1}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 86
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v3, v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move/from16 v4, p3

    .line 88
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJI)Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    return-void
.end method

.method public addToReclaimAppList(Ljava/lang/String;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 74
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Lcom/android/server/chimera/ChimeraAppInfo;

    move/from16 v3, p2

    invoke-direct {v2, v3, v1}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 77
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v3, v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move/from16 v4, p3

    .line 79
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJI)Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    return-void
.end method

.method public addToReclaimGcAppList(Ljava/lang/String;Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/RepositoryFactory;->getSettingRepository(Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/SettingRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isGcEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget v0, p2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    iget v1, p2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/chimera/ChimeraAppManager;->addToGcAppList(Ljava/lang/String;II)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/RepositoryFactory;->getSettingRepository(Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/SettingRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget v0, p2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    iget p2, p2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/chimera/ChimeraAppManager;->addToReclaimAppList(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public collectStandbyBucketList()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getAppStandbyBuckets()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    return-void
.end method

.method public dumpStandbyBucket()Ljava/lang/String;
    .locals 5

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " apps in mStandbyInfoMap: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 637
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;I)I
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0, p2}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result p2

    .line 608
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 608
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/server/chimera/SystemRepository;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p0

    return p0
.end method

.method public getAppStandbyBucket(Lcom/android/server/chimera/ChimeraAppInfo;)V
    .locals 5

    .line 613
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v0, v1}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v0

    .line 618
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 618
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/server/chimera/SystemRepository;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 620
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public getAppsForCritical(Ljava/util/List;)Landroid/util/Pair;
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 303
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, p1

    .line 306
    :goto_1
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 307
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 308
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v6}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    move-result-object v6

    .line 309
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v7}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v7

    .line 311
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "ChimeraAppManager"

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 313
    iget v10, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v11, 0x11

    if-ne v10, v11, :cond_2

    goto :goto_2

    .line 317
    :cond_2
    iget-object v10, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v10, :cond_9

    array-length v11, v10

    if-lez v11, :cond_9

    .line 318
    aget-object v10, v10, v1

    .line 319
    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 323
    :cond_3
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v12, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-interface {v11, v12}, Lcom/android/server/chimera/SystemRepository;->isApp(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 324
    iget-object v10, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleCritical() - Skipped by uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v9, v8}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 329
    :cond_4
    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    .line 334
    :cond_5
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v12, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-interface {v11, v12}, Lcom/android/server/chimera/SystemRepository;->isOnScreenWindow(I)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    .line 338
    :cond_6
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v11, :cond_7

    .line 340
    new-instance v11, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v12, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v11, v12, v10}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 341
    invoke-virtual {v4, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v12, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v13, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-interface {v12, v13}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v12

    .line 343
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v12, v11

    .line 346
    iget-wide v10, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    if-eqz v2, :cond_8

    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-gtz v13, :cond_8

    .line 348
    iget-object v10, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v12, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": proc.lastPss <= 0, fetching right now"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v10, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v9, v10}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v9

    move-wide v15, v9

    goto :goto_3

    :cond_8
    move-wide v15, v10

    .line 352
    :goto_3
    iget v13, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v14, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-wide v9, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    move/from16 v24, v2

    iget-wide v1, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move-object/from16 p1, v6

    move-object/from16 v25, v7

    iget-wide v6, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    iget v11, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    move-wide/from16 v17, v9

    move-wide/from16 v19, v1

    move-wide/from16 v21, v6

    move/from16 v23, v11

    invoke-virtual/range {v12 .. v23}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJI)Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    move-result-object v1

    .line 354
    iget-wide v6, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->DRAMUsed:J

    iput-wide v6, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->DRAMUsed:J

    goto :goto_4

    :cond_9
    move/from16 v24, v2

    move-object/from16 p1, v6

    move-object/from16 v25, v7

    :goto_4
    move-object/from16 v6, p1

    move/from16 v2, v24

    move-object/from16 v7, v25

    const/4 v1, 0x0

    goto/16 :goto_2

    .line 358
    :cond_a
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 361
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v1, v2}, Lcom/android/server/chimera/ChimeraAppClassifier;->prepare(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 362
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-virtual {v1, v5}, Lcom/android/server/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 367
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v5

    .line 368
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    iget-object v7, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v8

    iget v10, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v6, v7, v5, v8, v10}, Lcom/android/server/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 369
    invoke-static {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 371
    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->isInPMMCriticalProtectedGroup()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 372
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCritical() - Skipped by protected app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v9, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 376
    :cond_b
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 377
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 379
    :cond_c
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 383
    :cond_d
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppsToDeviceIdle(IJJ)Ljava/util/List;
    .locals 32

    move-object/from16 v0, p0

    .line 477
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v2, "getAppsToDeviceIdle()"

    const-string v3, "ChimeraAppManager"

    invoke-interface {v1, v3, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 483
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v5}, Lcom/android/server/chimera/SystemRepository;->getSystemPid()I

    move-result v5

    and-int/lit8 v6, p1, 0x1

    const/4 v7, 0x0

    if-lez v6, :cond_c

    .line 486
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v6}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, -0x1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    add-int/lit8 v8, v8, 0x1

    .line 488
    iget-object v10, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v10, :cond_9

    array-length v11, v10

    if-gtz v11, :cond_0

    goto/16 :goto_1

    .line 492
    :cond_0
    iget v11, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    if-ne v5, v11, :cond_1

    goto/16 :goto_1

    .line 496
    :cond_1
    aget-object v10, v10, v7

    .line 498
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mDeviceIdleKillProtectedList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_1

    .line 502
    :cond_2
    iget-wide v11, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_9

    iget-wide v11, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_3

    goto/16 :goto_1

    .line 507
    :cond_3
    iget v11, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    filled-new-array {v11}, [I

    move-result-object v11

    .line 509
    iget-object v12, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v12, v11}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v11

    if-nez v11, :cond_4

    goto/16 :goto_1

    .line 513
    :cond_4
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [I

    aget v11, v11, v7

    if-nez v11, :cond_5

    goto/16 :goto_1

    .line 519
    :cond_5
    invoke-virtual {v0, v10}, Lcom/android/server/chimera/ChimeraAppManager;->samsungApp(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v0, v11}, Lcom/android/server/chimera/ChimeraAppManager;->persistentApp(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 520
    :cond_6
    iget-wide v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    cmp-long v12, v13, p2

    if-lez v12, :cond_9

    .line 521
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v12, :cond_7

    .line 523
    new-instance v12, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v12, v13, v10}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 524
    iput v8, v12, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 525
    invoke-virtual {v1, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v13, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-interface {v13, v14}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v13

    .line 527
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_7
    iget-wide v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/16 v15, 0x0

    cmp-long v10, v13, v15

    if-gtz v10, :cond_8

    .line 532
    iget-object v10, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v10, v13}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v13

    :cond_8
    move-wide/from16 v20, v13

    .line 535
    iget v10, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    move/from16 v29, v8

    iget-wide v7, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move/from16 v30, v5

    move-object/from16 v31, v6

    iget-wide v5, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    iget v9, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    move-object/from16 v17, v12

    move/from16 v18, v10

    move-object/from16 v19, v13

    move-wide/from16 v22, v14

    move-wide/from16 v24, v7

    move-wide/from16 v26, v5

    move/from16 v28, v9

    invoke-virtual/range {v17 .. v28}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJI)Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 536
    iput v11, v12, Lcom/android/server/chimera/ChimeraAppInfo;->idleKillAdj:I

    goto :goto_2

    :cond_9
    :goto_1
    move/from16 v30, v5

    move-object/from16 v31, v6

    move/from16 v29, v8

    :goto_2
    move/from16 v8, v29

    move/from16 v5, v30

    move-object/from16 v6, v31

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 541
    :cond_a
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 543
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-virtual {v5, v2}, Lcom/android/server/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 545
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 546
    iget-wide v5, v2, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iget-wide v7, v2, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 547
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v2, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v5

    .line 549
    iget-object v6, v2, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/android/server/chimera/ChimeraAppManager;->samsungApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 550
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    iget-object v7, v2, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v8

    iget v9, v2, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/android/server/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v5

    iput v5, v2, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 551
    invoke-static {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v5

    iput v5, v2, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 552
    invoke-virtual {v2}, Lcom/android/server/chimera/ChimeraAppInfo;->isInDeviceIdleKillProtectedGroup()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mDeviceIdleKillAllowList:Ljava/util/List;

    iget-object v6, v2, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 553
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceIdleCritical() - Skipped by protected app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 558
    :cond_b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_f

    .line 564
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 566
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 567
    iget v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v0, v5}, Lcom/android/server/chimera/ChimeraAppManager;->isThirdPartyApp(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 568
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-interface {v5, v6, v2}, Lcom/android/server/chimera/SystemRepository;->getPss(I[J)J

    move-result-wide v20

    cmp-long v5, v20, p4

    if-lez v5, :cond_e

    .line 570
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->getPackageNameFromUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 572
    array-length v6, v5

    if-lez v6, :cond_d

    .line 573
    new-instance v6, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v7, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-direct {v6, v7, v5}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    .line 575
    new-instance v6, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v7, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 577
    :goto_5
    iget v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v3, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v17, v6

    move/from16 v18, v5

    move-object/from16 v19, v3

    invoke-virtual/range {v17 .. v28}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJI)Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    const/16 v3, -0x3e8

    .line 578
    iput v3, v6, Lcom/android/server/chimera/ChimeraAppInfo;->idleKillAdj:I

    .line 579
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    const/4 v8, 0x0

    goto :goto_4

    :cond_f
    return-object v4
.end method

.method public getAppsToGc()Ljava/util/List;
    .locals 4

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppsToGc(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChimeraAppManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 120
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppsToKill() - protectedLruCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ChimeraAppManager"

    invoke-interface {v2, v5, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 122
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 123
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v7}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    move-result-object v7

    .line 128
    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v8}, Lcom/android/server/chimera/ChimeraCommonUtil;->isBubEnabled(Lcom/android/server/chimera/SystemRepository;)Z

    move-result v8

    .line 129
    iget-object v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v9}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v9

    .line 131
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 133
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 135
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v11}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, -0x1

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v15, 0x1

    if-eqz v13, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    add-int/2addr v12, v15

    .line 137
    iget v15, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v15, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v15, :cond_10

    array-length v14, v15

    if-gtz v14, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v14, 0x0

    .line 143
    aget-object v14, v15, v14

    .line 146
    iget v15, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    move-object/from16 v16, v11

    const/16 v11, 0x11

    if-ne v15, v11, :cond_1

    .line 147
    iget v11, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v13, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v11, v13}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    :goto_1
    move-object/from16 v32, v3

    move/from16 p2, v4

    move-object/from16 v34, v5

    move-object/from16 v18, v7

    move/from16 v17, v8

    move-object/from16 v31, v9

    move-object/from16 v33, v10

    goto/16 :goto_6

    .line 152
    :cond_1
    invoke-static {v14, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_2
    goto :goto_1

    .line 157
    :cond_2
    invoke-interface {v7, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 162
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object v11, v9

    move-object v15, v10

    iget-wide v9, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long v17, v17, v9

    const-wide/16 v9, 0x1388

    cmp-long v9, v17, v9

    if-gez v9, :cond_4

    move-object/from16 v32, v3

    move/from16 p2, v4

    move-object/from16 v34, v5

    move-object v9, v6

    move-object/from16 v18, v7

    move/from16 v17, v8

    move-object/from16 v31, v11

    move-object/from16 v33, v15

    goto/16 :goto_7

    .line 167
    :cond_4
    iget v9, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v10, 0x13

    if-ne v9, v10, :cond_5

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    iget-wide v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long/2addr v9, v6

    iget v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    int-to-long v6, v6

    cmp-long v6, v9, v6

    if-gez v6, :cond_6

    .line 169
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    :goto_3
    move-object/from16 v32, v3

    move/from16 p2, v4

    move-object/from16 v34, v5

    move-object/from16 v31, v11

    move-object/from16 v33, v15

    move-object/from16 v9, v17

    move/from16 v17, v8

    goto/16 :goto_7

    :cond_5
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 175
    :cond_6
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_7

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v9, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long/2addr v6, v9

    iget v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    int-to-long v9, v9

    cmp-long v6, v6, v9

    if-gez v6, :cond_7

    .line 177
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_3

    .line 182
    :cond_7
    invoke-interface {v3, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 183
    invoke-virtual {v0, v14, v13}, Lcom/android/server/chimera/ChimeraAppManager;->addToReclaimGcAppList(Ljava/lang/String;Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)V

    goto :goto_3

    .line 187
    :cond_8
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-gtz v6, :cond_9

    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_a

    .line 189
    :cond_9
    invoke-virtual {v0, v14, v13}, Lcom/android/server/chimera/ChimeraAppManager;->addToReclaimGcAppList(Ljava/lang/String;Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)V

    if-lez v4, :cond_a

    .line 192
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppsToKill() - Protected by LRU : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    .line 194
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    move-object v9, v11

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_0

    .line 200
    :cond_a
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_b

    .line 201
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto/16 :goto_3

    :cond_b
    if-nez v8, :cond_c

    .line 206
    iget-boolean v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->isProtectedInPicked:Z

    if-eqz v6, :cond_c

    .line 207
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppsToKill() - Protected by Picked "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto/16 :goto_3

    .line 213
    :cond_c
    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v6, :cond_d

    .line 215
    new-instance v6, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v7, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v6, v7, v14}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 216
    iput v12, v6, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 217
    invoke-virtual {v0, v6}, Lcom/android/server/chimera/ChimeraAppManager;->getAppStandbyBucket(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 218
    iget v7, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v0, v14, v7}, Lcom/android/server/chimera/ChimeraAppManager;->getAppStandbyBucket(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 219
    invoke-virtual {v2, v14, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v9, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-interface {v7, v9}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v7

    .line 221
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, v17

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    move-object/from16 v9, v17

    :goto_4
    move-object v10, v3

    move/from16 p2, v4

    .line 224
    iget-wide v3, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/16 v19, 0x0

    cmp-long v7, v3, v19

    if-gtz v7, :cond_e

    .line 226
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": proc.lastPss <= 0, fetching right now"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v4, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v3, v4}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v3

    :cond_e
    move-wide/from16 v22, v3

    .line 231
    iget v3, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v4, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move/from16 v17, v8

    iget-wide v7, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    move-object/from16 v32, v10

    move-object/from16 v31, v11

    iget-wide v10, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move-object/from16 v33, v15

    iget-wide v14, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    move-object/from16 v34, v5

    iget v5, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    move-object/from16 v19, v6

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-wide/from16 v24, v7

    move-wide/from16 v26, v10

    move-wide/from16 v28, v14

    move/from16 v30, v5

    invoke-virtual/range {v19 .. v30}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJI)Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 233
    iget v3, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v4, v3, 0x8

    if-lez v4, :cond_f

    .line 234
    iget v4, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    :cond_f
    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_11

    .line 238
    iget v3, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    goto :goto_7

    :cond_10
    :goto_5
    move-object/from16 v32, v3

    move/from16 p2, v4

    move-object/from16 v34, v5

    move-object/from16 v18, v7

    move/from16 v17, v8

    move-object/from16 v31, v9

    move-object/from16 v33, v10

    move-object/from16 v16, v11

    :goto_6
    move-object v9, v6

    :cond_11
    :goto_7
    move/from16 v4, p2

    move-object v6, v9

    move-object/from16 v11, v16

    move/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v9, v31

    move-object/from16 v3, v32

    move-object/from16 v10, v33

    move-object/from16 v5, v34

    goto/16 :goto_0

    :cond_12
    move-object v9, v6

    move-object/from16 v33, v10

    move v7, v15

    const/4 v14, 0x0

    .line 242
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_19

    .line 244
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/android/server/chimera/ChimeraAppClassifier;->prepare(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 245
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-virtual {v3, v9}, Lcom/android/server/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 249
    iget-wide v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iput-wide v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 250
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v5

    .line 251
    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    iget-object v9, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v10

    iget v11, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v8, v9, v5, v10, v11}, Lcom/android/server/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v5

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 252
    invoke-static {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_14

    .line 255
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 257
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 258
    iget v6, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    sget-object v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 259
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 265
    :cond_14
    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->isInfoNotFeteched()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->isInProtectedGroup()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_b

    .line 273
    :cond_15
    iget-object v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 274
    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    iget v9, v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 275
    iget v5, v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    sget-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    move v5, v7

    goto :goto_a

    :cond_17
    move v5, v14

    :goto_a
    if-nez v5, :cond_13

    .line 282
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 266
    :cond_18
    :goto_b
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 267
    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    sget-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_c

    :cond_19
    const/4 v3, 0x0

    .line 287
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 290
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v33

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 291
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    move-object/from16 v33, v6

    goto :goto_d

    .line 295
    :cond_1c
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v3
.end method

.method public getAppsToReclaim()Ljava/util/List;
    .locals 4

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppsToReclaim(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChimeraAppManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final isThirdPartyApp(I)Z
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p0, p1}, Lcom/android/server/chimera/SystemRepository;->isApp(I)Z

    move-result p0

    return p0
.end method

.method public final persistentApp(I)Z
    .locals 0

    .line 0
    const/16 p0, -0x2bc

    if-eq p1, p0, :cond_1

    const/16 p0, -0x320

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final samsungApp(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.sec"

    .line 593
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
