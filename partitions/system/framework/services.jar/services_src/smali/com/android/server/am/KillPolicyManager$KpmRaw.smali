.class public Lcom/android/server/am/KillPolicyManager$KpmRaw;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# instance fields
.field public accMem:I

.field public accSwap:I

.field public appCnt:I

.field public avlMem:I

.field public cachedActTotalCnt:I

.field public cachedClientKillCount:I

.field public cachedEmptyKillCount:I

.field public cachedNormalKillCount:I

.field public cachedTotalCnt:I

.field public chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

.field public coldCount:I

.field public createTime:J

.field public curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public currentCachedActCnt:I

.field public cycleNum:I

.field public dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

.field public dumpHeavyProcessList:Ljava/util/ArrayList;

.field public hotCount:I

.field public hotRatio:I

.field public isDailyBigdata:Z

.field public isGetPssDump:Z

.field public isStateChanged:Z

.field public isWarmUpCycle:Z

.field public killedPackageCount:I

.field public killedPackageRatio:I

.field public lastUpdateTime:J

.field public launchedAndKilledPackageMap:Ljava/util/Map;

.field public launchedPackageCount:I

.field public lmkCnt:J

.field public lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

.field public lmkdCric:J

.field public lmkdCurrentCount:[J

.field public lmkdKilledProcessInfo:Ljava/util/ArrayList;

.field public lmkdMed:J

.field public lmkdPrevCount:[J

.field public lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public lmkdStateCount:[J

.field public maxMem:I

.field public maxSwap:I

.field public minMem:I

.field public minSwap:I

.field public nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public peakLmkdKillAdj:I

.field public pickedActTotalCnt:I

.field public pickedTotalCnt:I

.field public policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public prKilledRatio:I

.field public prevLmkCnt:J

.field public prevLmkdCric:J

.field public prevLmkdMed:J

.field public prevTinyCachedNormalKillCount:I

.field public procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

.field public procsAdjPss:Ljava/util/HashMap;

.field public psiCpuMax:D

.field public psiCpuSum:D

.field public psiIoMax:D

.field public psiIoSum:D

.field public psiMemoryMax:D

.field public psiMemorySum:D

.field public resetStatus:I

.field public seedbedTotalCnt:I

.field public svKilledRatio:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public timeStamp:Ljava/lang/String;

.field public tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

.field public uptimeMillis:J

.field public warmCount:I


# direct methods
.method public static bridge synthetic -$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->checkMemCriticalLowTH()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpLmkdCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpLmkdCount()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->markKilledPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMemoryUsageByAdj(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateMemoryUsageByAdj(Ljava/util/HashMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcAdjPss(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcAdjPss(Ljava/util/HashMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcessHeavyPssList(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/util/ArrayList;Lcom/android/server/am/KillPolicyManager$ProcMemInfo;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcessHeavyPssList(Ljava/util/ArrayList;Lcom/android/server/am/KillPolicyManager$ProcMemInfo;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;I)V
    .locals 6

    .line 2084
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2070
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    .line 2071
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 2072
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2082
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2085
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    const p2, 0x7fffffff

    .line 2086
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    const/4 v0, 0x0

    .line 2087
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    const/high16 v1, -0x80000000

    .line 2088
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 2089
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 2090
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 2091
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 2093
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    .line 2094
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 2095
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 2096
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 2099
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 2100
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 2101
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    .line 2102
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 2103
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    .line 2104
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 2107
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 2108
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 2109
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    .line 2110
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    .line 2111
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 2112
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    const-wide/16 v1, 0x0

    .line 2114
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    .line 2115
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 2116
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 2117
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    .line 2118
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    .line 2119
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 2120
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->initPrevKillInfo()V

    .line 2121
    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmCurrentState(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2122
    sget-object p2, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2123
    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPolicyState(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2124
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 2125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    .line 2126
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    const/4 p2, 0x0

    .line 2127
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 2128
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 2129
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 2130
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 2131
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    const/16 v3, 0x3e9

    .line 2132
    iput v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 2134
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 2136
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 2137
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    .line 2138
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    .line 2139
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    const-wide/16 v3, 0x0

    .line 2141
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 2142
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 2143
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 2145
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 2146
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 2147
    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 2149
    new-instance v3, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v3}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 2151
    sget-object v3, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_0:Lcom/android/server/am/KillPolicyManager$LmkdState;

    iput-object v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    move v3, v0

    .line 2152
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 2153
    aput-wide v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    .line 2154
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 2155
    aput-wide v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2156
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->initLmkdPrevCount()V

    .line 2158
    new-instance v1, Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLmkdReader(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;-><init>(Lcom/android/server/am/KillPolicyManager;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 2159
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 2161
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    .line 2162
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 2163
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 2164
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 2165
    :goto_2
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    array-length p2, p1

    if-ge v0, p2, :cond_2

    .line 2166
    sget-object p2, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final addLaunchedPackage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2471
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2473
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 2474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add addLaunchedPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cur count : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 2475
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    .line 2474
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public calcHotLaunchRatio(III)I
    .locals 2

    .line 0
    add-int/2addr p2, p1

    add-int/2addr p2, p3

    if-lez p2, :cond_0

    int-to-double p0, p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    int-to-double p2, p2

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, p2

    double-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public calcKillRatio(II)I
    .locals 4

    .line 0
    if-lez p1, :cond_0

    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkMemCriticalLowTH()V
    .locals 6

    .line 2337
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 2340
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string v2, "ActivityManager_kpm"

    if-eqz v1, :cond_0

    .line 2341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMemCriticalLowTH() killRatio = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%, killedPackageRatio = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_0
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetMEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH()I

    move-result v1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    .line 2347
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetMEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    invoke-static {v0, v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$misCriticalKilledManyPakages(Lcom/android/server/am/KillPolicyManager;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2349
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "checkMemCriticalLowTH() killRatio is over thrshold but not occurred many apps, so result not accepted"

    .line 2350
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 2356
    :cond_2
    :goto_0
    iput v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    .line 2357
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_3

    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMemCriticalLowTH() memory critical status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->isDetectCritcialLowEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    if-nez v0, :cond_4

    .line 2362
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0, v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportMemCriticalLow(Lcom/android/server/am/KillPolicyManager;I)V

    .line 2365
    :cond_4
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetmIsChimeraPmmKillTriggered()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-ne v0, v1, :cond_7

    .line 2366
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmMemoryFloodDetector(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->calculateMemoryFlood()V

    .line 2368
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmMemoryFloodDetector(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->isRequiredKernelReset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2369
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-string v0, "KERNEL"

    invoke-static {p0, v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V

    goto :goto_1

    .line 2371
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmMemoryFloodDetector(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->isRequiredPlatformReset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2372
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-string v0, "PLATFORM"

    invoke-static {p0, v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final dumpLmkdCount()V
    .locals 12

    .line 2316
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2317
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->getADJ()I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->getLmkdKillCount(II)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2319
    iget-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-wide v10, v5, v10

    sub-long/2addr v8, v10

    aput-wide v8, v6, v7

    .line 2320
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v5, :cond_0

    .line 2321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "kills at or below oom_adj "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2322
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->getADJ()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-wide v6, v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager_kpm"

    .line 2321
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getElapsedTimeMin()J
    .locals 4

    .line 2394
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getKilledPackageCountOfAdj(I)I
    .locals 4

    .line 2499
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2500
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getKpmData(I)Ljava/lang/StringBuilder;
    .locals 8

    .line 2531
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " "

    .line 2532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    if-ne v2, p1, :cond_0

    return-object v0

    .line 2536
    :cond_0
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    if-nez p1, :cond_1

    const-string p0, "appCnt is 0"

    .line 2537
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    .line 2540
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 2541
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    int-to-double v2, v2

    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 2543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2544
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    int-to-double v2, v2

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 2546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2547
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2548
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    int-to-double v2, v2

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 2549
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2550
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2552
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2554
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2556
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2558
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2560
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2562
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2564
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2566
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2567
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2568
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2570
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2572
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2573
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2574
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2576
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2578
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2580
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2582
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2584
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2586
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2588
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2589
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2590
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2591
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2592
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2594
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2596
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2598
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",["

    .line 2600
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    const/4 v2, 0x0

    aget-wide v3, p1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    move v3, p1

    .line 2602
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 2603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    aget-wide v4, v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "],["

    .line 2606
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    aget-wide v4, v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v4, p1

    .line 2608
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 2609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    aget-wide v5, v5, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2612
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2614
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    array-length v2, v2

    if-ge p1, v2, :cond_4

    .line 2615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    const-string p1, "],"

    .line 2618
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2619
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getKpmHeavyPssData(I)Ljava/lang/StringBuilder;
    .locals 18

    move-object/from16 v0, p0

    .line 2624
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, " "

    .line 2625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    iget v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2627
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    const-string v0, ",didn\'t happen Previous App Kill by LMKD"

    .line 2628
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_0
    const-string v3, ","

    .line 2630
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    iget v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2632
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    const-string v4, ", [null]"

    const-string v5, "]"

    const-string v6, ",["

    if-eqz v3, :cond_1

    .line 2633
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2636
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2637
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2639
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmTotalSwap(Lcom/android/server/am/KillPolicyManager;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2643
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2645
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2646
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslShmemUsage:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslReclaimed:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->system:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kgslSharedMem:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2651
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2652
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2654
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    const/4 v7, 0x0

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    if-eqz v3, :cond_4

    .line 2658
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2659
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v4, v3

    move v12, v7

    :goto_1
    if-ge v12, v4, :cond_3

    aget-object v13, v3, v12

    .line 2660
    iget-object v14, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    const-string/jumbo v15, "}"

    const-string/jumbo v8, "{"

    if-eqz v14, :cond_2

    .line 2661
    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 2662
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmProcessHeavyMemory(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v13, v9, v7

    long-to-double v13, v13

    div-double/2addr v13, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v13, v13, v16

    double-to-int v8, v13

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmProcessHeavyMemory(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    aget-wide v13, v9, v8

    long-to-double v13, v13

    div-double/2addr v13, v10

    add-double v13, v13, v16

    double-to-int v8, v13

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmProcessHeavyMemory(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x2

    aget-wide v8, v9, v8

    long-to-double v8, v8

    div-double/2addr v8, v10

    add-double v8, v8, v16

    double-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2666
    :cond_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2667
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2671
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2673
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2676
    :goto_3
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_7

    .line 2677
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 2678
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ver: "

    .line 2679
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2680
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "null"

    const-string v8, ", PackageName: "

    if-eqz v3, :cond_5

    .line 2681
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2683
    :cond_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2684
    :goto_4
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    const-string v8, ", PackageVer: "

    if-eqz v3, :cond_6

    .line 2685
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2687
    :cond_6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string v3, ", adj: "

    .line 2688
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pss: "

    .line 2689
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v3, v3

    div-double/2addr v3, v10

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v8

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mb, swap: "

    .line 2690
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v3, v3

    div-double/2addr v3, v10

    add-double/2addr v3, v8

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mb, rss: "

    .line 2691
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v3, v3

    div-double/2addr v3, v10

    add-double/2addr v3, v8

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mb, "

    .line 2692
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmProcessHeavyMemory(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2693
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_7
    :goto_6
    return-object v1
.end method

.method public final getLaunchedPackageCount()I
    .locals 0

    .line 2494
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final initLmkdPrevCount()V
    .locals 9

    .line 2307
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2308
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->getADJ()I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessList;->getLmkdKillCount(II)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2310
    iget-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    aput-wide v7, v6, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public initPrevKillInfo()V
    .locals 4

    .line 2257
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v0, :cond_0

    .line 2258
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKDCricCountInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    .line 2259
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKDCountInfo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    .line 2261
    :cond_0
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKCountInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    return-void
.end method

.method public final markKilledPackage(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2481
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2483
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 2484
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_0

    .line 2486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markKilledPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adj "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", killed adj : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 2487
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    .line 2486
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateBigdataInfo()V
    .locals 2

    .line 2298
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateKillInfo()V

    .line 2299
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2300
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 2301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 2302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    return-void
.end method

.method public updateCycleInfo()V
    .locals 4

    .line 2277
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateKillInfo()V

    .line 2279
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPolicyMetric(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2280
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    if-eqz v0, :cond_1

    .line 2282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmKpmStartTime(Lcom/android/server/am/KillPolicyManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-wide/16 v2, 0xb4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2284
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_0

    .line 2286
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmCurrentState(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_0

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 2292
    :cond_2
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 2293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 2294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    return-void
.end method

.method public final updateHotLaunchRatio()V
    .locals 3

    .line 2466
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->calcHotLaunchRatio(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    return-void
.end method

.method public updateKillInfo()V
    .locals 6

    .line 2266
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v0, :cond_0

    .line 2267
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKDCricCountInfo()J

    move-result-wide v0

    .line 2268
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKDCountInfo()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 2270
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    .line 2271
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    .line 2273
    :cond_0
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getLMKCountInfo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    return-void
.end method

.method public final updateLaunchState(Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x9

    const-string v1, ")"

    const-string v2, ""

    if-ne p2, v0, :cond_0

    .line 2448
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HOT("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 2451
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 2452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WARM("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    .line 2454
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 2455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "COLD("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2458
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateHotLaunchRatio()V

    .line 2460
    sget-boolean p2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object p2

    if-ne p0, p2, :cond_3

    .line 2461
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateLaunchState() pkg "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final updateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$LmkdState;)V
    .locals 4

    .line 2329
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2330
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 2331
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-wide v0, p0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    aput-wide v0, p0, p1

    return-void
.end method

.method public updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .locals 3

    .line 2216
    iget v0, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    iget v1, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    add-int/2addr v0, v1

    .line 2217
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmTotalSwap(Lcom/android/server/am/KillPolicyManager;)I

    move-result v1

    iget v2, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    sub-int/2addr v1, v2

    .line 2219
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    .line 2220
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    .line 2221
    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    iget p1, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    .line 2223
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    if-le p1, v0, :cond_0

    .line 2224
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    .line 2226
    :cond_0
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    if-ge p1, v0, :cond_1

    .line 2227
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    .line 2229
    :cond_1
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    if-le p1, v1, :cond_2

    .line 2230
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    .line 2232
    :cond_2
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    if-ge p1, v1, :cond_3

    .line 2233
    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    :cond_3
    return-void
.end method

.method public final updateMemoryUsageByAdj(Ljava/util/HashMap;)V
    .locals 0

    .line 2527
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    return-void
.end method

.method public final updateProcAdjPss(Ljava/util/HashMap;)V
    .locals 0

    .line 2515
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    return-void
.end method

.method public final updateProcessHeavyPssList(Ljava/util/ArrayList;Lcom/android/server/am/KillPolicyManager$ProcMemInfo;I)V
    .locals 0

    .line 2520
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 2521
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    .line 2522
    iput p3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 2523
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    return-void
.end method

.method public updateProcessStateInfo(Ljava/lang/String;I)V
    .locals 7

    .line 2170
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 2171
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPrevPackage(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->addLaunchedPackage(Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmLmkdReader(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getLmkdPreviousAndBServiceKillCount(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 2173
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateLaunchState(Ljava/lang/String;I)V

    .line 2174
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateRawProcessCount()V

    .line 2175
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateRawResetStatus()V

    .line 2176
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object p1

    if-ne p0, p1, :cond_0

    .line 2177
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo p2, "updateProcessStateInfo() appCnt - "

    .line 2178
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " launch total - "

    .line 2180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " hot launch("

    .line 2182
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%) hot - "

    .line 2184
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " warm - "

    .line 2186
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cold - "

    .line 2188
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2190
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityManager_kpm"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 2191
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "cur previousKillRatio = "

    .line 2192
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%, serviceKillRatio = "

    .line 2194
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%, killedPackageRatio = "

    .line 2196
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    .line 2198
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo p2, "updateRawProcessCount() Average Cached (T:"

    .line 2201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    int-to-double v1, p2

    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v3, p2

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/A:"

    .line 2203
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    int-to-double v1, v1

    iget v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v5, v5

    div-double/2addr v1, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), Picked (T:"

    .line 2205
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    iget v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    int-to-double v1, v1

    iget v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v5, v5

    div-double/2addr v1, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2207
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    int-to-double v1, p2

    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v5, p2

    div-double/2addr v1, v5

    add-double/2addr v1, v3

    double-to-int p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), Seed "

    .line 2209
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    iget p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    int-to-double v1, p2

    iget p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v5, p0

    div-double/2addr v1, v5

    add-double/2addr v1, v3

    double-to-int p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updatePsiInfo(DDD)V
    .locals 2

    .line 2237
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    .line 2238
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    .line 2239
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    add-double/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    .line 2241
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    .line 2242
    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    .line 2244
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    cmpg-double v0, v0, p3

    if-gez v0, :cond_1

    .line 2245
    iput-wide p3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    .line 2247
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    cmpg-double v0, v0, p5

    if-gez v0, :cond_2

    .line 2248
    iput-wide p5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    .line 2251
    :cond_2
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    if-ne p0, v0, :cond_3

    .line 2252
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Psi info cpu : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", memory : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", io : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final updateRawProcessCount()V
    .locals 11

    const-string v0, "ActivityManager_kpm"

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 2402
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v7}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v7, :cond_6

    .line 2404
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v7}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_5

    .line 2406
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    const/16 v9, 0x384

    if-lt v8, v9, :cond_0

    const/16 v9, 0x3e7

    if-gt v8, v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    const/16 v9, 0x352

    if-ne v8, v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    const/16 v10, 0x35c

    if-ne v8, v10, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 2416
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    .line 2419
    :cond_3
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v10, 0x10

    if-ne v7, v10, :cond_5

    if-ne v8, v9, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    .line 2428
    :try_start_2
    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2433
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_6
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    .line 2437
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    .line 2438
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    .line 2439
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    .line 2440
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    .line 2441
    iput v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    return-void
.end method

.method public final updateRawResetStatus()V
    .locals 3

    .line 2507
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->calcKillRatio(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    .line 2508
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->calcKillRatio(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    .line 2509
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getLaunchedPackageCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    const/16 v0, 0x2bc

    .line 2510
    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKilledPackageCountOfAdj(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    .line 2511
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    invoke-static {v1, v0, v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mcalcKilledPackageRatio(Lcom/android/server/am/KillPolicyManager;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    return-void
.end method
