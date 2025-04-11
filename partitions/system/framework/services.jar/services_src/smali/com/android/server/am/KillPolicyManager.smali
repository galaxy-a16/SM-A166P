.class public Lcom/android/server/am/KillPolicyManager;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# static fields
.field public static DEBUG_SCPM:Z

.field public static KPM_BTIME_ENABLE:Z

.field public static KPM_DEBUG:Z

.field public static KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z

.field public static KPM_POLICY_ENABLE:Z

.field public static MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

.field public static MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

.field public static MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

.field public static final RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

.field public static final SWAPPINESS:[I

.field public static mIsChimeraPmmKillTriggered:Z

.field public static resumeSkipPackage:Ljava/util/ArrayList;

.field public static sCompactTriggerSize:I

.field public static sMinTriggerSize:I

.field public static sNativeFloodRatio:I

.field public static sNeverCollectWithin:I

.field public static sPolicyTrigger:I

.field public static sSyspersFloodRatio:I

.field public static sWarmUpCycles:I

.field public static sWarmUpTrigger:I


# instance fields
.field public final INDEX_2ND_PREV_PROCESS:I

.field public final INDEX_CURRENT_PROCESS:I

.field public final INDEX_PREV_PROCESS:I

.field public final KPM_RAW_BIGDATA_MAX_LEN:I

.field public final KPM_RAW_POLICY_MAX_LEN:I

.field public final PREV_PROCESS_LIST_MAX:I

.field public final SCPM_URI_KPM:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppLaunchCount:J

.field public mBigdataIndex:I

.field public mBigdataMetric:I

.field public mContext:Landroid/content/Context;

.field public mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

.field public mDisplaySizeStr:Ljava/lang/String;

.field public mHasPsiCpuPermission:Z

.field public mHasPsiIoPermission:Z

.field public mHasPsiMemoryPermission:Z

.field public mHqmManager:Landroid/os/SemHqmManager;

.field public final mIdleModeReceiver:Landroid/content/BroadcastReceiver;

.field public mIsFirstAppLaunch:Z

.field public final mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public final mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public mKpmStartTime:J

.field public mLastAwakeRealTimeMillis:J

.field public mLastAwakeUpTimeMillis:J

.field public mLastIdleEnterRealTimeMillis:J

.field public mLastIdleExitRealTimeMillis:J

.field public mLastIdleExitUpTimeMillis:J

.field public mLastIdleRealTimeMillis:J

.field public final mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

.field public mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

.field public mNumberOfStay:J

.field public mPlatformStartUpTimeMillis:J

.field public mPolicyIndex:I

.field public mPolicyMetric:I

.field public mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public mPrevPackage:Ljava/lang/String;

.field public mPrevProcessList:Ljava/util/ArrayList;

.field public mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

.field public mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

.field public final mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

.field public mTotalMem:I

.field public mTotalSwap:I

.field public mTrigger:I

.field public mVmStats:Ljava/util/HashMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/KillPolicyManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentState(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)[Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKpmStartTime(Lcom/android/server/am/KillPolicyManager;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastAwakeRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastAwakeUpTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastIdleEnterRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastIdleExitRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastIdleExitUpTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastIdleRealTimeMillis(Lcom/android/server/am/KillPolicyManager;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLmkdReader(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCountReader;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMemoryFloodDetector(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyMetric(Lcom/android/server/am/KillPolicyManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyState(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrevPackage(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessHeavyMemory(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalMem(Lcom/android/server/am/KillPolicyManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalSwap(Lcom/android/server/am/KillPolicyManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastAwakeRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastAwakeUpTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastIdleEnterRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastIdleExitRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastIdleExitUpTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastIdleRealTimeMillis(Lcom/android/server/am/KillPolicyManager;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcalcKilledPackageRatio(Lcom/android/server/am/KillPolicyManager;II)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager;->calcKilledPackageRatio(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misCriticalKilledManyPakages(Lcom/android/server/am/KillPolicyManager;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->isCriticalKilledManyPakages(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreportMemCriticalLow(Lcom/android/server/am/KillPolicyManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->reportMemCriticalLow(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->reportResetState(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE()Ljava/time/temporal/ValueRange;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANGE_AUTO_RESTART_MIN_TRIGGER_SIZE()Ljava/time/temporal/ValueRange;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO()Ljava/time/temporal/ValueRange;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN()Ljava/time/temporal/ValueRange;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO()Ljava/time/temporal/ValueRange;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmIsChimeraPmmKillTriggered()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsCompactTriggerSize()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsMinTriggerSize()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsNativeFloodRatio()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsNeverCollectWithin()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsSyspersFloodRatio()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputmIsChimeraPmmKillTriggered(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsCompactTriggerSize(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsMinTriggerSize(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsNativeFloodRatio(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsNeverCollectWithin(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsSyspersFloodRatio(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x82

    const/16 v1, 0x91

    const/16 v2, 0x64

    .line 116
    filled-new-array {v2, v2, v0, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    const-string/jumbo v0, "ro.slmk.kpm_policy_enable"

    const-string/jumbo v1, "true"

    .line 130
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    const/4 v0, 0x0

    .line 131
    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string/jumbo v3, "ro.slmk.kpm_warm_up_trigger"

    const-string v4, "20"

    .line 132
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    const/16 v3, 0x32

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ro.slmk.kpm_policy_trigger"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    const-string/jumbo v3, "ro.slmk.kpm_warm_up_cycles"

    const-string v4, "3"

    .line 135
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    const-string/jumbo v3, "ro.slmk.kpm_boot_enable"

    .line 137
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const/4 v3, 0x1

    .line 139
    sput-boolean v3, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    const-string/jumbo v4, "ro.slmk.kpm_use_cri_pkg_ratio"

    .line 144
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    .line 148
    sput v2, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 150
    sput v2, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 160
    sput-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x64

    .line 180
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    .line 181
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x3e8

    .line 182
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    const-wide/16 v1, 0x0

    .line 183
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    .line 184
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    const/16 v1, 0xa

    .line 187
    sput v1, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    const/16 v1, 0xc

    .line 188
    sput v1, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    const/16 v1, 0x12c

    .line 189
    sput v1, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    const/16 v1, 0x1e

    .line 190
    sput v1, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    .line 191
    sput v1, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    .line 241
    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/kpm"

    .line 151
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_KPM:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    .line 152
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 153
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    const/4 v0, 0x5

    .line 155
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->PREV_PROCESS_LIST_MAX:I

    const/4 v0, 0x1

    .line 156
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->INDEX_CURRENT_PROCESS:I

    const/4 v1, 0x2

    .line 157
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->INDEX_PREV_PROCESS:I

    const/4 v1, 0x3

    .line 158
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->INDEX_2ND_PREV_PROCESS:I

    const/16 v1, 0x18

    .line 162
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->KPM_RAW_POLICY_MAX_LEN:I

    const/16 v2, 0x1e

    .line 163
    iput v2, p0, Lcom/android/server/am/KillPolicyManager;->KPM_RAW_BIGDATA_MAX_LEN:I

    new-array v1, v1, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 164
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    new-array v1, v2, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 165
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 204
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 205
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 206
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    const-string v1, ""

    .line 222
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    const/4 v1, 0x0

    .line 223
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 228
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    .line 233
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    .line 234
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    .line 236
    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 238
    new-instance v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-direct {v0}, Lcom/android/server/am/KillPolicyManager$SwappinessController;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 240
    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mPlatformStartUpTimeMillis:J

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    const-wide/16 v0, 0x0

    .line 249
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    .line 250
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    .line 251
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    .line 255
    new-instance v0, Lcom/android/server/am/KillPolicyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$1;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mIdleModeReceiver:Landroid/content/BroadcastReceiver;

    const-string p0, "ActivityManager_kpm"

    const-string v0, "KillPolicyManager()"

    .line 345
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getCriticalLowPackageKillRatioTH()I
    .locals 1

    .line 368
    sget v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    return v0
.end method

.method public static getCriticalLowProcessKillRatioTH()I
    .locals 1

    .line 364
    sget v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    return v0
.end method

.method public static getInstance()Lcom/android/server/am/KillPolicyManager;
    .locals 1

    .line 360
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->INSTANCE:Lcom/android/server/am/KillPolicyManager;

    return-object v0
.end method

.method public static getMemInfo()Ljava/util/HashMap;
    .locals 1

    const-string v0, "/proc/meminfo"

    .line 819
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    .line 827
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 828
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 829
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 830
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 831
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "[ :]+"

    .line 832
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 834
    array-length v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    .line 836
    :try_start_3
    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 841
    :catch_0
    :cond_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 843
    :cond_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 828
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_8
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception p0

    .line 848
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception p0

    .line 846
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p0

    .line 844
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public static getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;
    .locals 6

    const-string v0, "Exception"

    const-string v1, "ActivityManager"

    const-string v2, ""

    const/4 v3, 0x0

    .line 3699
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$PsiFileType;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3702
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    .line 3713
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 3715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3706
    :cond_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 3709
    :goto_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPsiFile Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_1

    .line 3713
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 3715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 3720
    :cond_1
    :goto_3
    new-instance p0, Lcom/android/server/am/KillPolicyManager$PsiFile;

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/KillPolicyManager$PsiFile;-><init>(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$PsiDataType;)V

    return-object p0

    :goto_4
    if-eqz v3, :cond_2

    .line 3713
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 3715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    :cond_2
    :goto_5
    throw p0
.end method

.method public static getVmStat()Ljava/util/HashMap;
    .locals 1

    const-string v0, "/proc/vmstat"

    .line 823
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static isDetectCritcialLowEnabled()Z
    .locals 2

    const/4 v0, 0x1

    .line 354
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.kpm_cri_mem_detect"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z

    return v0
.end method

.method public static isKPMEnabled()Z
    .locals 1

    .line 349
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isPmmEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addPrevProcessList(Ljava/lang/String;)V
    .locals 4

    .line 972
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 973
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    .line 975
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 977
    :cond_0
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_1

    .line 978
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    const-string p1, "ActivityManager_kpm"

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idx["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] Process name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 981
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public applyPolicy()V
    .locals 6

    .line 1280
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 1281
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x18

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    add-int/lit8 v3, v3, -0x2

    rem-int/lit8 v3, v3, 0x18

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1282
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    add-int/lit8 v3, v3, -0x3

    rem-int/lit8 v3, v3, 0x18

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1283
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    sub-int/2addr v3, v1

    rem-int/lit8 v3, v3, 0x18

    aget-object v1, v2, v3

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1284
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    .line 1285
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->onPolicyScoreUpdated(F)V

    .line 1287
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    aget-object v0, v1, v0

    .line 1289
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_0

    .line 1290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", eval policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager_kpm"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v1, v0, :cond_1

    .line 1294
    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    :cond_1
    return-void
.end method

.method public final calcKilledPackageRatio(II)I
    .locals 2

    .line 0
    if-lez p2, :cond_0

    int-to-double p0, p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    int-to-double v0, p2

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public calculateKpmStats(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1193
    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    if-nez v0, :cond_0

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->newKpmRawPolicy()V

    .line 1195
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->newKpmRawBigdata()V

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->scheduleDailyUserTrendRandomSample()V

    const/4 v0, 0x1

    .line 1198
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    .line 1200
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    .line 1202
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->readLmkdKillCount()V

    .line 1204
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/KillPolicyManager;->updateKpmProcessData(Ljava/lang/String;I)V

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateKpmMemData()V

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateKpmPsiData()V

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateKpmCycleData()V

    .line 1209
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->setPrevPackage(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p0, p2}, Lcom/android/server/am/KillPolicyManager;->addPrevProcessList(Ljava/lang/String;)V

    .line 1212
    invoke-static {}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->getInstance()Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->onMemoryEvent(Landroid/content/Context;Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V

    return-void
.end method

.method public calculateLmkdStatus(I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "] "

    const-string v4, "ActivityManager_kpm"

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v5

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v6

    if-eqz v5, :cond_16

    if-nez v6, :cond_0

    goto/16 :goto_a

    .line 1015
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentProcess()Ljava/lang/String;

    move-result-object v7

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->getPrevProcess()Ljava/lang/String;

    move-result-object v8

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager;->get2ndPrevProcess()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v11, v0

    move v12, v10

    .line 1022
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-ge v12, v0, :cond_3

    .line 1024
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_2

    .line 1026
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->mPid:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-ne v2, v0, :cond_2

    .line 1028
    :try_start_2
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_1

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLruProcessesLOSP() pid["

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v11, v13

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v11, v13

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v11, v13

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1036
    :goto_1
    :try_start_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catch_3
    move-exception v0

    .line 1041
    :goto_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    if-nez v11, :cond_7

    move v12, v10

    .line 1047
    :goto_4
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    if-ge v12, v0, :cond_6

    .line 1049
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_5

    .line 1051
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->mPid:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    if-ne v2, v0, :cond_5

    .line 1053
    :try_start_6
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_4

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mRemovedProcesses pid["

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    move-object v11, v13

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v11, v13

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v11, v13

    goto :goto_5

    :catch_6
    move-exception v0

    .line 1061
    :goto_5
    :try_start_7
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :catch_7
    move-exception v0

    .line 1066
    :goto_6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_7
    if-nez v11, :cond_7

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateLmkdStatus pid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] but don\'t get process info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1075
    :cond_7
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    .line 1076
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v12

    .line 1077
    sget-boolean v13, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const/16 v14, 0x80

    if-eqz v13, :cond_8

    .line 1078
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v15, "pid["

    .line 1079
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adj["

    .line 1083
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] hasActivities "

    .line 1085
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v2, -0x2710

    if-ne v0, v2, :cond_9

    return-void

    :cond_9
    if-eqz v7, :cond_a

    if-eqz v12, :cond_a

    .line 1093
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1094
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1095
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_14:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1096
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateLmkdStatus currentProcess Killed "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v3, v5, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    iget-object v3, v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_a
    if-eqz v8, :cond_b

    if-eqz v12, :cond_b

    .line 1102
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1103
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1104
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_10:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1105
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1107
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fgetisThreadRunning(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1108
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->clearHeavyList()V

    .line 1109
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-virtual {v2, v5, v6}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->gatherHeavyProcessThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    goto/16 :goto_8

    :cond_b
    if-eqz v9, :cond_c

    if-eqz v12, :cond_c

    .line 1111
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1112
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1113
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_8:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1114
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_8

    :cond_c
    const/16 v2, 0x33e

    if-ge v0, v2, :cond_e

    const/16 v2, 0x32

    if-lt v0, v2, :cond_d

    const/16 v2, 0xfa

    if-gt v0, v2, :cond_d

    .line 1119
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_12:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1120
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_8

    .line 1122
    :cond_d
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_5:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1123
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_8

    :cond_e
    if-eqz v12, :cond_12

    const/16 v3, 0x384

    if-le v0, v3, :cond_f

    .line 1128
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_2:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1129
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_8

    :cond_f
    if-ne v0, v3, :cond_10

    .line 1131
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_3:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1132
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_8

    :cond_10
    if-lt v0, v2, :cond_11

    .line 1134
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_4:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1135
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_8

    .line 1137
    :cond_11
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_6:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1138
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_8

    .line 1141
    :cond_12
    sget-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_1:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v5, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1142
    invoke-static {v6, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    .line 1147
    :cond_13
    :goto_8
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$fgetisThreadRunning(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1148
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->setPeakLmkdKillLevel(I)V

    .line 1151
    :cond_14
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_16

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "kpmRawBigdata lmkdState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "kpmRawBigdata lmkdStateCount ["

    .line 1156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    move-result-object v1

    array-length v2, v1

    :goto_9
    if-ge v10, v2, :cond_15

    aget-object v3, v1, v10

    .line 1158
    iget-object v5, v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-wide v7, v5, v3

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 1159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_15
    const-string v1, "]"

    .line 1161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_a
    return-void
.end method

.method public changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V
    .locals 2

    .line 1300
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_kpm"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1305
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    sget-object v1, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->setValue(I)V

    .line 1306
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->sendKpmStateChangeIntent()V

    return-void
.end method

.method public changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .locals 6

    .line 1237
    iget-object p0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1238
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_0

    .line 1239
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1240
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_0

    .line 1241
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    add-long/2addr v0, v4

    iget p0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    .line 1242
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_0

    .line 1244
    :cond_2
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    :goto_0
    return-object p0
.end method

.method public changeTinyKpmState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .locals 6

    .line 1253
    iget-object p0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1254
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_0

    .line 1255
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1256
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_0

    .line 1257
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleSeedbedKillCount:J

    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    add-long/2addr v0, v4

    iget p0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    iget v4, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    sub-int/2addr p0, v4

    int-to-long v4, p0

    add-long/2addr v0, v4

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    .line 1259
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_0

    .line 1261
    :cond_2
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1263
    :goto_0
    iget v0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    iput v0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1359
    array-length v2, p2

    if-le v2, v1, :cond_1

    .line 1361
    aget-object p1, p2, v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo p2, "leak.dmabuf"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1363
    :cond_0
    invoke-static {}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->getInstance()Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->setTestMode(Z)V

    .line 1364
    invoke-static {}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->getInstance()Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->onMemoryEvent(Landroid/content/Context;Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V

    .line 1366
    invoke-static {}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->getInstance()Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->setTestMode(Z)V

    :goto_0
    return-void

    .line 1374
    :cond_1
    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    .line 1375
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    .line 1384
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const-string v4, " [idx, peakLmkdKillAdj, [procMemInfo], [{native(Pss SwapPss Rss)}{sys}{pers}{persvc}{fore}{vis}{percept}{perceptl}{perceptm}{backup}{heavy}{servicea}{home}{prev}{serviceb}{archived}{picked}{cached}], [Process name, Process version, Package name, Package version, label, pss, swap, rss, procstats_dumpPssUssRss], ...]"

    const-string v5, " [idx,avg_mem,mem_avl,avg_swap,hotCnt,prKillCnt,svKillCnt,PkgCnt,PkgKillCnt,lmkdTotal,lmkdPrev,lmkdService,lmkdPicked,lmkdSeed,lmkdCri,lmk,cachedkill,emptykill,cur_state,next_state,policy_state,psi_cpu_avg,psi_mem_avg,psi_io_avg,psi_cpu_max,psi_mem_max,psi_io_max,reset_status,lmkdState,lmkdStateCnt,lmkdCnt,tiny_nxst_history,time]"

    if-lt v3, v1, :cond_5

    const-string v3, " KPM Stats(policy):"

    .line 1385
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const/16 v6, 0x18

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v7, p2

    move v6, v0

    :goto_1
    const/16 v8, 0x17

    if-ge v6, v3, :cond_3

    .line 1393
    iget-object v9, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v9, v9, v7

    iget v10, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1394
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_2

    move v7, v8

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1399
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v6, " Heavy Pss List(policy):"

    .line 1400
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v0

    :goto_2
    if-ge v6, v3, :cond_5

    .line 1407
    iget-object v7, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v7, v7, p2

    iget v9, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    invoke-virtual {v7, v9}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmHeavyPssData(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1408
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_4

    move p2, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1415
    :cond_5
    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    if-lt p2, v1, :cond_9

    .line 1416
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, " KPM Stats(bigdata):"

    .line 1417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    const/16 v1, 0x1e

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v1, v0

    move v3, v2

    :goto_3
    const/16 v5, 0x1d

    if-ge v1, p2, :cond_7

    .line 1425
    iget-object v6, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v6, v6, v3

    iget v7, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1426
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_6

    move v3, v5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1432
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, " Heavy Pss List(bigdata):"

    .line 1433
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge v0, p2, :cond_9

    .line 1440
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v1, v1, v2

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmHeavyPssData(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1441
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_8

    move v2, v5

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const-string p2, " "

    .line 1448
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " KPM Tunable Parameters:"

    .line 1450
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_POLICY_ENABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_DEBUG_ENABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_CURRENT_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_WARM_UP_TRIGGER_TUNABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_POLICY_TRIGGER_TUNABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_WARM_UP_CYCLES_TUNABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_MEM_CRITICAL_LOW_DETECT_ENABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->isDetectCritcialLowEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " MEMORY_CRITICAL_LOW_KILL_DETECT_ADJ : 700"

    .line 1458
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getCriticalLowProcessKillRatioTH()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getCriticalLowPackageKillRatioTH()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_POLICY_SWAPPINESS_DEFAULT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getDefaultValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_POLICY_SWAPPINESS_CURRENT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "\n KPM Auto Restart Parameters"

    .line 1467
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Min Triggger Size    : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Never Collect Within : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Compact Trigger Size : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Native Flood Ratio   : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Syspers Flood Ratio  : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, ""

    .line 1473
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->dump(Ljava/io/PrintWriter;)V

    .line 1477
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V
    .locals 6

    .line 1488
    iget-object p0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    if-eqz p0, :cond_2

    .line 1491
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getLruWight()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 1492
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getStdBktWeight()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v2, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 1493
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getMemWeight()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "CHWT"

    .line 1495
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1496
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getTriggerCntSrc()[I

    move-result-object p1

    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const-string v1, "CHTC"

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1497
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getTriggerCntSrc()[I

    move-result-object p1

    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    const-string v2, "CLTC"

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1498
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getTriggerCntSrc()[I

    move-result-object p1

    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    const-string v3, "CBTC"

    invoke-virtual {p2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1499
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getActionCntSrc()[I

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "CHAC"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1500
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getActionCntSrc()[I

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "CLAC"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1501
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getActionCntSrc()[I

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "CBAC"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "CKLC"

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getKillCnt()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1504
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 1505
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getAdjKillCnt()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1506
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getAdjKillCnt()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "CKAI"

    .line 1509
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1511
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1512
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getGroupKillCnt()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1513
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraDataInfo;->getGroupKillCnt()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "CKGI"

    .line 1516
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public forceChangeState(Ljava/lang/String;)V
    .locals 2

    .line 1216
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "LIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "HEAVY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "CRITICAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1227
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_1

    .line 1218
    :pswitch_0
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_1

    .line 1221
    :pswitch_1
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_1

    .line 1224
    :pswitch_2
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1230
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    .line 1231
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5cfe9861 -> :sswitch_2
        0x416f8a7 -> :sswitch_1
        0x4513cf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public get2ndPrevProcess()Ljava/lang/String;
    .locals 3

    .line 1001
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 1004
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 1005
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .locals 1

    .line 1174
    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .locals 1

    .line 1167
    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentProcess()Ljava/lang/String;
    .locals 3

    .line 985
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 986
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 988
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 989
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPrevProcess()Ljava/lang/String;
    .locals 3

    .line 993
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 994
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 996
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 997
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProcMemInfo()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;
    .locals 11

    .line 855
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 859
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 860
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 861
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v2

    .line 862
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 863
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 864
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v9, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v9

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 865
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v9

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 866
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getActiveFileSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    .line 867
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getInactiveFileSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    .line 868
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRbinFreeSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    .line 869
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRbinCachedSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    .line 870
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 871
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKReclaimableSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    .line 872
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSReclaimableSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    .line 873
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSUnreclaimSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    .line 874
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKgslShmemUsageSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslShmemUsage:I

    .line 875
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKgslReclaimedSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslReclaimed:I

    .line 876
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSystemSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->system:I

    .line 877
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    .line 878
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKgslSharedMemSizeKb()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslSharedMem:I

    const/16 v3, 0x10

    .line 879
    aget-wide v2, v2, v3

    long-to-double v2, v2

    div-double/2addr v2, v5

    add-double/2addr v2, v7

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    .line 881
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    if-gtz v2, :cond_0

    .line 882
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v5

    add-double/2addr v2, v7

    double-to-int v0, v2

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    :cond_0
    return-object v1
.end method

.method public getProcMemInfoLight()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;
    .locals 10

    .line 798
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 802
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 803
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 804
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 805
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 806
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 807
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 808
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 810
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    if-gtz v2, :cond_0

    .line 811
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v0, v2

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    :cond_0
    return-object v1
.end method

.method public final getSCPMPolicyItemFromDB()V
    .locals 9

    const-string v0, "category"

    const-string v1, "data1"

    const-string/jumbo v2, "item"

    .line 460
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "getSCPMPolicyItemFromDB!!"

    const-string v1, "ActivityManager_kpm"

    .line 462
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_KPM:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 470
    :cond_0
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 471
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 472
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 473
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 474
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const-string/jumbo v6, "kpmEnable"

    .line 476
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "switch"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FALSE"

    .line 477
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v6, "persist.sys.kpm_onoff"

    if-eqz v2, :cond_1

    .line 478
    sput-boolean v0, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    const-string v0, "false"

    .line 479
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v0, "TRUE"

    .line 480
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    sput-boolean v3, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    const-string/jumbo v0, "true"

    .line 482
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_2
    :goto_2
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSCPMPolicyItemFromDB: CATEGORY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SCPM PKG: data1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", KPM ENABLE = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 493
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_4
    const-string p0, "getSCPMPolicyItemFromDB error, no database!!"

    .line 495
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public final hasValidItemFromDB()Z
    .locals 9

    const-string v0, "category"

    const-string v1, "data1"

    const-string/jumbo v2, "item"

    .line 429
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "hasValidItemFromDB!!"

    const-string v1, "ActivityManager_kpm"

    .line 431
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_KPM:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 439
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 441
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const/4 v1, 0x1

    .line 442
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 443
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v3, "switch"

    .line 444
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "kpmParams"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    .line 450
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    const-string p0, "hasValidItemFromDB error, no database!!"

    .line 452
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public final initCriticalLowKillRatioTH()V
    .locals 1

    .line 628
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    if-lez v0, :cond_0

    .line 629
    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager;->setCriticalKillThreshold(I)V

    .line 630
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager;->setPackageKillThreshold(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x64

    .line 632
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 633
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    :goto_0
    return-void
.end method

.method public initKillPolicyManager(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 2

    const-string p3, "ActivityManager_kpm"

    const-string v0, "initKillPolicyManager()"

    .line 501
    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget-boolean p3, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->isinitKpmClass:Z

    if-nez p3, :cond_0

    .line 503
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 504
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 505
    new-instance p1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 507
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 508
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide p1

    long-to-double p1, p1

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 509
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getRAMsizeGB()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    .line 510
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->initCriticalLowKillRatioTH()V

    const/4 p1, 0x0

    .line 512
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    const-wide/16 p2, 0x0

    .line 513
    iput-wide p2, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    .line 514
    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 515
    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    .line 516
    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    .line 517
    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 518
    sget p1, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    .line 519
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 520
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 521
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmStartTime:J

    .line 523
    iput-wide p2, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 524
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->initSkipPackage()V

    const/4 p1, 0x1

    .line 525
    sput-boolean p1, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->isinitKpmClass:Z

    .line 527
    invoke-static {}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->getInstance()Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final initSkipPackage()V
    .locals 1

    .line 589
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v0, "com.sec.android.app.launcher"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v0, "com.google.android.permissioncontroller"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v0, "com.samsung.android.MtpApplication"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isCriticalKilledManyPakages(I)Z
    .locals 0

    .line 640
    sget p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKpmSafe(Ljava/lang/String;)Z
    .locals 3

    .line 960
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v1, v0

    .line 965
    :cond_0
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_1

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKpmSafe() callingPackage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mPrevPackage : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public final isNeedUpdateSCPMPolicy()Z
    .locals 8

    .line 402
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    const-string v1, "ActivityManager_kpm"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "isNeedUpdateSCPMPolicy"

    .line 403
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "policy list is null"

    .line 408
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 411
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "policyName"

    .line 412
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "policyVersion"

    .line 413
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "kpm"

    .line 414
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , policyVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 421
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0
.end method

.method public final isSCPMAvailable()Z
    .locals 2

    .line 392
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager_kpm"

    const-string/jumbo v1, "isSCPMAvailable"

    .line 393
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.sm.policy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSkipPackage(Ljava/lang/String;)Z
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "android"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    .line 598
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public loggingAppDied(Lcom/android/server/am/ProcessRecord;)V
    .locals 7

    .line 1311
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    .line 1312
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    .line 1313
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v2

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v3

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v4

    if-nez v2, :cond_6

    const/16 v5, 0x384

    if-lt v1, v5, :cond_6

    const/16 v5, 0x3e7

    if-gt v1, v5, :cond_6

    const/16 v5, 0x10

    if-eq v0, v5, :cond_4

    const/16 v5, 0x12

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x11

    if-ne v0, v5, :cond_2

    if-eqz v3, :cond_1

    .line 1327
    iget v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    :cond_1
    if-eqz v4, :cond_6

    .line 1329
    iget v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    goto :goto_1

    :cond_2
    const/16 v5, 0x13

    if-ne v0, v5, :cond_6

    if-eqz v3, :cond_3

    .line 1332
    iget v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    :cond_3
    if-eqz v4, :cond_6

    .line 1334
    iget v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    .line 1322
    iget v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    :cond_5
    if-eqz v4, :cond_6

    .line 1324
    iget v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 1339
    :cond_6
    :goto_1
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v4, :cond_9

    if-eqz v3, :cond_7

    .line 1340
    iget v3, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    .line 1341
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez v2, :cond_8

    const-string/jumbo v2, "loggingAppDied Killed Process : "

    .line 1343
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string/jumbo v2, "loggingAppDied KilledByAm Process : "

    .line 1345
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_3
    const-string p0, ", App PID:"

    .line 1346
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", App Name:"

    .line 1347
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", App SetADJ:"

    .line 1348
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", App AdjType:"

    .line 1349
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Current CCH-ACT Count:"

    .line 1350
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Proc State:"

    .line 1351
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "ActivityManager_kpm"

    .line 1352
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public final newKpmRawBigdata()V
    .locals 4

    .line 1187
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    rem-int/lit8 v1, v0, 0x1e

    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1188
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 1189
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    new-instance v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    aput-object v3, v2, v1

    return-void
.end method

.method public final newKpmRawPolicy()V
    .locals 4

    .line 1181
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    rem-int/lit8 v1, v0, 0x18

    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1182
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 1183
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    new-instance v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    aput-object v3, v2, v1

    return-void
.end method

.method public final reportMemCriticalLow(I)V
    .locals 4

    .line 652
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    .line 653
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "res"

    .line 654
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.lool"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 660
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "memory Critical Low intent RESULT : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportMemInfo()V
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "MemFree"

    const-string v2, "MemAvailable"

    const-string v3, "Cached"

    const-string v4, "Active(file)"

    const-string v5, "Inactive(file)"

    const-string v6, "RbinFree"

    const-string v7, "RbinCached"

    const-string v8, "SwapTotal"

    const-string v9, "SwapFree"

    const-string v10, "KReclaimable"

    const-string v11, "SReclaimable"

    const-string v12, "SUnreclaim"

    const-string v13, "KgslShmemUsage"

    const-string v14, "KgslReclaimed"

    const-string/jumbo v15, "system"

    const-string/jumbo v16, "zram0"

    const-string v17, "KgslSharedmem"

    const-string v18, "PageTables"

    const-string v19, "VmallocUsed"

    const-string v20, "Active(anon)"

    const-string v21, "Inactive(anon)"

    const-string v22, "Mapped"

    const-string v23, "AnonPages"

    const-string v24, "Shmem"

    .line 1549
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "workingset_refault_anon"

    const-string/jumbo v3, "workingset_refault_file"

    const-string/jumbo v4, "pgpgin"

    const-string/jumbo v5, "pgpgout"

    const-string/jumbo v6, "pswpin"

    const-string/jumbo v7, "pswpout"

    const-string v8, "allocstall_normal"

    const-string v9, "allocstall_movable"

    const-string/jumbo v10, "pgfault"

    const-string/jumbo v11, "pgmajfault"

    const-string/jumbo v12, "pgsteal_kswapd"

    const-string/jumbo v13, "pgsteal_direct"

    const-string/jumbo v14, "pgscan_kswapd"

    const-string/jumbo v15, "pgscan_direct"

    const-string/jumbo v16, "oom_kill"

    const-string v17, "cma_alloc_fail"

    .line 1574
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1593
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "TYPE"

    const/4 v6, 0x4

    .line 1594
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "KVER"

    const-string v6, "3.1"

    .line 1595
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "DRAM"

    .line 1596
    iget v6, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    mul-int/lit16 v6, v6, 0x400

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SWPT"

    .line 1597
    iget v6, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1599
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1600
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getMemInfo()Ljava/util/HashMap;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/16 v9, 0x18

    if-ge v8, v9, :cond_1

    .line 1601
    aget-object v9, v1, v8

    .line 1602
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1603
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_1

    .line 1606
    :cond_0
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "PMI"

    .line 1609
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1611
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1612
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getVmStat()Ljava/util/HashMap;

    move-result-object v5

    :goto_2
    const/16 v6, 0x10

    if-ge v7, v6, :cond_4

    .line 1614
    aget-object v6, v2, v7

    .line 1616
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_2

    .line 1617
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_3

    :cond_2
    move-wide v11, v9

    .line 1621
    :goto_3
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1622
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v9, v8, v11

    .line 1624
    :cond_3
    invoke-virtual {v1, v9, v10}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const-string v2, "VMSTAT"

    .line 1626
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1627
    iput-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    .line 1629
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1630
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v1, "ActivityManager_kpm"

    const-string v2, "failed to create the KPUT"

    .line 1632
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :goto_4
    const-string v2, "KPUT"

    .line 1635
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportResetState(Ljava/lang/String;)V
    .locals 5

    .line 664
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    .line 665
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.lool"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "resetType"

    .line 669
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "nativeStart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "nativeEnd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "sysPersStart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "sysPersEnd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "pmmCyclePlatform"

    .line 674
    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    iget v1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget v2, v2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    add-int/2addr v1, v2

    const-string/jumbo v2, "pmmCycleKernel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mPlatformStartUpTimeMillis:J

    sub-long/2addr v1, v3

    const-string/jumbo v3, "uptimeSystemBoot"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 678
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 680
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportResetState : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "ActivityManager_kpm"

    if-nez v1, :cond_0

    const-string v0, "data is null"

    .line 1644
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1646
    :cond_0
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    if-nez v3, :cond_1

    const-string/jumbo v0, "it has \'zero\' samples."

    .line 1647
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1652
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "TYPE"

    move/from16 v6, p1

    .line 1654
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "CRST"

    .line 1657
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "NXST"

    .line 1658
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "PLST"

    .line 1659
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "DRAM"

    .line 1663
    iget v6, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    mul-int/lit16 v6, v6, 0x400

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SWPT"

    .line 1664
    iget v6, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "FCMA"

    .line 1666
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    int-to-double v6, v6

    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "AVMA"

    .line 1668
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SWUA"

    .line 1669
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "DISP"

    .line 1672
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "PCKC"

    .line 1675
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "PCKA"

    .line 1676
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SDBC"

    .line 1678
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "CCHC"

    .line 1680
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "CCHA"

    .line 1681
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    int-to-double v6, v6

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "LNCT"

    .line 1683
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 1684
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 1685
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 1683
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "LPKC"

    .line 1687
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "PKPC"

    .line 1688
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SKSC"

    .line 1689
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "SKPC"

    .line 1690
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "VFAK"

    .line 1692
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "HPAK"

    .line 1693
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "PRAK"

    .line 1694
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "SRVK"

    .line 1695
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "PCKK"

    .line 1696
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "SBAK"

    .line 1697
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "CHMK"

    .line 1698
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v6, v6, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "CHEK"

    .line 1700
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "CHNK"

    .line 1701
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "CACK"

    .line 1702
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "APPC"

    .line 1705
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "MEDK"

    .line 1707
    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "CRIK"

    .line 1708
    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "LMKK"

    .line 1709
    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1711
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    if-eqz v5, :cond_2

    const-string v5, "SWPN"

    .line 1712
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1715
    :cond_2
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1717
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_8

    .line 1718
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v14, v6

    move v15, v12

    :goto_0
    const-wide/16 v16, 0x0

    if-ge v15, v14, :cond_4

    aget-object v3, v6, v15

    .line 1721
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1722
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 1723
    aget-wide v16, v3, v12

    aget-wide v18, v3, v13

    add-long v12, v16, v18

    long-to-double v12, v12

    div-double/2addr v12, v10

    add-double/2addr v12, v8

    double-to-long v12, v12

    const/16 v16, 0x3

    .line 1724
    aget-wide v16, v3, v16

    move-wide/from16 v7, v16

    goto :goto_1

    :cond_3
    move-wide/from16 v7, v16

    move-wide v12, v7

    .line 1726
    :goto_1
    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v15, v15, 0x1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_0

    .line 1729
    :cond_4
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 1731
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1732
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    const/4 v12, 0x1

    .line 1733
    aget-wide v13, v9, v12

    long-to-double v12, v13

    div-double/2addr v12, v10

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-long v12, v12

    goto :goto_3

    :cond_5
    move-wide/from16 v12, v16

    .line 1735
    :goto_3
    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1738
    :cond_6
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    .line 1740
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1741
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    const/4 v12, 0x2

    .line 1742
    aget-wide v13, v9, v12

    long-to-double v12, v13

    div-double/2addr v12, v10

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-long v12, v12

    goto :goto_5

    :cond_7
    move-wide/from16 v12, v16

    .line 1744
    :goto_5
    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    const-string v6, "PRST"

    .line 1748
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1750
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1751
    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v9

    div-double/2addr v7, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v12

    double-to-int v7, v7

    .line 1752
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v9

    div-double/2addr v7, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v12

    double-to-int v7, v7

    .line 1753
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    add-double/2addr v7, v12

    double-to-int v7, v7

    .line 1754
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    add-double/2addr v7, v12

    double-to-int v7, v7

    .line 1755
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    add-double/2addr v7, v12

    double-to-int v7, v7

    .line 1756
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v6, "PSIS"

    .line 1758
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1760
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/KillPolicyManager;->fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V

    const-string v5, "STAY"

    .line 1763
    iget-wide v6, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "ELAP"

    .line 1764
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getElapsedTimeMin()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "UPTM"

    .line 1765
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "RSTF"

    .line 1766
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "KVER"

    const-string v6, "3.1"

    .line 1767
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "LS"

    .line 1770
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1771
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1772
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_9

    aget-object v9, v6, v8

    .line 1773
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-wide v12, v12, v9

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    const-string v6, "LSC"

    .line 1774
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1776
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1777
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_a

    aget-object v9, v6, v8

    .line 1778
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-wide v12, v12, v9

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_a
    const-string v6, "LC"

    .line 1779
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1781
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    .line 1782
    :goto_8
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 1783
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v7, 0x5

    if-le v6, v7, :cond_b

    goto :goto_9

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_c
    :goto_9
    const-string v6, "LDI"

    .line 1787
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1789
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1790
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 1791
    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/4 v6, 0x0

    .line 1792
    :goto_a
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    .line 1793
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 1794
    iget-object v8, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1795
    iget-object v8, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v8, :cond_d

    .line 1796
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    .line 1798
    :cond_d
    iget-wide v8, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1800
    :goto_b
    iget-object v8, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v12, v12

    div-double/2addr v12, v10

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 1801
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v12, v12

    div-double/2addr v12, v10

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 1802
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v7, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v12, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v12, v12

    div-double/2addr v12, v10

    add-double/2addr v12, v14

    double-to-int v7, v12

    .line 1803
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_e
    const-string v6, "LHI"

    .line 1806
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1808
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1809
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    if-eqz v6, :cond_f

    .line 1810
    iget v6, v6, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 1811
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 1812
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 1813
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    .line 1814
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    .line 1815
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    .line 1816
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    .line 1817
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 1818
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 1819
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    .line 1820
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    .line 1821
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    .line 1822
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslShmemUsage:I

    .line 1823
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslReclaimed:I

    .line 1824
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->system:I

    .line 1825
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    .line 1826
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslSharedMem:I

    .line 1827
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    .line 1828
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_f
    const-string v6, "PMI"

    .line 1830
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1832
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1833
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    if-eqz v6, :cond_11

    .line 1834
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v7, :cond_11

    aget-object v9, v6, v8

    .line 1835
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1836
    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 1837
    iget-object v12, v0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    aget-wide v12, v9, v3

    long-to-double v12, v12

    div-double/2addr v12, v10

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v12, v12

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 1838
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    aget-wide v14, v9, v13

    long-to-double v13, v14

    div-double/2addr v13, v10

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v15

    double-to-int v13, v13

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 1839
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x2

    aget-wide v14, v9, v13

    long-to-double v14, v14

    div-double/2addr v14, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v9, v14

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_d

    :cond_10
    const/4 v3, 0x0

    const/4 v13, 0x2

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const/4 v9, -0x1

    .line 1841
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    const-string v6, "LHMA"

    .line 1845
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1847
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1848
    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eqz v6, :cond_12

    move v12, v3

    .line 1849
    :goto_e
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    array-length v6, v3

    if-ge v12, v6, :cond_12

    .line 1850
    aget-object v3, v3, v12

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_12
    const-string v1, "TNXST"

    .line 1853
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1855
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1856
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_0
    const/4 v3, 0x0

    :catch_1
    const-string v1, "failed to create the KPUT"

    .line 1858
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :goto_f
    const-string v2, "KPUT"

    .line 1861
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final scheduleDailyUserTrendRandomSample()V
    .locals 11

    .line 532
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    const-string v0, "ActivityManager_kpm"

    if-nez v1, :cond_1

    const-string/jumbo p0, "schedule regist failed \'Alarm get failed\'"

    .line 539
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 543
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 546
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 547
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 549
    sget-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const/4 v5, 0x5

    if-eqz v3, :cond_2

    const/16 v3, 0xc

    .line 550
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    const-wide/32 v5, 0x493e0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 553
    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    const-wide/32 v5, 0x5265c00

    .line 557
    :goto_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Schedule the sample, next trigger time : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.samsung.KPM_USER_TREND_DAILY_SAMPLING"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x4000000

    invoke-static {v0, v4, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 565
    new-instance v3, Lcom/android/server/am/KillPolicyManager$2;

    invoke-direct {v3, p0, v7, v8}, Lcom/android/server/am/KillPolicyManager$2;-><init>(Lcom/android/server/am/KillPolicyManager;J)V

    iput-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    .line 577
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 578
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 580
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 581
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mIdleModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 584
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    move v2, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public declared-synchronized sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    monitor-enter p0

    .line 1521
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v0, :cond_2

    .line 1526
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "ActivityManager_kpm"

    const-string p2, "HQM services is not working"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1527
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    if-eqz p2, :cond_5

    .line 1532
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Sluggish"

    const-string/jumbo v4, "ph"

    const-string v5, "1.1"

    const-string/jumbo v6, "sec"

    const-string v7, ""

    const-string v9, ""

    move-object v3, p1

    move-object v8, p2

    .line 1531
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1533
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_4

    const-string v0, "ActivityManager_kpm"

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to report \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p1, "ActivityManager_kpm"

    const-string p2, "failed to send to server"

    .line 1537
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1541
    :cond_5
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_6

    const-string p1, "ActivityManager_kpm"

    const-string p2, "failed to send to server."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1543
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendKpmStateChangeIntent()V
    .locals 3

    .line 1269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android"

    .line 1270
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.KPM_STATE_CHANGED"

    .line 1271
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "kpm_level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1273
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v2, "kpm_prev_level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast sent: prev state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1275
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cur state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager_kpm"

    .line 1274
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final setCriticalKillThreshold(I)V
    .locals 1

    const-string/jumbo p0, "ro.slmk.kpm_crikill_rate_th"

    const-string v0, "-1"

    .line 602
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    .line 604
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x32

    .line 607
    div-int/2addr p0, p1

    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    :goto_0
    return-void
.end method

.method public final setPackageKillThreshold(I)V
    .locals 1

    const-string/jumbo p0, "ro.slmk.kpm_pkgkill_rate_th"

    const-string v0, "-1"

    .line 612
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    .line 614
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    if-gt p1, p0, :cond_1

    const/16 p0, 0x32

    .line 617
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    if-gt p1, p0, :cond_2

    const/16 p0, 0x19

    .line 619
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    goto :goto_0

    :cond_2
    const/16 p0, 0xd

    .line 621
    sput p0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    :goto_0
    return-void
.end method

.method public setPrevPackage(Ljava/lang/String;)V
    .locals 1

    .line 950
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 951
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_0

    .line 952
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPrevPackage() mPrevPackage : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateKpmBigdata()V
    .locals 3

    .line 684
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->readLmkdKillCount()V

    .line 689
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 690
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateBigdataInfo()V

    .line 692
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 693
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mdumpLmkdCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    const/4 v1, 0x1

    .line 694
    iput-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 696
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    const-string v1, "ChimeraManagerService"

    .line 699
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz v1, :cond_1

    .line 701
    invoke-virtual {v1}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 703
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-static {v1, v2}, Lcom/android/server/chimera/ChimeraDataInfo;->getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 704
    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 708
    :cond_1
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 711
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mclearAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->newKpmRawBigdata()V

    return-void
.end method

.method public updateKpmCycleData()V
    .locals 8

    .line 717
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    sget v2, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    sget v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 718
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 719
    sget v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    :goto_1
    iput v3, p0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    const-string v3, "ActivityManager_kpm"

    if-eqz v2, :cond_2

    .line 721
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    if-eqz v4, :cond_2

    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_2

    .line 722
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v4, v5}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->fillTinyCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 723
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/lit8 v5, v5, 0x5

    sub-int/2addr v5, v1

    rem-int/lit8 v5, v5, 0xa

    invoke-virtual {p0, v2}, Lcom/android/server/am/KillPolicyManager;->changeTinyKpmState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v6

    aput-object v6, v4, v5

    .line 724
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "Tiny KPM New State"

    .line 725
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_b

    .line 729
    iget v4, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget v5, p0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    if-ne v4, v5, :cond_b

    if-eqz v0, :cond_3

    .line 731
    iput-boolean v1, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 733
    :cond_3
    iget-object v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v0, v4}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 734
    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateCycleInfo()V

    .line 736
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 737
    iget-object v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 738
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-ne v0, v4, :cond_4

    .line 739
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 742
    :cond_4
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mdumpLmkdCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 744
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v0, v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 745
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_5

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " KPM State Change. New State: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Previous State: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_5
    iput-boolean v1, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 751
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 754
    :cond_6
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    if-eqz v0, :cond_7

    .line 755
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->applyPolicy()V

    .line 758
    :cond_7
    iget-boolean v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    .line 759
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 762
    :cond_8
    iget-boolean v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    if-nez v0, :cond_9

    .line 763
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    :cond_9
    const-string v0, "ChimeraManagerService"

    .line 767
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz v0, :cond_a

    .line 769
    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 772
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-static {v0, v1}, Lcom/android/server/chimera/ChimeraDataInfo;->getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 773
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 777
    :cond_a
    iget-object v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 780
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mclearAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 782
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->newKpmRawPolicy()V

    :cond_b
    return-void
.end method

.method public updateKpmMemData()V
    .locals 2

    .line 890
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    .line 891
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v1

    .line 893
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getProcMemInfoLight()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0, p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 898
    invoke-virtual {v1, p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    :cond_1
    return-void
.end method

.method public updateKpmProcessData(Ljava/lang/String;I)V
    .locals 1

    .line 787
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    .line 788
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcessStateInfo(Ljava/lang/String;I)V

    :cond_0
    if-eqz p0, :cond_1

    .line 794
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcessStateInfo(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public updateKpmPsiData()V
    .locals 14

    .line 903
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    .line 904
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v7

    .line 907
    iget-boolean v1, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    const-string v2, "ActivityManager"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 908
    sget-object v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;->CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    sget-object v6, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {v1, v6}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v1

    .line 909
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 910
    iput-boolean v3, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    const-string v1, "No permission - psi cpu"

    .line 912
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 914
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getSomeAvg10()D

    move-result-wide v8

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v8, v4

    .line 918
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    if-eqz v1, :cond_3

    .line 919
    sget-object v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;->MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    sget-object v6, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {v1, v6}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v1

    .line 920
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 921
    iput-boolean v3, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    const-string v1, "No permission - psi memory"

    .line 923
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 925
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getSomeAvg10()D

    move-result-wide v10

    goto :goto_3

    :cond_3
    :goto_2
    move-wide v10, v4

    .line 929
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    if-eqz v1, :cond_5

    .line 930
    sget-object v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;->IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    sget-object v6, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {v1, v6}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v1

    .line 931
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 932
    iput-boolean v3, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    const-string p0, "No permission - psi io"

    .line 934
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 936
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getSomeAvg10()D

    move-result-wide v1

    move-wide v12, v1

    goto :goto_5

    :cond_5
    :goto_4
    move-wide v12, v4

    :goto_5
    if-eqz v0, :cond_6

    move-wide v1, v8

    move-wide v3, v10

    move-wide v5, v12

    .line 940
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updatePsiInfo(DDD)V

    :cond_6
    if-eqz v7, :cond_7

    move-object v1, v7

    move-wide v2, v8

    move-wide v4, v10

    move-wide v6, v12

    .line 942
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updatePsiInfo(DDD)V

    :cond_7
    return-void
.end method

.method public updateSCPMParametersFromDB()V
    .locals 2

    .line 378
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    const-string v1, "ActivityManager_kpm"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateSCPMParametersFromDB"

    .line 379
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->getSCPMPolicyItemFromDB()V

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "scpm doesn\'t find the Policy name for kpm"

    .line 387
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
