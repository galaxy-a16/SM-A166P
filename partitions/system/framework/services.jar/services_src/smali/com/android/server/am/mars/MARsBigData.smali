.class public Lcom/android/server/am/mars/MARsBigData;
.super Ljava/lang/Object;
.source "MARsBigData.java"


# static fields
.field public static sInstance:Lcom/android/server/am/mars/MARsBigData;


# instance fields
.field public final COMPONENT:Ljava/lang/String;

.field public PLEVdata:Ljava/lang/String;

.field public final PROCESS_STATS_FORMAT:[I

.field public final VER:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mHQM:Landroid/os/SemHqmManager;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mSinglePidStatsData:[J


# direct methods
.method public static bridge synthetic -$$Nest$msendBigDataInfoPLEV(Lcom/android/server/am/mars/MARsBigData;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->sendBigDataInfoPLEV()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    const-string v1, "Sluggish"

    .line 58
    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData;->COMPONENT:Ljava/lang/String;

    const-string v1, "1.0"

    .line 60
    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData;->VER:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [J

    .line 61
    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData;->mSinglePidStatsData:[J

    const/16 v1, 0xf

    new-array v1, v1, [I

    .line 62
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData;->PROCESS_STATS_FORMAT:[I

    .line 193
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 349
    new-instance v0, Lcom/android/server/am/mars/MARsBigData$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/MARsBigData$1;-><init>(Lcom/android/server/am/mars/MARsBigData;)V

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData;->mContext:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    if-nez v0, :cond_0

    const-string v0, "HqmManagerService"

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    .line 101
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 102
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/android/server/am/mars/MARsBigData;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.permission.HQM_NOTIFICATION_PERMISSION"

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/mars/MARsBigData;
    .locals 1

    .line 88
    sget-object v0, Lcom/android/server/am/mars/MARsBigData;->sInstance:Lcom/android/server/am/mars/MARsBigData;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/server/am/mars/MARsBigData;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/MARsBigData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/mars/MARsBigData;->sInstance:Lcom/android/server/am/mars/MARsBigData;

    .line 91
    :cond_0
    sget-object p0, Lcom/android/server/am/mars/MARsBigData;->sInstance:Lcom/android/server/am/mars/MARsBigData;

    return-object p0
.end method


# virtual methods
.method public final sendBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 299
    iget-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "Sluggish"

    const-string/jumbo v4, "ph"

    const-string v5, "1.0"

    const-string/jumbo v6, "sec"

    const-string v7, ""

    const-string v9, ""

    move-object v3, p1

    move-object v8, p2

    .line 303
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final sendBigDataInfoPLEV()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "PLEV"

    .line 294
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendBigDataInfoToHQM()V
    .locals 2

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->updateBigdataInfo()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 112
    new-instance v0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>(Lcom/android/server/am/mars/MARsBigData;Lcom/android/server/am/mars/MARsBigData$UsageInfo-IA;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->sendBigDataInfoPLEV()V

    return-void
.end method

.method public sendFGSTypeBigData()V
    .locals 6

    .line 325
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 326
    invoke-static {}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getInstance()Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 329
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/ForegroundServiceRecord;

    :try_start_0
    const-string v3, "PKGN"

    .line 333
    invoke-virtual {v2}, Lcom/android/server/am/mars/ForegroundServiceRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "UID"

    const/4 v5, 0x0

    .line 334
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "NUSD"

    .line 335
    invoke-virtual {v2}, Lcom/android/server/am/mars/ForegroundServiceRecord;->getFGSType()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "BUSE"

    .line 336
    invoke-virtual {v2}, Lcom/android/server/am/mars/ForegroundServiceRecord;->getUsingFGSType()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 338
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FGSN"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getInstance()Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->clearMap()V

    return-void
.end method

.method public sendFalconBigData(Lcom/android/server/am/MARsPackageInfo;)V
    .locals 7

    .line 307
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "PKGN"

    .line 310
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "UID"

    .line 311
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "NUSD"

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    div-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "BUSE"

    .line 314
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getBatteryUsage()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 316
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 319
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FGSN"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateBigdataInfo()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v3, 0x0

    const/4 v1, 0x4

    new-array v5, v1, [Lcom/android/server/am/mars/MARsBigData$LevelInfo;

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    .line 253
    new-instance v8, Lcom/android/server/am/mars/MARsBigData$LevelInfo;

    invoke-direct {v8, v0}, Lcom/android/server/am/mars/MARsBigData$LevelInfo;-><init>(Lcom/android/server/am/mars/MARsBigData;)V

    aput-object v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    .line 257
    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsTargetPkgMap()Lcom/android/server/am/MARsPkgMap;

    move-result-object v4

    .line 259
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v8

    .line 260
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v9

    move v10, v2

    .line 261
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 262
    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    move v12, v2

    .line 263
    :goto_2
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 264
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/MARsPackageInfo;

    .line 265
    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_4

    if-eq v14, v15, :cond_4

    const/4 v7, 0x2

    if-eq v14, v7, :cond_3

    const/4 v6, 0x3

    if-eq v14, v6, :cond_2

    if-ne v14, v1, :cond_1

    aget-object v6, v5, v6

    .line 277
    iget v7, v6, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v7, v15

    iput v7, v6, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    goto :goto_3

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-object v6, v5, v7

    .line 274
    iget v7, v6, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v7, v15

    iput v7, v6, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    goto :goto_3

    :cond_3
    aget-object v6, v5, v15

    .line 271
    iget v7, v6, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v7, v15

    iput v7, v6, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    goto :goto_3

    :cond_4
    aget-object v6, v5, v2

    .line 268
    iget v7, v6, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v7, v15

    iput v7, v6, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 284
    :cond_6
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    new-instance v10, Lcom/android/server/am/mars/MARsBigData$UsageInfo;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>(Lcom/android/server/am/mars/MARsBigData;Ljava/lang/String;Ljava/lang/String;[Lcom/android/server/am/mars/MARsBigData$LevelInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/mars/MARsBigData$UsageInfo-IA;)V

    .line 289
    invoke-virtual {v10}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v0

    .line 284
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
