.class public Lcom/android/server/CustomizedBinderCallsStatsInternal;
.super Ljava/lang/Object;
.source "CustomizedBinderCallsStatsInternal.java"


# instance fields
.field public mAm:Landroid/app/ActivityManagerInternal;

.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public mContext:Landroid/content/Context;

.field public mLastNotifyTime:J

.field public mLastStoreTime:J

.field public mLastWriteTime:J


# direct methods
.method public static synthetic $r8$lambda$Foe7-rwGsSWCpYsNgGYM2NVszYw(Lcom/android/server/CustomizedBinderCallsStatsInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->lambda$reportCpuUsage$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$V7I051F2i9ASH1LlxdjS02b9l-k(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->lambda$reportCpuUsage$1(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    .line 49
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    .line 50
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 64
    iput-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 65
    iput-object p2, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$reportCpuUsage$0()V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->writeToFile()V

    return-void
.end method

.method private synthetic lambda$reportCpuUsage$1(I)V
    .locals 8

    .line 103
    iget-object v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    .line 105
    iget-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "CustomizedBinderCallsStatsInternal"

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1b7740

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "should write the current data!!"

    .line 107
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    :cond_1
    const/16 v0, 0x14

    if-lt p1, v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/16 v4, 0x5a

    .line 116
    invoke-virtual {v0, v4}, Lcom/android/internal/os/BinderCallsStats;->getHeaviestApplicationUid(I)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "heavy binder caller : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-wide v4, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 121
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->notifyAnomalyApp(Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;)V

    .line 122
    invoke-virtual {p0, v0, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->sendAnomalyAppToHWParam(Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;I)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 127
    :cond_3
    iget-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats;->isNeededResetData()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Clear all data"

    .line 128
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 p1, 0x1

    new-array v0, p1, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getActivityManager()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    .line 70
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public final notifyAnomalyApp(Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;)V
    .locals 9

    .line 178
    invoke-virtual {p0}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->getActivityManager()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string p0, "com.sec.android.sdhms.action.APP_ERROR"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object p0, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "userId"

    const/4 v2, 0x0

    .line 182
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p0, "uid"

    .line 183
    iget p1, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p0, "type"

    const-string p1, "excessive_binder"

    .line 184
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.sec.android.sdhms"

    .line 185
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 186
    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void
.end method

.method public reportCpuUsage(I)V
    .locals 6

    .line 91
    iget-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "CustomizedBinderCallsStatsInternal"

    if-lez v0, :cond_0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xd6d8

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const-string p0, "1 minute has NOT pass since last binder stats."

    .line 96
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportCpuUsage() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportProcessDied(IILjava/lang/String;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/BinderCallsStats;->reportProcessDied(IILjava/lang/String;)V

    return-void
.end method

.method public final sendAnomalyAppToHWParam(Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;I)V
    .locals 10

    .line 145
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mContext:Landroid/content/Context;

    const-string v0, "HqmManagerService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/SemHqmManager;

    const-string p0, "CustomizedBinderCallsStatsInternal"

    if-eqz v0, :cond_1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"PKG\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"SSCPU\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"RATIO\":\""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%.2f"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    .line 157
    iget-object v2, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, 0xa

    const-string v2, "\""

    const-string v3, "\"EXTRA\":\""

    const/16 v4, 0x3e8

    if-le p2, v4, :cond_0

    sub-int/2addr p2, v4

    .line 161
    iget-object v4, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    const/4 v3, 0x0

    sub-int/2addr v4, p2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 164
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Data is : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const-string v2, "AP"

    const-string v3, "HBCA"

    const-string/jumbo v4, "sm"

    const-string v5, "0.0"

    const-string v6, ""

    const-string v7, ""

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    move v1, p1

    .line 168
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Failed to send anomaly application info. to HWParam"

    .line 170
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p1, "Cannot get HqmManagerService !!!"

    .line 173
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->writeToFile()V

    return-void
.end method
