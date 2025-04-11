.class public Lcom/android/server/power/stats/BatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "BatteryUsageStatsProvider.java"


# static fields
.field public static sErrorReported:Z


# instance fields
.field public final mBatteryUsageStatsStore:Lcom/android/server/power/stats/BatteryUsageStatsStore;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mPowerCalculators:Ljava/util/List;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public final mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Lcom/android/server/power/stats/BatteryUsageStatsStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;Lcom/android/server/power/stats/BatteryUsageStatsStore;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 62
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mBatteryUsageStatsStore:Lcom/android/server/power/stats/BatteryUsageStatsStore;

    .line 63
    instance-of p3, p2, Lcom/android/server/power/stats/BatteryStatsImpl;

    if-eqz p3, :cond_0

    .line 64
    check-cast p2, Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_0
    new-instance p2, Lcom/android/internal/os/PowerProfile;

    invoke-direct {p2, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method


# virtual methods
.method public final currentTimeMillis()J
    .locals 2

    .line 363
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;

    if-eqz v0, :cond_0

    .line 364
    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 366
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final elapsedRealtime()J
    .locals 2

    .line 347
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;

    if-eqz v0, :cond_0

    .line 348
    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0

    .line 350
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAggregatedBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 11

    .line 303
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 305
    :goto_0
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 307
    invoke-virtual {v3}, Landroid/os/BatteryStats;->isProcessStateDataAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 309
    :goto_1
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v3

    .line 310
    new-instance v4, Landroid/os/BatteryUsageStats$Builder;

    invoke-direct {v4, v3, v0, v1}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZ)V

    .line 312
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mBatteryUsageStatsStore:Lcom/android/server/power/stats/BatteryUsageStatsStore;

    const-string v5, "BatteryUsageStatsProv"

    if-nez v0, :cond_2

    const-string p0, "BatteryUsageStatsStore is unavailable"

    .line 313
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v4}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0

    .line 317
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->listBatteryUsageStatsTimestamps()[J

    move-result-object v0

    .line 318
    array-length v6, v0

    :goto_2
    if-ge v2, v6, :cond_7

    aget-wide v7, v0, v2

    .line 319
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getFromTimestamp()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-lez v9, :cond_6

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getToTimestamp()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-gtz v9, :cond_6

    .line 320
    iget-object v9, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mBatteryUsageStatsStore:Lcom/android/server/power/stats/BatteryUsageStatsStore;

    .line 321
    invoke-virtual {v9, v7, v8}, Lcom/android/server/power/stats/BatteryUsageStatsStore;->loadBatteryUsageStats(J)Landroid/os/BatteryUsageStats;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 326
    :cond_3
    invoke-virtual {v7}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 328
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring older BatteryUsageStats snapshot, which has different custom power components: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v7}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 328
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    .line 334
    invoke-virtual {v7}, Landroid/os/BatteryUsageStats;->isProcessStateDataIncluded()Z

    move-result v8

    if-nez v8, :cond_5

    const-string v7, "Ignoring older BatteryUsageStats snapshot, which  does not include process state data"

    .line 335
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 340
    :cond_5
    invoke-virtual {v4, v7}, Landroid/os/BatteryUsageStats$Builder;->add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 343
    :cond_7
    invoke-virtual {v4}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    monitor-enter v0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .locals 4

    .line 151
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getToTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getCurrentBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getAggregatedBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 131
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 132
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryUsageStatsQuery;

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .locals 20

    move-object/from16 v0, p0

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->uptimeMillis()J

    move-result-wide v5

    mul-long/2addr v3, v5

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v5, :cond_0

    move v5, v14

    goto :goto_0

    :cond_0
    move v5, v13

    .line 166
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 168
    invoke-virtual {v6}, Landroid/os/BatteryStats;->isProcessStateDataAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    move v15, v14

    goto :goto_1

    :cond_1
    move v15, v13

    .line 169
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2

    move v6, v14

    goto :goto_2

    :cond_2
    move v6, v13

    .line 172
    :goto_2
    new-instance v12, Landroid/os/BatteryUsageStats$Builder;

    iget-object v7, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 173
    invoke-virtual {v7}, Landroid/os/BatteryStats;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7, v5, v15}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZ)V

    .line 177
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    move-wide/from16 v7, p2

    .line 178
    invoke-virtual {v12, v7, v8}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 180
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v5

    .line 181
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v14

    :goto_3
    if-ltz v7, :cond_4

    .line 182
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid;

    if-nez v6, :cond_3

    .line 183
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    const/16 v10, 0x442

    if-ne v9, v10, :cond_3

    goto :goto_4

    .line 187
    :cond_3
    invoke-virtual {v12, v8}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(Landroid/os/BatteryStats$Uid;)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v9

    .line 189
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v10

    .line 188
    invoke-virtual {v9, v14, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v9

    .line 191
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v10

    .line 190
    invoke-virtual {v9, v13, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 194
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getPowerComponents()[I

    move-result-object v10

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getPowerCalculators()Ljava/util/List;

    move-result-object v11

    .line 196
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    move v9, v13

    :goto_5
    if-ge v9, v8, :cond_8

    .line 197
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/PowerCalculator;

    if-eqz v10, :cond_7

    move v6, v13

    .line 200
    :goto_6
    array-length v7, v10

    if-ge v6, v7, :cond_6

    .line 201
    aget v7, v10, v6

    invoke-virtual {v5, v7}, Lcom/android/server/power/stats/PowerCalculator;->isPowerComponentSupported(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v14

    goto :goto_7

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    move v6, v13

    :goto_7
    if-nez v6, :cond_7

    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object v13, v12

    goto :goto_8

    .line 210
    :cond_7
    iget-object v7, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    move-object v6, v12

    move/from16 v16, v8

    move/from16 v17, v9

    move-wide v8, v1

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-wide v10, v3

    move-object v13, v12

    move-object/from16 v12, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/power/stats/PowerCalculator;->calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V

    :goto_8
    add-int/lit8 v9, v17, 0x1

    move-object v12, v13

    move/from16 v8, v16

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    move-object v13, v12

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    .line 216
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;

    if-eqz v2, :cond_9

    .line 221
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 222
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->copyHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;)Landroid/os/BatteryUsageStats$Builder;

    goto :goto_9

    .line 217
    :cond_9
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "History cannot be included for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_a
    :goto_9
    invoke-virtual {v13}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v1

    if-eqz v15, :cond_b

    .line 227
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->verify(Landroid/os/BatteryUsageStats;)V

    :cond_b
    return-object v1
.end method

.method public final getPowerCalculators()Ljava/util/List;
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    if-nez v1, :cond_1

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 74
    new-instance v2, Lcom/android/server/power/stats/BatteryChargeCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/BatteryChargeCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/CpuPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/MemoryPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/WakelockPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/MobileRadioPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/WifiPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/BluetoothPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/SensorPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/SensorManager;

    .line 84
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/SensorPowerCalculator;-><init>(Landroid/hardware/SensorManager;)V

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/GnssPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/GnssPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/CameraPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/FlashlightPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/AudioPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/AudioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/VideoPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/VideoPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/PhonePowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/PhonePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/ScreenPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 92
    invoke-virtual {v4}, Landroid/os/BatteryStats;->hasDisplayPowerReporting()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/ScreenPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Z)V

    .line 91
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/IdlePowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/IdlePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/PowerSharingCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/PowerSharingCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/UserPowerCalculator;

    invoke-direct {v2}, Lcom/android/server/power/stats/UserPowerCalculator;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/SystemServicePowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/SystemServicePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    return-object p0

    :catchall_0
    move-exception p0

    .line 104
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 3

    const/4 p0, 0x3

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p1, p0, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v1

    const/4 p0, 0x1

    .line 297
    invoke-virtual {p1, p0, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide p0

    add-long/2addr v1, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v1, p0

    return-wide v1
.end method

.method public final getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 4

    const/4 p0, 0x0

    .line 274
    invoke-virtual {p1, p0, p2, p3, p0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v0

    .line 277
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {v2, p2, p3, p0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 285
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const/4 v2, 0x2

    .line 287
    invoke-virtual {p1, v2, p2, p3, p0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide p0

    add-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    .line 291
    div-long/2addr v0, p0

    return-wide v0
.end method

.method public shouldUpdateStats(Ljava/util/List;J)Z
    .locals 6

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    if-ltz v0, :cond_0

    .line 116
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryUsageStatsQuery;

    .line 117
    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, p2

    cmp-long p0, p0, v2

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final uptimeMillis()J
    .locals 2

    .line 355
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;

    if-eqz v0, :cond_0

    .line 356
    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 358
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final verify(Landroid/os/BatteryUsageStats;)V
    .locals 14

    .line 235
    sget-boolean p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->sErrorReported:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x8

    const/16 v0, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 240
    filled-new-array {v1, p0, v0, v2}, [I

    move-result-object p0

    const/4 v0, 0x3

    const/4 v3, 0x4

    .line 245
    filled-new-array {v1, v2, v0, v3}, [I

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 251
    aget v6, p0, v5

    .line 252
    invoke-virtual {v2, v6}, Landroid/os/UidBatteryConsumer;->getKey(I)Landroid/os/BatteryConsumer$Key;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    move v11, v4

    :goto_1
    if-ge v11, v3, :cond_2

    .line 254
    aget v12, v0, v11

    .line 255
    invoke-virtual {v2, v6, v12}, Landroid/os/UidBatteryConsumer;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v12

    add-double/2addr v9, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    add-double/2addr v11, v7

    cmpl-double v11, v9, v11

    if-lez v11, :cond_4

    .line 258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Sum of states exceeds total. UID = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {v6}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " total = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " states = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 261
    sget-boolean p1, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->sErrorReported:Z

    const-string v0, "BatteryUsageStatsProv"

    if-nez p1, :cond_3

    .line 262
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sput-boolean v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->sErrorReported:Z

    goto :goto_2

    .line 265
    :cond_3
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
