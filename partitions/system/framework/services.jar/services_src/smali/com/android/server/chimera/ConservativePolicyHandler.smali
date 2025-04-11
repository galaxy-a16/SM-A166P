.class public Lcom/android/server/chimera/ConservativePolicyHandler;
.super Lcom/android/server/chimera/PolicyHandler;
.source "ConservativePolicyHandler.java"


# instance fields
.field public mKillAllOnHomeTrigger:Z

.field public mReclaimOnHomeTrigger:Z

.field public mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;


# direct methods
.method public static synthetic $r8$lambda$9RGqUHcb_Zs83d0MBix7hYtLCvk(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/chimera/ConservativePolicyHandler;->lambda$executePolicyInternal$1(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bq4zT3IMZg6d0rom6xtTk8bZOOY(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/chimera/ConservativePolicyHandler;->lambda$killTopProfit$2(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vADFqOHLXWRialeQ5drbLMoRqIs(Lcom/android/server/chimera/ConservativePolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/chimera/ConservativePolicyHandler;->lambda$executePolicyInternal$0(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/android/server/chimera/PolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    .line 22
    iput-boolean p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    .line 23
    sget-object p1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    iput-object p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    return-void
.end method

.method private synthetic lambda$executePolicyInternal$0(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .locals 3

    .line 160
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    iget-wide v1, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->importance:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/chimera/AbnormalFgsDetector;->isHeavyForegroundService(IJI)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$executePolicyInternal$1(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$killTopProfit$2(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I
    .locals 0

    .line 238
    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public calculateKillGain(Lcom/android/server/chimera/ChimeraAppInfo;)V
    .locals 4

    .line 227
    iget-wide v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iput-wide v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 228
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSS gain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", hasRestartService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 229
    invoke-virtual {p1, p0}, Lcom/android/server/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/chimera/SystemRepository;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConservativePolicyHandler"

    .line 228
    invoke-interface {v0, p1, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 33
    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 35
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "************** adjinfo ****************"

    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    .line 38
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "************** appinfo ****************"

    .line 39
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    .line 41
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "************** kill history ****************"

    .line 42
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 44
    :cond_0
    array-length v1, p2

    if-lez v1, :cond_4

    .line 45
    aget-object p2, p2, v0

    const-string v0, "info"

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_1
    const-string v0, "appinfo"

    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_2
    const-string v0, "adjinfo"

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_3
    const-string v0, "history"

    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Chimera Kill History:"

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .locals 3

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "ConservativePolicyHandler"

    const-string p2, "executePolicy() - prepareForTrigger fails"

    invoke-interface {p0, p1, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 68
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    if-le p2, v2, :cond_1

    .line 70
    iput-boolean v2, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    .line 73
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/server/chimera/ConservativePolicyHandler;->executePolicyInternal(ZLcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    goto :goto_0

    .line 74
    :cond_2
    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne p1, p2, :cond_4

    .line 75
    iget-boolean p2, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    if-eqz p2, :cond_3

    .line 76
    invoke-virtual {p0, v2, p1}, Lcom/android/server/chimera/ConservativePolicyHandler;->executePolicyInternal(ZLcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 77
    iput-boolean v1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->isGcReclaimEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    if-eqz p1, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->performGcAndReclaim()V

    .line 80
    iput-boolean v1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    :cond_4
    :goto_0
    return v1
.end method

.method public executePolicyInternal(ZLcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .locals 8

    .line 87
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePolicy() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", killAll : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConservativePolicyHandler"

    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {v0}, Lcom/android/server/chimera/SkipReasonLogger;->clear()V

    .line 91
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 92
    invoke-virtual {v3}, Lcom/android/server/chimera/ChimeraStrategy;->getProtectedCountOnHomeTrigger()I

    move-result v3

    .line 91
    invoke-virtual {v0, v1, v3, p2}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "executePolicy() - getAppsToKill return null"

    invoke-interface {p0, v2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 103
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    iget-object v4, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 105
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 106
    iget v5, v1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    if-ge v5, v3, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v4, "Invalid app group id"

    invoke-interface {v1, v2, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    .line 112
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "killing stopped to group 4"

    invoke-interface {p2, v2, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 116
    :cond_3
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v1, v5}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v5, :cond_1

    .line 118
    invoke-virtual {v5}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->hasCachedProcess()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 122
    :cond_4
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->isOnScreenWindow(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/chimera/PolicyHandler;->markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_0

    .line 127
    :cond_5
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    iget-object v6, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/chimera/WakeLockManager;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 128
    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/chimera/PolicyHandler;->markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_0

    .line 132
    :cond_6
    iget v5, v1, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/ConservativePolicyHandler;->hasProtectedServices(Lcom/android/server/chimera/ChimeraAppInfo;)I

    move-result v5

    .line 134
    invoke-static {}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    move-result-object v6

    aget-object v5, v6, v5

    .line 135
    sget-object v6, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    if-eq v5, v6, :cond_7

    sget-object v6, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    if-eq v5, v6, :cond_7

    .line 136
    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/chimera/PolicyHandler;->markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->hasImportantAdjWithSystemUid(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 142
    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/chimera/PolicyHandler;->markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto/16 :goto_0

    .line 146
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->isReusedPid(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 147
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped by Thread Group Leader condition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->isSystemPid(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 152
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v4, "Skipped by system server process id"

    invoke-interface {v1, v2, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/ConservativePolicyHandler;->hasProtectedAdjOrProcState(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto/16 :goto_0

    .line 160
    :cond_b
    iget-object v5, v1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/ConservativePolicyHandler;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    .line 162
    iget-object v6, v1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v6, v6, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    invoke-static {v6}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v6

    new-instance v7, Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/IntStream;->noneMatch(Ljava/util/function/IntPredicate;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_1

    :cond_c
    move v4, v5

    :goto_1
    if-nez v4, :cond_d

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->isExpiredKillInterval(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_0

    .line 171
    :cond_d
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v5, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/server/chimera/SystemRepository;->isLockTaskPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto/16 :goto_0

    .line 175
    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/ConservativePolicyHandler;->calculateKillGain(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 176
    iget-wide v4, v1, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 181
    :cond_f
    :goto_2
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {p2, v2}, Lcom/android/server/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_11

    if-eqz p1, :cond_10

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ConservativePolicyHandler;->killAll(Ljava/util/List;)V

    goto :goto_3

    .line 187
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ConservativePolicyHandler;->killTopProfit(Ljava/util/List;)V

    .line 189
    :goto_3
    iget-object p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    goto :goto_4

    .line 191
    :cond_11
    iget p1, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 192
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p2, "killTargetList is empty"

    invoke-interface {p1, v2, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->isGcReclaimEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 195
    iget-object p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne p1, p2, :cond_12

    .line 196
    iput-boolean v3, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    goto :goto_4

    .line 198
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->performGcAndReclaim()V

    .line 199
    iput-boolean v4, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    :cond_13
    :goto_4
    return-void
.end method

.method public getQuickReclaimReleaseTarget(J)J
    .locals 2

    .line 208
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide p0

    const-wide/32 v0, 0x4b000

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public hasProtectedAdjOrProcState(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .locals 11

    .line 301
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v1, :cond_9

    aget v6, v0, v3

    const/16 v7, 0xc8

    if-ge v6, v7, :cond_0

    return v5

    :cond_0
    const/16 v8, 0x12c

    if-ge v6, v8, :cond_5

    if-ne v6, v7, :cond_2

    .line 306
    iget-object v9, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.samsung.android.bixby.ondevice"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.sds.emm.sers"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    return v5

    :cond_2
    if-ne v6, v7, :cond_3

    .line 310
    iget v7, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    const/16 v9, 0xa

    if-ne v7, v9, :cond_3

    return v5

    .line 315
    :cond_3
    iget v7, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    if-ne v7, v4, :cond_4

    return v5

    .line 319
    :cond_4
    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/chimera/PolicyHandler;->isPowerWhitelistedApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v5

    :cond_5
    const/16 v4, 0x33e

    if-ne v6, v4, :cond_6

    return v5

    :cond_6
    const/16 v4, 0x2bc

    if-ne v6, v4, :cond_7

    return v5

    :cond_7
    if-ne v6, v8, :cond_8

    return v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    :cond_9
    iget-object p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object p0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    array-length p1, p0

    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_c

    aget v1, p0, v0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_b

    if-ne v1, v4, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    return v5

    :cond_c
    return v2
.end method

.method public hasProtectedServices(Lcom/android/server/chimera/ChimeraAppInfo;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 212
    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v1, :cond_1

    move v1, v0

    .line 213
    :goto_0
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 214
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, 0x352

    if-gt v2, v3, :cond_0

    const/16 v3, -0x3e8

    if-lt v2, v3, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v2, v3, v4}, Lcom/android/server/chimera/SystemRepository;->hasChimeraProtectedProc(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public killAll(Ljava/util/List;)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "ConservativePolicyHandler"

    const-string/jumbo v2, "killAll"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->isUserShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->printAllAppInfo(Ljava/util/List;)V

    .line 256
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo;

    const-string v1, "LMKD CRI"

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/ConservativePolicyHandler;->killApp(Lcom/android/server/chimera/ChimeraAppInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public killApp(Lcom/android/server/chimera/ChimeraAppInfo;Ljava/lang/String;)V
    .locals 7

    .line 263
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {p1, v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v0, :cond_5

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ConservativePolicyHandler;->hasProtectedAdjOrProcState(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 269
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->isService(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p1, v0}, Lcom/android/server/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/chimera/SystemRepository;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v2, v3}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    const-string v0, "Kill freezedPackage : "

    goto :goto_0

    .line 276
    :cond_1
    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_2

    .line 277
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    const-string v0, "Kill 3rd-party : "

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/chimera/RestartImmediatePackages;->addPackage(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "Kill and delay : "

    goto :goto_0

    :cond_3
    const-string v0, "Kill : "

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Pss : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ConservativePolicyHandler"

    invoke-interface {v1, v2, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v2}, Lcom/android/server/chimera/SystemRepository;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 291
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    iget v3, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    iget-wide v4, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    iget v6, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->importance:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/chimera/AbnormalFgsDetector;->isHeavyForegroundService(IJI)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    iget-object v3, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    iget-wide v5, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/chimera/AbnormalFgsDetector;->putKillableHeavyApp(Ljava/lang/String;IJ)V

    .line 296
    :cond_4
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chimera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public killTopProfit(Ljava/util/List;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "killTopProfit"

    const-string v2, "ConservativePolicyHandler"

    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->calcAppScores(Ljava/util/List;)V

    .line 238
    new-instance v0, Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->isUserShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "after sorting:"

    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->printAllAppInfo(Ljava/util/List;)V

    .line 245
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 246
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo;

    const-string v0, "LMKD MED"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/ConservativePolicyHandler;->killApp(Lcom/android/server/chimera/ChimeraAppInfo;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
