.class public Lcom/android/server/wm/CoreSaStatusLoggingService;
.super Landroid/app/job/JobService;
.source "CoreSaStatusLoggingService.java"


# static fields
.field public static final IDLE_LOGGING_PERIOD_MILLIS:J

.field public static TAG:Ljava/lang/String;

.field public static sCoreSaStatusLoggers:Ljava/util/HashSet;

.field public static sLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$x6Xv_r3tDvFfr-5OteVUCeZz_eo(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/CoreSaStatusLoggingService;->lambda$registerCoreSaStatusLogger$0(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 43
    const-class v0, Lcom/android/server/wm/CoreSaStatusLoggingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->TAG:Ljava/lang/String;

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic lambda$registerCoreSaStatusLogger$0(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 62
    invoke-static {}, Lcom/android/server/wm/CoreSaStatusLoggingService;->schedule()V

    return-void
.end method

.method public static registerCoreSaStatusLogger(Lcom/android/server/wm/CoreSaStatusLoggingService$CoreSaStatusLogger;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    if-nez v1, :cond_1

    .line 61
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    .line 62
    new-instance v1, Lcom/android/server/wm/CoreSaStatusLoggingService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/CoreSaStatusLoggingService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Lcom/samsung/android/server/util/SafetySystemService;->registerForSystemReady(Lcom/samsung/android/server/util/SafetySystemService$Callback;)V

    .line 64
    :cond_1
    sget-object v1, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/android/server/wm/CoreSaStatusLoggingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCoreSaStatusLogger logger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/wm/CoreSaStatusLoggingService$CoreSaStatusLogger;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static schedule()V
    .locals 4

    .line 74
    :try_start_0
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "android"

    const-class v3, Lcom/android/server/wm/CoreSaStatusLoggingService;

    .line 77
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0x18c2283f

    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/wm/CoreSaStatusLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 91
    sget-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->TAG:Ljava/lang/String;

    const-string v1, "Jobs scheduled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 94
    sget-object v1, Lcom/android/server/wm/CoreSaStatusLoggingService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to schedule."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    .line 103
    sget-object v1, Lcom/android/server/wm/CoreSaStatusLoggingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartJob "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x18c2283f

    if-ne v0, v1, :cond_1

    .line 106
    sget-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->sLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    sget-object v1, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;

    sget-object v2, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/wm/CoreSaStatusLoggingService$IdleLoggingThread;-><init>(Lcom/android/server/wm/CoreSaStatusLoggingService;Landroid/app/job/JobParameters;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 109
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 111
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    sget-object p0, Lcom/android/server/wm/CoreSaStatusLoggingService;->TAG:Ljava/lang/String;

    const-string p1, "CoreSaStatusLoggers is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 111
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 115
    sget-object p1, Lcom/android/server/wm/CoreSaStatusLoggingService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to onStartJob."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 123
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p0

    .line 125
    sget-object p1, Lcom/android/server/wm/CoreSaStatusLoggingService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const p1, 0x18c2283f

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 131
    sget-object p1, Lcom/android/server/wm/CoreSaStatusLoggingService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to onStopJob."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
