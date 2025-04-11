.class public final Lcom/android/server/pm/BackgroundDexOptService;
.super Ljava/lang/Object;
.source "BackgroundDexOptService.java"


# static fields
.field public static final DEBUG:Z

.field public static final IDLE_OPTIMIZATION_PERIOD:J

.field static final JOB_IDLE_OPTIMIZE:I = 0x320

.field static final JOB_POST_BOOT_UPDATE:I = 0x321

.field public static sDexoptServiceName:Landroid/content/ComponentName;


# instance fields
.field public mDexOptCancellingThread:Ljava/lang/Thread;

.field public final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field public mDexOptThread:Ljava/lang/Thread;

.field public mDisableJobSchedulerJobs:Z

.field public final mDowngradeUnusedAppsThresholdInMillis:J

.field public final mFailedPackageNamesPrimary:Landroid/util/ArraySet;

.field public final mFailedPackageNamesSecondary:Landroid/util/ArraySet;

.field public mFinishedPostBootUpdate:Z

.field public final mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

.field public final mLastCancelledPackages:Landroid/util/ArraySet;

.field public mLastExecutionDurationMs:J

.field public mLastExecutionStartUptimeMs:J

.field public mLastExecutionStatus:I

.field public final mLock:Ljava/lang/Object;

.field public mPackagesUpdatedListeners:Ljava/util/List;

.field public final mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

.field public mThermalStatusCutoff:I


# direct methods
.method public static synthetic $r8$lambda$G6Go4GqeGbQqTZ1FeF7PahJ3wYg(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$onStartJob$1(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P8c5Pir3-T8DUrQZk-Puin3WNcU(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$performDexOptSecondary$4(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z37MGlxpT0s2i4jGORldTYugFng(Lcom/android/server/pm/BackgroundDexOptService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$onStopJob$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$pp1yBzU5PhQ8XaKWI9tDoND1yOo(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$performDexOptPrimary$3(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vJDgX1Z2CfnNSkZqB17yPs1agO0(Lcom/android/server/pm/BackgroundDexOptService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$cancelBackgroundDexoptJob$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/pm/BackgroundDexOptService;)Lcom/android/server/pm/BackgroundDexOptService$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleAJob(Lcom/android/server/pm/BackgroundDexOptService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->scheduleAJob(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "BackgroundDexOptService"

    const/4 v1, 0x3

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/pm/BackgroundDexOptJobService;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    .line 198
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService$Injector;-><init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundDexOptService;-><init>(Lcom/android/server/pm/BackgroundDexOptService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/BackgroundDexOptService$Injector;)V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    invoke-direct {v0}, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 167
    iput v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 173
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    .line 179
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    .line 181
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    const/4 v0, 0x2

    .line 188
    iput v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    .line 203
    invoke-static {}, Lcom/android/server/pm/Installer;->checkLegacyDexoptDisabled()V

    .line 204
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    .line 205
    invoke-virtual {p1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexOptHelper()Lcom/android/server/pm/DexOptHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 206
    const-class v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDowngradeUnusedAppsThresholdInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    return-void
.end method

.method public static getService()Lcom/android/server/pm/BackgroundDexOptService;
    .locals 1

    .line 268
    const-class v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BackgroundDexOptService;

    return-object v0
.end method

.method private synthetic lambda$cancelBackgroundDexoptJob$0()V
    .locals 0

    .line 315
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->cancelDexOptAndWaitForCompletion()V

    return-void
.end method

.method private synthetic lambda$onStartJob$1(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V
    .locals 8

    const-string v0, " completed:"

    const-string v1, "dexopt finishing. jobid:"

    .line 410
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-wide/16 v3, 0x4000

    const-string v5, "BackgroundDexOptService"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    const-string v3, "jobExecution"

    .line 412
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/16 v3, 0x321

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 417
    :try_start_0
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v7

    if-ne v7, v3, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v6

    .line 416
    :goto_0
    invoke-virtual {p0, p1, p2, v7}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z

    move-result p1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$LegacyDexoptDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 425
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 425
    invoke-static {v5, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->writeStatsLog(Landroid/app/job/JobParameters;)V

    .line 431
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p2

    if-ne p2, v3, :cond_1

    if-eqz p1, :cond_1

    .line 433
    invoke-virtual {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    move p2, v6

    goto :goto_2

    :catch_0
    move-exception p1

    .line 422
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    move p2, v4

    goto :goto_2

    :catch_1
    move-exception p1

    .line 419
    :try_start_2
    invoke-static {v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->writeStatsLog(Landroid/app/job/JobParameters;)V

    .line 431
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 438
    :goto_1
    invoke-virtual {p4, p3, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 439
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    return-void

    .line 424
    :goto_2
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->writeStatsLog(Landroid/app/job/JobParameters;)V

    .line 431
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move v4, v6

    .line 438
    :goto_3
    invoke-virtual {p4, p3, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 439
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    .line 440
    throw p1
.end method

.method private synthetic lambda$onStopJob$2()V
    .locals 1

    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->cancelDexOptAndWaitForCompletion()V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$LegacyDexoptDisabledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BackgroundDexOptService"

    .line 459
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$performDexOptPrimary$3(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$performDexOptSecondary$4(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .locals 0

    .line 935
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final abortIdleOptimizations(J)I
    .locals 5

    .line 995
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getCurrentThermalStatus()I

    move-result v0

    .line 1003
    sget-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    const-string v2, "BackgroundDexOptService"

    if-eqz v1, :cond_1

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thermal throttling status during bgdexopt: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_1
    iget v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    const/4 v3, 0x4

    if-lt v0, v1, :cond_3

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborted by thermal: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    .line 1011
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->isRunningBgDexOptCTS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Keep running optimizations"

    .line 1012
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    return p0

    .line 1018
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBatteryLevelLow()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 1022
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirUsableSpace()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_5

    .line 1025
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Aborting background dex opt job due to low storage: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public cancelBackgroundDexoptJob()V
    .locals 1

    .line 313
    invoke-static {}, Lcom/android/server/pm/Installer;->checkLegacyDexoptDisabled()V

    .line 314
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->enforceRootOrShell()V

    .line 315
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final cancelDexOptAndWaitForCompletion()V
    .locals 4

    .line 471
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 473
    monitor-exit v0

    return-void

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V

    .line 480
    monitor-exit v0

    return-void

    .line 482
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 486
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    .line 487
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :try_start_2
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    .line 491
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 492
    invoke-virtual {p0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    .line 493
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 495
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 490
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    .line 491
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 492
    invoke-virtual {p0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    .line 493
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 494
    throw v1

    :catchall_1
    move-exception p0

    .line 495
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final controlDexOptBlockingLocked(Z)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    .line 547
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->controlDexOptBlocking(Z)V

    return-void
.end method

.method public final convertPackageDexOptimizerStatusToInternal(I)I
    .locals 2

    const/4 p0, -0x1

    const/4 v0, 0x5

    if-eq p1, p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 986
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unkknown error code from PackageDexOptimizer:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I
    .locals 10

    .line 823
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downgrading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 v0, 0xb

    .line 830
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    .line 833
    invoke-static {v1}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x25

    goto :goto_0

    :cond_2
    const/16 v2, 0x24

    :goto_0
    if-nez p5, :cond_3

    or-int/lit16 v2, v2, 0x200

    .line 845
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v5

    if-nez p4, :cond_5

    const-string p4, "android"

    .line 847
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_1

    .line 858
    :cond_4
    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 850
    :cond_5
    :goto_1
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->canHaveOatDir(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 853
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    const/4 p1, 0x0

    goto :goto_2

    .line 855
    :cond_6
    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    :goto_2
    const/4 p4, 0x1

    if-ne p1, p4, :cond_7

    .line 862
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    const/16 v3, 0x80

    .line 864
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v4, p3

    .line 863
    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJZ)V

    :cond_7
    return p1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBackgroundDexOptDisabled()Z

    move-result v0

    const-string v1, "enabled:"

    .line 235
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    xor-int/lit8 v1, v0, 0x1

    .line 236
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "mDexOptThread:"

    .line 241
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "mDexOptCancellingThread:"

    .line 243
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "mFinishedPostBootUpdate:"

    .line 245
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget-boolean v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "mDisableJobSchedulerJobs:"

    .line 247
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget-boolean v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDisableJobSchedulerJobs:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "mLastExecutionStatus:"

    .line 249
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 250
    iget v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string v1, "mLastExecutionStartUptimeMs:"

    .line 251
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 252
    iget-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string v1, "mLastExecutionDurationMs:"

    .line 253
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 254
    iget-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "now:"

    .line 255
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string v1, "mLastCancelledPackages:"

    .line 257
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    .line 258
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "mFailedPackageNamesPrimary:"

    .line 259
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    .line 260
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "mFailedPackageNamesSecondary:"

    .line 261
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    .line 262
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 263
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enforceRootOrShell()V
    .locals 1

    .line 538
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getCallingUid()I

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Should be shell or root user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final getDirectorySize(Ljava/io/File;)J
    .locals 6

    .line 627
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 630
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    .line 634
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 635
    invoke-virtual {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0

    .line 638
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_3
    return-wide v0
.end method

.method public final getLowStorageThreshold()J
    .locals 4

    .line 561
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirStorageLowBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-string p0, "BackgroundDexOptService"

    const-string v2, "Invalid low storage threshold"

    .line 563
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v0
.end method

.method public final getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 647
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 649
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_3

    .line 650
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    .line 651
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 654
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 655
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 656
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    new-array v6, v2, [Ljava/lang/String;

    .line 657
    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    .line 658
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 659
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 661
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 664
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v0, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public final idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JZ)I
    .locals 14

    move-object v7, p0

    move/from16 v0, p5

    .line 676
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 678
    iget-object v1, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    .line 679
    invoke-virtual {v1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->isBatteryFullyCharged(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCharging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isCharging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPostBootUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    if-eqz v0, :cond_0

    .line 682
    iget-object v1, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isCharging()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    .line 686
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborted by not full charge. batteryLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->getBatteryLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return v2

    .line 693
    :cond_2
    :try_start_0
    iget-object v1, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->supportSecondaryDex()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 696
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 757
    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 761
    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v1

    :cond_3
    const-wide/16 v1, 0x2

    mul-long v1, v1, p3

    .line 707
    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->shouldDowngrade(J)Z

    move-result v1

    .line 708
    sget-boolean v2, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "BackgroundDexOptService"

    if-eqz v2, :cond_4

    .line 709
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Should Downgrade "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v1, :cond_b

    .line 712
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    .line 713
    iget-wide v4, v7, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    .line 714
    invoke-interface {v10, v4, v5}, Lcom/android/server/pm/Computer;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v11

    if-eqz v2, :cond_5

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsused Packages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-static {v2, v11}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_5
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 720
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 721
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v10

    move-object v3, p1

    move-object v4, v13

    move/from16 v6, p5

    .line 727
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 730
    invoke-virtual {v8, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_0

    :cond_9
    if-eqz v9, :cond_6

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v10

    move-object v3, p1

    move-object v4, v13

    move/from16 v6, p5

    .line 738
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I

    move-result v1

    .line 740
    invoke-virtual {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    .line 747
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 748
    invoke-interface {v1, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-object v2, v1

    goto :goto_1

    :cond_b
    move-object/from16 v2, p2

    :goto_1
    move-object v1, p0

    move-wide/from16 v3, p3

    move-object v5, v8

    move/from16 v6, p5

    .line 752
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Ljava/util/List;JLandroid/util/ArraySet;Z)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 757
    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 761
    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v0

    :catchall_0
    move-exception v0

    .line 757
    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 761
    invoke-virtual {p0, v8}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 762
    throw v0
.end method

.method public final isCancelling()Z
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1044
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final logStatus(I)V
    .locals 2

    const-string p0, "BackgroundDexOptService"

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle optimizations ended with unexpected code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Idle optimizations failed from dexopt."

    .line 587
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Idle optimizations aborted by low battery."

    .line 584
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "Idle optimizations aborted by thermal throttling."

    .line 581
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "Idle optimizations aborted because of space constraints."

    .line 575
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "Idle optimizations aborted by cancellation."

    .line 578
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string p1, "Idle optimizations completed."

    .line 572
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final markDexOptCompleted()V
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 523
    iput-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 525
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 526
    monitor-exit v0

    return-void

    .line 519
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only mDexOptThread can mark completion, mDexOptThread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " current:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 526
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V
    .locals 2

    .line 1048
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    const/16 v0, 0x321

    if-eq p1, v0, :cond_0

    return-void

    .line 1051
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1052
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1053
    iput-boolean v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    .line 1055
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 1055
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public notifyPackageChanged(Ljava/lang/String;)V
    .locals 2

    .line 359
    invoke-static {}, Lcom/android/server/pm/Installer;->checkLegacyDexoptDisabled()V

    .line 363
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 366
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyPackagesUpdated(Landroid/util/ArraySet;)V
    .locals 1

    .line 1070
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1071
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    monitor-exit p1

    return-void

    .line 1071
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1072
    throw p0

    :catchall_0
    move-exception p0

    .line 1074
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyPinService(Landroid/util/ArraySet;)V
    .locals 2

    .line 1061
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPinnerService()Lcom/android/server/PinnerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pinning optimized code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1064
    invoke-virtual {p0, p1, v0}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    :cond_0
    return-void
.end method

.method public onStartJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;)Z
    .locals 11

    const-string v0, "BackgroundDexOptService"

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartJob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x321

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    .line 378
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "BackgroundDexOptService"

    const-string v0, "Low storage, skipping this run"

    .line 379
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0, p2}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    return v3

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/DexOptHelper;->getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object v7

    .line 385
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "BackgroundDexOptService"

    const-string v0, "No packages to optimize"

    .line 386
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p0, p2}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    return v3

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexOptThermalCutoff()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    .line 393
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDisableJobSchedulerJobs:Z

    if-eqz v4, :cond_3

    const-string p0, "BackgroundDexOptService"

    const-string p1, "JobScheduler invocations disabled"

    .line 395
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    monitor-exit v1

    return v3

    .line 398
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 400
    monitor-exit v1

    return v3

    :cond_4
    if-nez v0, :cond_5

    .line 402
    iget-boolean v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    if-nez v4, :cond_5

    .line 404
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 407
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BackgroundDexOptService_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    const-string v0, "PostBoot"

    goto :goto_1

    :cond_6
    const-string v0, "Idle"

    .line 408
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda2;

    move-object v4, v10

    move-object v5, p0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V

    .line 407
    invoke-virtual {v3, v0, v10}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->createAndStartThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$LegacyDexoptDisabledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "BackgroundDexOptService"

    .line 443
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    :goto_2
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onStopJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onStopJob:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackgroundDexOptService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    new-instance p2, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    const-string p0, "DexOptCancel"

    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->createAndStartThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    const/4 p0, 0x1

    return p0
.end method

.method public final optimizePackage(Ljava/lang/String;ZZ)I
    .locals 3

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 895
    :goto_0
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_1

    const/16 p3, 0x205

    goto :goto_1

    :cond_1
    const/4 p3, 0x4

    .line 903
    :goto_1
    invoke-static {v1}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 p3, p3, 0x1

    :cond_2
    if-nez p2, :cond_4

    const-string p2, "android"

    .line 912
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 915
    :cond_3
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p0

    return p0

    .line 913
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final optimizePackages(Ljava/util/List;JLandroid/util/ArraySet;Z)I
    .locals 8

    .line 769
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->supportSecondaryDex()Z

    move-result v0

    .line 776
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 777
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v4

    if-eqz v4, :cond_1

    return v4

    :cond_1
    const/4 v4, 0x1

    .line 784
    invoke-virtual {p0, v3, v4, p5}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Ljava/lang/String;ZZ)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    return v4

    :cond_2
    const/4 v7, -0x1

    if-ne v5, v4, :cond_3

    .line 789
    invoke-virtual {p4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-ne v5, v7, :cond_4

    .line 791
    invoke-virtual {p0, v5}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v2

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    goto :goto_0

    .line 800
    :cond_5
    invoke-virtual {p0, v3, v1, p5}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Ljava/lang/String;ZZ)I

    move-result v3

    if-ne v3, v6, :cond_6

    return v4

    :cond_6
    if-ne v3, v7, :cond_0

    .line 805
    invoke-virtual {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v2

    goto :goto_0

    :cond_7
    return v2
.end method

.method public final performDexOptPrimary(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7

    .line 922
    new-instance v6, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 924
    new-instance p2, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v6}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLcom/android/internal/util/FunctionalUtils$ThrowingCheckedSupplier;)I

    move-result p0

    return p0
.end method

.method public final performDexOptSecondary(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7

    .line 931
    new-instance v6, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v4, 0x0

    or-int/lit8 v5, p4, 0x8

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 933
    new-instance p2, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v6}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLcom/android/internal/util/FunctionalUtils$ThrowingCheckedSupplier;)I

    move-result p0

    return p0
.end method

.method public final reconcileSecondaryDexFiles()I
    .locals 3

    .line 872
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DexManager;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 873
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 876
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 533
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    const/4 p1, 0x0

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    return-void
.end method

.method public runBackgroundDexoptJob(Ljava/util/List;)Z
    .locals 4

    .line 284
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->enforceRootOrShell()V

    .line 285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V

    .line 290
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V

    .line 291
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    if-nez p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/pm/DexOptHelper;->getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object p1

    :cond_0
    const/4 v3, 0x0

    .line 299
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 301
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    return p1

    :catchall_0
    move-exception p1

    .line 291
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 301
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    .line 303
    throw p1
.end method

.method public final runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z
    .locals 10

    .line 601
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 602
    :try_start_0
    iput v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 603
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    const-wide/16 v2, -0x1

    .line 604
    iput-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    .line 605
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 609
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold()J

    move-result-wide v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    .line 610
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JZ)I

    move-result v1

    .line 611
    invoke-virtual {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->logStatus(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    const/4 p1, 0x5

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 617
    :goto_1
    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 618
    :try_start_2
    iput v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 619
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    .line 620
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 615
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    const/4 v1, 0x6

    .line 617
    :goto_2
    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 618
    :try_start_4
    iput v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 619
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    .line 620
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 621
    throw p1

    :catchall_3
    move-exception p0

    .line 620
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 605
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p0
.end method

.method public final scheduleAJob(I)V
    .locals 3

    .line 551
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object p0

    .line 552
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v0, p1, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    .line 553
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/16 v2, 0x320

    if-ne p1, v2, :cond_0

    .line 555
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    sget-wide v1, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    invoke-virtual {p1, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 557
    :cond_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public setDisableJobSchedulerJobs(Z)V
    .locals 1

    .line 328
    invoke-static {}, Lcom/android/server/pm/Installer;->checkLegacyDexoptDisabled()V

    .line 329
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->enforceRootOrShell()V

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDisableJobSchedulerJobs:Z

    .line 332
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldDowngrade(J)Z
    .locals 2

    .line 1034
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirUsableSpace()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .locals 3

    .line 212
    invoke-static {}, Lcom/android/server/pm/Installer;->checkLegacyDexoptDisabled()V

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBackgroundDexOptDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final trackPerformDexOpt(Ljava/lang/String;ZLcom/android/internal/util/FunctionalUtils$ThrowingCheckedSupplier;)I
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 956
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 957
    :goto_0
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 961
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 962
    invoke-interface {p3}, Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedSupplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 966
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    const/4 p2, 0x2

    if-ne p3, p2, :cond_3

    .line 968
    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 969
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 970
    monitor-exit p2

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    :goto_1
    return p3

    :catchall_2
    move-exception p0

    .line 961
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public final waitForDexOptThreadToFinishLocked()V
    .locals 6

    .line 500
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-wide/32 v1, 0x40000

    const-string v3, "BackgroundDexOptService"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v1, "waitForDexOptThreadToFinishLocked"

    .line 503
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 506
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Interrupted while waiting for dexopt thread"

    .line 510
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 513
    :cond_0
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final writeStatsLog(Landroid/app/job/JobParameters;)V
    .locals 4

    .line 1081
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 1083
    iget-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    .line 1084
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result p1

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;->write(IIJ)V

    return-void

    :catchall_0
    move-exception p0

    .line 1084
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
