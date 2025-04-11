.class Lcom/android/server/powerstats/PowerStatsService$Injector;
.super Ljava/lang/Object;
.source "PowerStatsService.java"


# instance fields
.field public mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBatteryTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/BatteryTrigger;
    .locals 1

    .line 150
    new-instance p0, Lcom/android/server/powerstats/BatteryTrigger;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/powerstats/BatteryTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V

    return-object p0
.end method

.method public createDataStoragePath()Ljava/io/File;
    .locals 2

    .line 96
    new-instance p0, Ljava/io/File;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "powerstats"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public createMeterCacheFilename()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "meterCache"

    return-object p0
.end method

.method public createMeterFilename()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "log.powerstats.meter.0"

    return-object p0
.end method

.method public createModelCacheFilename()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "modelCache"

    return-object p0
.end method

.method public createModelFilename()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "log.powerstats.model.0"

    return-object p0
.end method

.method public createPowerStatsLogger(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)Lcom/android/server/powerstats/PowerStatsLogger;
    .locals 12

    .line 142
    new-instance v11, Lcom/android/server/powerstats/PowerStatsLogger;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/powerstats/PowerStatsLogger;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V

    return-object v11
.end method

.method public createResidencyCacheFilename()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "residencyCache"

    return-object p0
.end method

.method public createResidencyFilename()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "log.powerstats.residency.0"

    return-object p0
.end method

.method public createStatsPullerImpl(Landroid/content/Context;Landroid/power/PowerStatsInternal;)Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;
    .locals 0

    .line 159
    new-instance p0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;-><init>(Landroid/content/Context;Landroid/power/PowerStatsInternal;)V

    return-object p0
.end method

.method public createTimerTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/TimerTrigger;
    .locals 1

    .line 154
    new-instance p0, Lcom/android/server/powerstats/TimerTrigger;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/powerstats/TimerTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V

    return-object p0
.end method

.method public getPowerStatsHALWrapperImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 1

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->getPowerStatsHalImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
