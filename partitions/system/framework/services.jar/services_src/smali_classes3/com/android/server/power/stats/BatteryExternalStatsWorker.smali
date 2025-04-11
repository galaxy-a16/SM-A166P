.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;


# instance fields
.field public mBatteryLevelSync:Ljava/util/concurrent/Future;

.field public mCurrentFuture:Ljava/util/concurrent/Future;

.field public mCurrentReason:Ljava/lang/String;

.field public mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

.field public mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

.field public final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

.field public mLastCollectionTimeStamp:J

.field public mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field public mOnBattery:Z

.field public mOnBatteryScreenOff:Z

.field public mPerDisplayScreenStates:[I

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public mProcessStateSync:Ljava/util/concurrent/Future;

.field public mScreenState:I

.field public final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mSyncTask:Ljava/lang/Runnable;

.field public mTelephony:Landroid/telephony/TelephonyManager;

.field public final mUidsToRemove:Landroid/util/IntArray;

.field public mUpdateFlags:I

.field public mUseLatestStates:Z

.field public mWakelockChangesUpdate:Ljava/util/concurrent/Future;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWorkerLock:Ljava/lang/Object;

.field public final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$Bt3wgACBtFYeJXR-1zLDPOXzedQ(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GYwYZEOKlZEafChDkNQ7nUaMTC8(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleSyncDueToProcessStateChange$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UPYTnkTIJNOMsXklpme0NRC45qk(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$updateExternalStatsLocked$8(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_JuYan43VPD7-YDui2w7Tp3S-cg(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCleanupDueToRemovedUser$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b7gHtFprNNJfwj3vKH3KAeACvak(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$c3cbdGxjFoSqlfWO-XXBlU1AmBU(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCleanupDueToRemovedUser$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ic2_V0rVX0RMY0n1EJJuh4y9Rq4(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qCYVl1MV6Bb4ycF1gOOvvCrjSVQ(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleSyncDueToBatteryLevelChange$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$qUWqMBt2bqWTSF0Z11iNPQp2mqE(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentReason(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnBattery(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBattery:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnBatteryScreenOff(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPerDisplayScreenStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenState(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mScreenState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidsToRemove(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Landroid/util/IntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateFlags(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseLatestStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWorkerLock(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentFuture(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentReason(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/power/stats/BatteryExternalStatsWorker;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUpdateFlags(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUseLatestStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelSyncDueToBatteryLevelChangeLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateExternalStatsLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;IZZI[IZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 1

    .line 199
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 15

    move-object v0, p0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;-><init>()V

    .line 90
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    .line 105
    iput v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    const/4 v1, 0x0

    .line 108
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 111
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 123
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    const/4 v2, 0x1

    .line 126
    iput-boolean v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 129
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    .line 142
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 144
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 147
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 150
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 155
    new-instance v2, Landroid/os/connectivity/WifiActivityEnergyInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    iput-object v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 163
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 168
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 437
    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 520
    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    move-object/from16 v1, p1

    .line 204
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    move-object/from16 v1, p2

    .line 205
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method

.method public static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x7d0

    .line 820
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 821
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 823
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 825
    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v2, "controller_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    .line 832
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Z

    .line 921
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 923
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/power/stats/EnergyConsumer;

    .line 924
    iget-byte v4, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v4, 0x8

    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x4

    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x7

    aput-boolean v5, v0, v4

    const/16 v4, 0x9

    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_3
    const/4 v4, 0x6

    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_4
    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    const/4 v4, 0x2

    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_5
    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_6
    const/4 v4, 0x5

    aput-boolean v5, v0, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 1

    .line 94
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 95
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "batterystats-worker"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method private synthetic lambda$scheduleCleanupDueToRemovedUser$6(I)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 348
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$scheduleCleanupDueToRemovedUser$7(I)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 356
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$scheduleCpuSyncDueToWakelockChange$2()V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method private synthetic lambda$scheduleCpuSyncDueToWakelockChange$3()V
    .locals 2

    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 288
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$scheduleSyncDueToBatteryLevelChange$4()V
    .locals 2

    const-string v0, "battery-level"

    const/16 v1, 0x7f

    .line 309
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$scheduleSyncDueToProcessStateChange$5(I)V
    .locals 1

    const-string/jumbo v0, "procstate-change"

    .line 327
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static synthetic lambda$updateExternalStatsLocked$8(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2

    .line 559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "controller_activity"

    .line 560
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 561
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V
    .locals 0

    .line 1013
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    return-void

    .line 1015
    :cond_0
    invoke-virtual {p1, p0}, Landroid/util/IntArray;->addAll([I)V

    return-void
.end method

.method public cancelCpuSyncDueToWakelockChange()V
    .locals 2

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 299
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 302
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final cancelSyncDueToBatteryLevelChangeLocked()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 318
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public cancelSyncDueToProcessStateChange()V
    .locals 2

    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 335
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    .line 338
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .locals 29

    move-object/from16 v0, p0

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 840
    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 841
    iget-object v3, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v3

    .line 842
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v5

    .line 843
    iget-object v7, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v7}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v7

    .line 844
    iget-object v9, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v9}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v9

    .line 845
    iget-object v11, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v11}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v11

    .line 847
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v14

    .line 848
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v16

    .line 855
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v17

    sub-long v17, v17, v7

    .line 856
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    .line 857
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 858
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v13, v17, v3

    if-ltz v13, :cond_1

    cmp-long v13, v7, v3

    if-ltz v13, :cond_1

    cmp-long v13, v5, v3

    if-ltz v13, :cond_1

    cmp-long v13, v9, v3

    if-gez v13, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v1

    sub-long/2addr v1, v11

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const/4 v3, 0x0

    move-wide/from16 v25, v1

    move-wide/from16 v21, v5

    move-wide/from16 v19, v7

    move-wide/from16 v23, v9

    goto :goto_2

    .line 865
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v5

    .line 866
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 867
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x2ee

    add-long/2addr v1, v7

    cmp-long v1, v5, v1

    if-gtz v1, :cond_2

    .line 869
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v3

    .line 870
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v1

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v5

    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v7

    .line 873
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v9

    move-wide/from16 v27, v3

    move-wide v3, v5

    move-wide/from16 v5, v27

    goto :goto_1

    :cond_2
    move-wide v1, v3

    move-wide v5, v1

    move-wide v7, v5

    move-wide v9, v7

    :goto_1
    const/4 v11, 0x1

    move-wide/from16 v19, v1

    move-wide/from16 v17, v3

    move-wide/from16 v25, v5

    move-wide/from16 v23, v7

    move-wide/from16 v21, v9

    move v3, v11

    :goto_2
    move-object/from16 v1, p1

    .line 893
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 894
    new-instance v0, Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-object v13, v0

    invoke-direct/range {v13 .. v26}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    if-eqz v3, :cond_3

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryExternalStatsWorker"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public getEnergyConsumersLocked(I)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    .line 977
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 981
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 984
    :cond_1
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 986
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_2
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 989
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_3
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    .line 992
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_4
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 995
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_5
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    .line 998
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_6
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_7

    const/4 p1, 0x7

    .line 1001
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 1004
    :cond_7
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-nez p1, :cond_8

    return-object v1

    .line 1007
    :cond_8
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_0
    return-object v1
.end method

.method public final getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 958
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {p0, p1}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public getLastCollectionTimeStamp()J
    .locals 2

    .line 432
    monitor-enter p0

    .line 433
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 434
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;
    .locals 9

    .line 1021
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1024
    :cond_0
    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1025
    array-length v2, v0

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 1030
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 1032
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1035
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v0, v5

    .line 1037
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v7, :cond_2

    .line 1038
    iget-byte v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-eqz v7, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    .line 1044
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EnergyConsumer \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' has unexpected ordinal "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryExternalStatsWorker"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1049
    :cond_2
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1051
    iget-byte v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/IntArray;

    if-nez v7, :cond_3

    .line 1053
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    .line 1054
    iget-byte v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1056
    :cond_3
    iget v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v7, v6}, Landroid/util/IntArray;->add(I)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1059
    :cond_4
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 1061
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_5

    .line 1063
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1064
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    .line 1065
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-object v1
.end method

.method public scheduleCleanupDueToRemovedUser(I)Ljava/util/concurrent/Future;
    .locals 5

    .line 343
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 353
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    const-wide/16 v3, 0x2710

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 358
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .locals 1

    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    const-string/jumbo p1, "remove-uid"

    const/4 v0, 0x1

    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
    .locals 2

    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 291
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "worker shutdown"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 382
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_1
    return-object p1

    .line 388
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p2, p3, p4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 0

    monitor-enter p0

    .line 257
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
    .locals 2

    .line 307
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 311
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 312
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public scheduleSyncDueToProcessStateChange(IJ)V
    .locals 2

    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    .line 329
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public scheduleSyncDueToScreenStateChange(IZZI[I)Ljava/util/concurrent/Future;
    .locals 1

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 271
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 272
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    const/4 p2, 0x0

    .line 273
    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 276
    :cond_1
    iput p4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mScreenState:I

    .line 277
    iput-object p5, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    const-string/jumbo p2, "screen-state"

    .line 278
    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 279
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "worker shutdown"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    .line 423
    iput p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 424
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 425
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 427
    :cond_1
    iget p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 428
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public declared-synchronized scheduleWrite()Ljava/util/concurrent/Future;
    .locals 2

    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "write"

    const/16 v1, 0x7f

    .line 396
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 399
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemServicesReady()V
    .locals 8

    .line 209
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 210
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 211
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v3, Landroid/power/PowerStatsInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/power/PowerStatsInternal;

    .line 213
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    .line 214
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v4

    .line 215
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 217
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 218
    :try_start_1
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 219
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 220
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v1, Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;-><init>(Landroid/util/SparseArray;)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v6, v7, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 235
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v2, v1, v4}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "BatteryExternalStatsWorker"

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception reading initial getEnergyConsumedAsync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "BatteryExternalStatsWorker"

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeout or interrupt reading initial getEnergyConsumedAsync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->getOtherOrdinalNames()[Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .line 249
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 250
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->initEnergyConsumerStatsLocked([Z[Ljava/lang/String;)V

    .line 251
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    .line 251
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0

    :catchall_1
    move-exception p0

    .line 252
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 215
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method public final updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V
    .locals 39

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 536
    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const-string v4, "BatteryExternalStatsWorker"

    .line 539
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update stats : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumersLocked(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    and-int/lit8 v5, v2, 0x2

    const/4 v15, 0x0

    if-eqz v5, :cond_1

    .line 547
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 548
    new-instance v5, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v7, "wifi"

    invoke-direct {v5, v7}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 549
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v8, Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;

    invoke-direct {v8, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    new-instance v9, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;

    invoke-direct {v9, v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    const-string v7, "BatteryExternalStatsWorker"

    const-string v8, "Fetch WiFi data"

    .line 565
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 567
    :goto_0
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    .line 568
    :try_start_0
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v9, "Update Rail Energy data"

    .line 569
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    monitor-exit v7

    const/4 v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v5, v3

    move v7, v15

    :goto_1
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_2

    .line 576
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 578
    new-instance v9, Landroid/os/SynchronousResultReceiver;

    const-string v10, "bluetooth"

    invoke-direct {v9, v10}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 580
    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;-><init>()V

    new-instance v11, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;

    invoke-direct {v11, v1, v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v8, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v10, "Fetch Bluetooth data"

    .line 603
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object v9, v3

    :goto_2
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_4

    .line 609
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v8, :cond_3

    .line 610
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 611
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;-><init>()V

    new-instance v11, Lcom/android/server/power/stats/BatteryExternalStatsWorker$5;

    invoke-direct {v11, v1, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$5;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v8, v10, v11}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v10, "Fetch modem data"

    .line 626
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v7, :cond_4

    .line 629
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    .line 630
    :try_start_1
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v10, "Update Rail Energy data"

    .line 631
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    monitor-exit v7

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    :goto_3
    and-int/lit8 v16, v2, 0x10

    if-eqz v16, :cond_5

    .line 638
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->fillLowPowerStats()V

    .line 641
    :cond_5
    invoke-static {v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 642
    invoke-static {v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    const-wide/16 v7, 0x7d0

    .line 645
    :try_start_2
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v9}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v25, v0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v9, "BatteryExternalStatsWorker"

    .line 650
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception reading modem stats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v9, "BatteryExternalStatsWorker"

    .line 648
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeout or interrupt reading modem stats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object/from16 v25, v3

    .line 654
    :goto_5
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    if-eqz v0, :cond_7

    if-nez v4, :cond_6

    goto :goto_8

    .line 658
    :cond_6
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    .line 659
    :try_start_3
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v10

    .line 660
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 664
    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    const-string v4, "BatteryExternalStatsWorker"

    .line 670
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception reading getEnergyConsumedAsync: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v4, "BatteryExternalStatsWorker"

    .line 667
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timeout or interrupt reading getEnergyConsumedAsync: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object v0, v3

    .line 674
    :goto_7
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v4, v0, v10}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;

    move-result-object v0

    goto :goto_9

    :catchall_2
    move-exception v0

    .line 660
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_7
    :goto_8
    move-object v0, v3

    .line 677
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    const-wide/16 v7, 0x3e8

    mul-long v10, v12, v7

    .line 683
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v4

    .line 684
    :try_start_6
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-wide v8, v12

    move-object/from16 v26, v4

    move-wide v3, v10

    move-wide/from16 v10, v35

    move-wide/from16 v37, v12

    move/from16 v12, v17

    move-object/from16 v13, p1

    move-object v6, v14

    move/from16 v14, v18

    :try_start_7
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->recordHistoryEventLocked(JJILjava/lang/String;I)V

    if-eqz v0, :cond_8

    .line 690
    invoke-virtual {v0}, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 691
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->isUsageHistoryEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 692
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 693
    invoke-virtual {v8, v0}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->getEnergyConsumerDetails(Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;)Landroid/os/BatteryStats$EnergyConsumerDetails;

    move-result-object v11

    move-object v12, v6

    move-object v6, v7

    move-wide/from16 v7, v37

    move-wide/from16 v9, v35

    .line 692
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->recordEnergyConsumerDetailsLocked(JJLandroid/os/BatteryStats$EnergyConsumerDetails;)V

    goto :goto_a

    :cond_8
    move-object v12, v6

    :goto_a
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_b

    if-eqz p7, :cond_9

    .line 698
    iget-object v6, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v6

    .line 699
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v7

    goto :goto_b

    :cond_9
    move/from16 v6, p3

    move/from16 v7, p4

    :goto_b
    if-nez v0, :cond_a

    const/4 v8, 0x0

    goto :goto_c

    .line 706
    :cond_a
    iget-object v8, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 708
    :goto_c
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v9, v6, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimeLocked(ZZ[J)V

    const-string v6, "BatteryExternalStatsWorker"

    const-string v7, "Update CPU state"

    .line 709
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 v6, 0x7f

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_c

    .line 713
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelWakelocksLocked(J)V

    .line 714
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked(J)V

    const-string v7, "BatteryExternalStatsWorker"

    const-string v8, "Update Kernel wakelock & memory state"

    .line 715
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v16, :cond_d

    .line 719
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRpmStatsLocked(J)V

    const-string v3, "BatteryExternalStatsWorker"

    const-string v4, "Update RPM state"

    .line 720
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-wide/16 v3, -0x1

    if-eqz v0, :cond_10

    .line 725
    iget-object v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    if-eqz v7, :cond_e

    .line 726
    array-length v8, v7

    if-lez v8, :cond_e

    .line 729
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v9, p6

    move-wide/from16 v10, v37

    invoke-virtual {v8, v7, v9, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateDisplayEnergyConsumerStatsLocked([J[IJ)V

    const-string v7, "BatteryExternalStatsWorker"

    const-string v8, "Update energy state (display)"

    .line 731
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_e
    move-wide/from16 v10, v37

    .line 734
    :goto_d
    iget-wide v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_f

    .line 736
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v9, v7, v8, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateGnssEnergyConsumerStatsLocked(JJ)V

    const-string v7, "BatteryExternalStatsWorker"

    const-string v8, "Update energy state (gnss)"

    .line 737
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_f
    iget-wide v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_11

    .line 742
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v9, v7, v8, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCameraEnergyConsumerStatsLocked(JJ)V

    const-string v7, "BatteryExternalStatsWorker"

    const-string v8, "Update energy state (camera)"

    .line 743
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_10
    move-wide/from16 v10, v37

    :cond_11
    :goto_e
    if-eqz v0, :cond_13

    .line 747
    iget-object v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    if-eqz v7, :cond_13

    .line 750
    :goto_f
    iget-object v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    array-length v8, v7

    if-ge v15, v8, :cond_12

    .line 751
    aget-wide v7, v7, v15

    .line 752
    iget-object v9, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aget-object v9, v9, v15

    .line 753
    iget-object v13, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v13, v15, v7, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCustomEnergyConsumerStatsLocked(IJLandroid/util/SparseLongArray;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_12
    const-string v7, "BatteryExternalStatsWorker"

    const-string v8, "Update energy state (others)"

    .line 755
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-eqz v12, :cond_16

    .line 759
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v7

    if-eqz v7, :cond_15

    if-eqz v0, :cond_14

    .line 761
    iget-wide v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    move-wide/from16 v19, v7

    goto :goto_10

    :cond_14
    move-wide/from16 v19, v3

    .line 763
    :goto_10
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    move-wide/from16 v21, v10

    move-wide/from16 v23, v35

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    const-string v7, "BatteryExternalStatsWorker"

    const-string v8, "Update bluetooth state"

    .line 765
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_15
    const-string v7, "BatteryExternalStatsWorker"

    .line 767
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bluetooth info is invalid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_16
    :goto_11
    monitor-exit v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v7, "BatteryExternalStatsWorker"

    const-string/jumbo v8, "mStats lock released"

    .line 771
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_19

    .line 777
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v0, :cond_17

    .line 779
    iget-wide v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    move-wide/from16 v28, v7

    goto :goto_12

    :cond_17
    move-wide/from16 v28, v3

    .line 781
    :goto_12
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v8, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v7, v8}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v34, v7

    check-cast v34, Landroid/app/usage/NetworkStatsManager;

    .line 783
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v27

    move-object/from16 v26, v7

    move-wide/from16 v30, v10

    move-wide/from16 v32, v35

    invoke-virtual/range {v26 .. v34}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    const-string v5, "BatteryExternalStatsWorker"

    const-string v7, "Update wifi state"

    .line 785
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_18
    const-string v7, "BatteryExternalStatsWorker"

    .line 787
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wifi info is invalid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_13
    if-eqz v25, :cond_1b

    if-eqz v0, :cond_1a

    .line 793
    iget-wide v3, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    :cond_1a
    move-wide/from16 v19, v3

    .line 794
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v3, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    .line 796
    iget-object v3, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v17, v3

    move-object/from16 v18, v25

    move-wide/from16 v21, v10

    move-wide/from16 v23, v35

    move-object/from16 v25, v0

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    const-string v0, "BatteryExternalStatsWorker"

    const-string v3, "Update modem state"

    .line 798
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-ne v2, v6, :cond_1c

    .line 803
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->informThatAllExternalStatsAreFlushed()V

    :cond_1c
    const-string v0, "BatteryExternalStatsWorker"

    const-string v1, "done updateExternalStatsLocked"

    .line 805
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3
    move-exception v0

    goto :goto_14

    :catchall_4
    move-exception v0

    move-object/from16 v26, v4

    .line 770
    :goto_14
    :try_start_8
    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method
