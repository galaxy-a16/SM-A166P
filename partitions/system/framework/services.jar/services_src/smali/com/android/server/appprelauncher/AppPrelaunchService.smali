.class public Lcom/android/server/appprelauncher/AppPrelaunchService;
.super Landroid/app/appprelauncher/IAppPrelaunchService$Stub;
.source "AppPrelaunchService.java"


# static fields
.field public static final ACTIVE_APPS_LIMIT:I

.field public static final APP_MAX_IDLE_TIME_MIN:J

.field public static final FORCE_PREL:Z

.field public static final GLOBAL_WATCHDOG_SLEEP_TIME_MIN:J

.field public static final PRELAUNCH_ATTEMPTS_LIMIT:I

.field public static final PREL_APP_START_WATCHDOG_TIMEOUT_MS:I

.field public static final RESTRICT_NETWORK:Z


# instance fields
.field public final HISTORY_TIME_MIN:J

.field public blockedActivities:Ljava/util/Set;

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mContext:Landroid/content/Context;

.field public mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mIntentTracker:Lcom/android/server/appprelauncher/IntentTracker;

.field public final mLock:Ljava/lang/Object;

.field public mNms:Landroid/os/INetworkManagementService;

.field public mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPrelaunchedAppHistory:Ljava/util/Queue;

.field public mPrelaunchedAppIds:Landroid/util/ArrayMap;

.field public mPrelaunchedApps:Landroid/util/ArrayMap;

.field public mScpmController:Lcom/android/server/appprelauncher/ScpmController;

.field public mSetupWizardFinished:Z

.field public mSmartSwitchState:Z

.field public final mSpeg:Lcom/android/server/SpegService;

.field public final mStorage:Lcom/android/server/appprelauncher/PrelauncherStorage;

.field public nativeLibBlockList:Ljava/util/Set;

.field public packageBlockList:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$CKLQyKM4VYBPZ69m1Er5Li80xYY(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->lambda$executeAsync$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JQKLSqDduhFMmcfVGAJQcmTGleE(Lcom/android/server/appprelauncher/AppPrelaunchService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->lambda$setTaskProcessedForPrelaunchedAppAsync$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ULOxdMQ4KU0VO1EwAs6ABSxifJQ(Lcom/android/server/appprelauncher/AppPrelaunchService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->lambda$setPidForPrelaunchedAppAsync$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$XjY57bpfMArc3Y2huT_O8zFO77s(Lcom/android/server/appprelauncher/AppPrelaunchService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->lambda$restrictNetworkConnection$6(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$du4PHJjhJ2wV4nkQAZ2wt13VQ2U(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->lambda$runWatchDogForApp$0(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eXW_dAqFy9neeY3WKkUTnVLEu3M(Lcom/android/server/appprelauncher/AppPrelaunchService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->lambda$performInstallActionBroadcast$5(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$synBBYV9KtHoU54jZKdB8mosYnU(Lcom/android/server/appprelauncher/AppPrelaunchService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->lambda$setStartExecutionComplete$4(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetHISTORY_TIME_MIN(Lcom/android/server/appprelauncher/AppPrelaunchService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->HISTORY_TIME_MIN:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/appprelauncher/AppPrelaunchService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionManager(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrelaunchedAppHistory(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrelaunchedApps(Lcom/android/server/appprelauncher/AppPrelaunchService;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScpmController(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/appprelauncher/ScpmController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mScpmController:Lcom/android/server/appprelauncher/ScpmController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpeg(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/SpegService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mkillAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mperformInstallActionBroadcast(Lcom/android/server/appprelauncher/AppPrelaunchService;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->performInstallActionBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremovePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestrictNetworkConnection(Lcom/android/server/appprelauncher/AppPrelaunchService;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->restrictNetworkConnection(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetAPP_MAX_IDLE_TIME_MIN()J
    .locals 2

    sget-wide v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->APP_MAX_IDLE_TIME_MIN:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetGLOBAL_WATCHDOG_SLEEP_TIME_MIN()J
    .locals 2

    sget-wide v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->GLOBAL_WATCHDOG_SLEEP_TIME_MIN:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPREL_APP_START_WATCHDOG_TIMEOUT_MS()I
    .locals 1

    sget v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->PREL_APP_START_WATCHDOG_TIMEOUT_MS:I

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "com.samsung.speg.prelauncher.appstartwatchdog_ms"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->PREL_APP_START_WATCHDOG_TIMEOUT_MS:I

    const-string v0, "com.samsung.speg.prelauncher.appidletime_min"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/android/server/appprelauncher/AppPrelaunchService;->APP_MAX_IDLE_TIME_MIN:J

    const-string v0, "com.samsung.speg.prelauncher.globalwatchdog_min"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->GLOBAL_WATCHDOG_SLEEP_TIME_MIN:J

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string/jumbo v1, "true"

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.speg.prelauncher.force"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->FORCE_PREL:Z

    const-string v0, "com.samsung.speg.prelauncher.restrict_network"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->RESTRICT_NETWORK:Z

    const-string v0, "com.samsung.speg.prelauncher.active_apps_limit"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->ACTIVE_APPS_LIMIT:I

    const-string v0, "com.samsung.speg.prelauncher.prelaunch_attempts_limit"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->PRELAUNCH_ATTEMPTS_LIMIT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/SpegService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    invoke-direct {p0}, Landroid/app/appprelauncher/IAppPrelaunchService$Stub;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->nativeLibBlockList:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->blockedActivities:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppIds:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    const-wide/16 v1, 0x2

    sget-wide v3, Lcom/android/server/appprelauncher/AppPrelaunchService;->GLOBAL_WATCHDOG_SLEEP_TIME_MIN:J

    mul-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->HISTORY_TIME_MIN:J

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    iput-object p3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string p3, "/system/etc/prelauncher-package-blocklist.conf"

    invoke-virtual {p2, p3}, Lcom/android/server/SpegService;->initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->packageBlockList:Ljava/util/Set;

    new-instance p2, Lcom/android/server/appprelauncher/PrelauncherStorage;

    invoke-direct {p2, p1}, Lcom/android/server/appprelauncher/PrelauncherStorage;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mStorage:Lcom/android/server/appprelauncher/PrelauncherStorage;

    new-instance p1, Lcom/android/server/appprelauncher/ScpmController;

    invoke-direct {p1, p2}, Lcom/android/server/appprelauncher/ScpmController;-><init>(Lcom/android/server/appprelauncher/PrelauncherStorage;)V

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mScpmController:Lcom/android/server/appprelauncher/ScpmController;

    new-instance p1, Lcom/android/server/appprelauncher/IntentTracker;

    invoke-direct {p1, v0}, Lcom/android/server/appprelauncher/IntentTracker;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mIntentTracker:Lcom/android/server/appprelauncher/IntentTracker;

    return-void
.end method

.method public static getIncludedLibrariesFromApk(Ljava/lang/String;)Ljava/util/Set;
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/util/jar/StrictJarFile;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_2
    :try_start_3
    const-string v3, "PRELService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", error: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    goto :goto_1

    :catch_2
    :cond_4
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_5
    throw p0
.end method

.method public static synthetic lambda$executeAsync$1(Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PRELService"

    const-string v1, "Exception in async task"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$performInstallActionBroadcast$5(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->prelaunchApp(Ljava/lang/String;I)Z

    return-void
.end method

.method private synthetic lambda$restrictNetworkConnection$6(IZ)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mNms:Landroid/os/INetworkManagementService;

    invoke-interface {p0, p1, p2}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "PRELService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set network connection rules for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method private synthetic lambda$runWatchDogForApp$0(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrelWatchDog for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run watchDog for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getAppWatchdogRemainingTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getAppWatchdogRemainingTimeMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "PRELService"

    const-string v2, "WatchDog interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v1

    const/16 v2, 0x1e

    const/16 v3, 0x3c

    if-ge v1, v2, :cond_1

    const-string v1, "PRELService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WatchDog timed out for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WatchDog timed out"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    :cond_2
    const-string p0, "PRELService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatchDog finished for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private synthetic lambda$setPidForPrelaunchedAppAsync$2(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setPid(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$setStartExecutionComplete$4(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    const-string p0, "PRELService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Try to set stage for non prelaunched app "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p1

    monitor-enter p1

    const/16 p2, 0xd

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private synthetic lambda$setTaskProcessedForPrelaunchedAppAsync$3(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p1, "PRELService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity stopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public bootCompletedBroadcastReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/appprelauncher/AppPrelaunchService$3;

    invoke-direct {v2, p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$3;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final checkStateAndClearIfNeeded(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x28

    invoke-virtual {p1, p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not alive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRELService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->clearPackage(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public final clearPackage(Ljava/lang/String;I)V
    .locals 8

    const-string v0, ", error: "

    const-string v1, "PRELService"

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t remove recent task for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-class p0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    const/4 v4, 0x1

    const/16 v5, 0xe

    const/16 v6, 0x8

    :try_start_1
    const-string v7, "clear data"

    move v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerInternal;->cancelJobsForUid(IZIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t clear scheduled jobs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-class p0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/AlarmManagerInternal;

    :try_start_2
    invoke-interface {p0, p2}, Lcom/android/server/AlarmManagerInternal;->removeAlarmsForUid(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t clear pending alarms for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "PRELService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dump service requested for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "History: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", process is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "still alive"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "killed"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Active prelaunched apps: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", process is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string/jumbo p3, "still alive"

    goto :goto_3

    :cond_3
    const-string/jumbo p3, "killed"

    :goto_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final executeAsync(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    :cond_1
    const/4 p1, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mStorage:Lcom/android/server/appprelauncher/PrelauncherStorage;

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->blockedActivities:Ljava/util/Set;

    invoke-virtual {v2, p0}, Lcom/android/server/appprelauncher/PrelauncherStorage;->getBlockedActivities(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/server/SpegService;->isInBlockList(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is skipped due to blocklist"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PRELService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->FORCE_PREL:Z

    if-eqz p0, :cond_3

    move-object p1, p2

    :cond_3
    return-object p1

    :cond_4
    return-object p2

    :cond_5
    :goto_0
    return-object p1
.end method

.method public final getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getPackageUid(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppIds:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p2, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getPrelaunchedAppByIntent(Landroid/content/Intent;I)Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getPackageUid(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunched()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result p1

    const/16 v1, 0xf

    if-lt p1, v1, :cond_3

    invoke-virtual {p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process did not survive for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    const-string v1, "App process did not survive"

    invoke-virtual {p2, v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDeathReason(Ljava/lang/String;)V

    const/16 v1, 0x3c

    invoke-virtual {p2, v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    return-object p2

    :cond_4
    :goto_0
    const-string p0, "PRELService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to handle non prelaunched activity "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public handleActivityExecution(Landroid/content/Intent;IILandroid/app/ActivityOptions;)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getPrelaunchedAppByIntent(Landroid/content/Intent;I)Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p2

    const/16 v0, -0x60

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result v1

    const-string v2, "PRELService"

    if-ne v1, p3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App tries to start new activity while prelaunch "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callingUid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result p0

    const/16 p2, 0x1e

    if-ge p0, p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Allow start "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->setPrelaunch()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Don\'t resume "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    return v0

    :cond_2
    iget-object p3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p0, "GlobalLock has already been acquired"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->setPrelaunch()V

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    return v0

    :cond_3
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/appprelauncher/AppPrelaunchService;->startPrelaunchedAppByUser(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public handlePrelaunchedAppDied(Landroid/app/ApplicationExitInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReasonsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isRestartedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Landroid/app/ApplicationExitInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "PRELService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip handling of process death for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with reason "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "PRELService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process die of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    const/16 v0, 0x3c

    invoke-virtual {v1, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public initCoreServices()Z
    .locals 3

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    const-string v2, "PRELService"

    if-nez v0, :cond_0

    const-string p0, "Could not get package manager"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mNms:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_1

    const-string p0, "Cannot get NetworkManagementService"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    if-nez v0, :cond_2

    const-string p0, "Cannot get PermissionManagerServiceInternal"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->startGlobalWatchDog()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 p0, 0x1

    return p0
.end method

.method public isAppPrelaunched(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunched()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAppPrelaunched(Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isAppPrelaunched(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCallerUidAllowed()Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

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

.method public final isDeviceInteractive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDexoptLimited()Z
    .locals 1

    const-string/jumbo p0, "sys.dexopt.ctrl"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isExtractedNativeLibInBlockList(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mStorage:Lcom/android/server/appprelauncher/PrelauncherStorage;

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->nativeLibBlockList:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/server/appprelauncher/PrelauncherStorage;->getBlockedLibs(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v0}, Lcom/android/server/SpegService;->isInBlockList(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_2

    return p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :catch_0
    move-exception p0

    const-string v0, "PRELService"

    const-string v1, "SecurityException occurred while checking libraries"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p1

    :cond_4
    :goto_2
    return v2
.end method

.method public final isIncludedNativeLibInBlockList(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mStorage:Lcom/android/server/appprelauncher/PrelauncherStorage;

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->nativeLibBlockList:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/server/appprelauncher/PrelauncherStorage;->getBlockedLibs(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getIncludedLibrariesFromApk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p1

    array-length v4, p1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    invoke-static {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getIncludedLibrariesFromApk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/SpegService;->isInBlockList(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2

    :catch_0
    move-exception p0

    const-string p1, "PRELService"

    const-string v0, "Exception occurred while checking libraries"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final isKidsHome()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p0

    const-string v0, "com.sec.android.app.kidshome"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isPackageBlockListed(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mStorage:Lcom/android/server/appprelauncher/PrelauncherStorage;

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->packageBlockList:Ljava/util/Set;

    invoke-virtual {v1, p0}, Lcom/android/server/appprelauncher/PrelauncherStorage;->getBlockedPackages(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/SpegService;->isInBlockList(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public isRestartedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Landroid/app/ApplicationExitInfo;)Z
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunchedTimeNs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result p1

    const/16 v2, 0xf

    if-gt p1, v2, :cond_0

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isSkippableExitReason(Landroid/app/ApplicationExitInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSkippableExitReason(Landroid/app/ApplicationExitInfo;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public killApp(ILjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isCallerUidAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "PRELService"

    const-string p1, "Caller does not have permission to kill prelaunched app"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->stopPrelaunch(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PRELService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App is already killed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUserId()I

    move-result v5

    const-string/jumbo v6, "prel"

    const/16 v7, 0xd

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result p0

    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Landroid/os/Process;->waitForProcessDeath(II)V

    :cond_1
    const-string p0, "PRELService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prelaunched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has been killed. Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p0

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDeathReason(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setKilled()V

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result p2

    const/16 v0, 0x1e

    if-ge p2, v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p2, "PRELService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to kill "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 9

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;

    invoke-direct {v1, p0}, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    const/4 p1, 0x0

    invoke-virtual {p6, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public final performInstallActionBroadcast(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "PRELService"

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->FORCE_PREL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Forced prelaunch existed app"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_2

    if-eq p1, v3, :cond_2

    new-instance v1, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->executeAsync(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received incomplete intent. Package name: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public prelaunchApp(Ljava/lang/String;I)Z
    .locals 1

    const/16 v0, 0x28

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->prelaunchAppTillStage(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public prelaunchAppTillStage(Ljava/lang/String;II)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    const-string v4, "PRELService"

    const-string v5, "Started, Samsung PreL v3.1"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isCallerUidAllowed()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v0, "PRELService"

    const-string v1, "Caller does not have permission to prelaunch app"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v1, "PRELService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unique Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not an app Id"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    iget-object v4, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/appprelauncher/AppPrelaunchService;->shouldSkipPrelForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/server/appprelauncher/AppPrelaunchService;->FORCE_PREL:Z

    if-eqz v6, :cond_2

    const-string v6, "PRELService"

    const-string v7, "Forced prelaunch"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v5

    :cond_3
    :goto_0
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v1, "PRELService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match its uid "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    iget-object v6, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserId()I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    if-eq v15, v6, :cond_5

    const-string v1, "PRELService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not related to current userId "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    invoke-virtual {v1, v2, v15}, Lcom/android/server/appprelauncher/AppPrelaunchService;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    if-nez v11, :cond_6

    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have allowed launchable intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    iget-object v6, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/server/SpegService;->getPidOf(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7
    iget-object v6, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityTaskManager$RootTaskInfo;

    move v8, v5

    :goto_1
    iget-object v9, v7, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length v9, v9

    if-ge v8, v9, :cond_8

    iget-object v9, v7, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    aget v9, v9, v8

    if-ne v9, v15, :cond_9

    iget-object v9, v7, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    aget-object v9, v9, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found task for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_a
    new-instance v6, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-direct {v6, v1, v4, v3, v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/pm/pkg/AndroidPackage;II)V

    iget-object v4, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v7, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mIntentTracker:Lcom/android/server/appprelauncher/IntentTracker;

    invoke-virtual {v7, v2, v15}, Lcom/android/server/appprelauncher/IntentTracker;->hasTrack(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User has already launched app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return v5

    :cond_b
    iget-object v7, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    const/16 v14, 0x28

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v8

    if-lt v8, v14, :cond_d

    invoke-virtual {v7}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isProcessAlive()Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_2

    :cond_c
    const-string v8, "PRELService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Process did not survive for previous "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    const-string v9, "App process did not survive"

    invoke-virtual {v7, v9}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDeathReason(Ljava/lang/String;)V

    const/16 v9, 0x3c

    invoke-virtual {v7, v9}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v7}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_d
    :goto_2
    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already being prelaunched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return v5

    :cond_e
    :goto_3
    iget-object v7, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppIds:Landroid/util/ArrayMap;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    const-string v4, "PRELService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start prelaunching "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " until stage "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x32

    const/4 v4, 0x1

    :try_start_5
    invoke-virtual {v6, v4}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->revokeOrGrantWakeLockPermissionIfNeeded(Z)V

    invoke-virtual {v1, v0, v4}, Lcom/android/server/appprelauncher/AppPrelaunchService;->restrictNetworkConnection(IZ)V

    invoke-virtual {v6, v4}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->createOrDeleteMarkerFiles(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mIntentTracker:Lcom/android/server/appprelauncher/IntentTracker;

    invoke-virtual {v0, v2, v15}, Lcom/android/server/appprelauncher/IntentTracker;->hasTrack(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    if-ge v0, v3, :cond_12

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v7

    monitor-enter v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v0, 0xa

    :try_start_6
    invoke-virtual {v6, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setPrelaunch()V

    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->runWatchDogForApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    const-string v7, "PRELService"

    const-string v8, "Start activity"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/android/server/appprelauncher/AppPrelaunchService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v8, 0x0

    const-string v9, "com.samsung.speg"

    const/4 v10, 0x0

    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move v4, v14

    move-object/from16 v14, v16

    move/from16 v20, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v0

    move/from16 v19, v20

    :try_start_8
    invoke-virtual/range {v7 .. v19}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    iget v7, v0, Landroid/app/WaitResult;->result:I

    invoke-static {v7}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v0, "PRELService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity started, pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v7

    monitor-enter v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/16 v0, 0xf

    :try_start_9
    invoke-virtual {v6, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/16 v0, 0x1e

    :try_start_a
    invoke-virtual {v1, v6, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->waitForAppTillStageInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-virtual {v6, v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->revokeOrGrantWakeLockPermissionIfNeeded(Z)V

    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->checkStateAndClearIfNeeded(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    if-eq v0, v4, :cond_10

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    if-ne v0, v3, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    goto :goto_5

    :cond_10
    :goto_4
    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " prelaunched, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :goto_5
    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0

    :cond_11
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", res="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/app/WaitResult;->result:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_2
    move-exception v0

    move v4, v14

    :goto_6
    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_12
    move v4, v14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "App was launched by user"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move v4, v14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "createSpegMarkerFile failed"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move v4, v14

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move v4, v14

    :goto_7
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDeathReason(Ljava/lang/String;)V

    const-string v7, "PRELService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error during prelaunching of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    invoke-virtual {v6, v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->revokeOrGrantWakeLockPermissionIfNeeded(Z)V

    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->checkStateAndClearIfNeeded(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    if-eq v0, v4, :cond_15

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    if-ne v0, v3, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    goto :goto_9

    :cond_15
    :goto_8
    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " prelaunched, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :goto_9
    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    const-string v2, "Finish prelaunch of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_5
    move-exception v0

    :goto_b
    invoke-virtual {v6, v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->revokeOrGrantWakeLockPermissionIfNeeded(Z)V

    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->checkStateAndClearIfNeeded(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v2

    if-eq v2, v4, :cond_17

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v2

    if-ne v2, v3, :cond_16

    goto :goto_c

    :cond_16
    invoke-virtual {v1, v6}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    goto :goto_d

    :cond_17
    :goto_c
    const-string v1, "PRELService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " prelaunched, pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    const-string v1, "PRELService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish prelaunch of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catchall_6
    move-exception v0

    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/appprelauncher/AppPrelaunchService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$2;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong lock sequence for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-virtual {v2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v0

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppIds:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final restrictNetworkConnection(IZ)V
    .locals 1

    sget-boolean v0, Lcom/android/server/appprelauncher/AppPrelaunchService;->RESTRICT_NETWORK:Z

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip network connection restriction for uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PRELService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final runWatchDogForApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .locals 1

    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPidForPrelaunchedAppAsync(II)V
    .locals 1

    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSetupWizardFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSetupWizardFinished:Z

    return-void
.end method

.method public setSmartSwitchState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSmartSwitchState:Z

    return-void
.end method

.method public setStartExecutionComplete(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTaskProcessedForPrelaunchedAppAsync(I)V
    .locals 1

    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final shouldSkipPrelForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mStorage:Lcom/android/server/appprelauncher/PrelauncherStorage;

    invoke-virtual {v0}, Lcom/android/server/appprelauncher/PrelauncherStorage;->getScpmStopRule()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled by SCPM"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isDexoptLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled due to high temperature"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSmartSwitchState:Z

    if-eqz v0, :cond_2

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled until SmartSwitch is finished"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSetupWizardFinished:Z

    if-nez v0, :cond_3

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled until setup wizard is finished"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v4, 0x0

    const/16 v6, 0x3e8

    move-object v3, v0

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isOdm()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isPackageBlockListed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "PRELService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for package "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const-string p0, "PRELService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for instrumented package "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    const-string v4, "com.samsung.android.speg.prelauncher.disabled"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p0, "PRELService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled in app manifest "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled for incremental-fs"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled for shared package"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, v8}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled for app requires permission review"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v2

    const-string v4, "com.sec.android.easyMover"

    invoke-virtual {v2}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "PRELService"

    const-string v4, "Feature is disabled for smart switch installer"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string v2, "PRELService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find an installation info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isKidsHome()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string p0, "PRELService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to KidsHome"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string p0, "PRELService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for debuggable "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isSaveStateDisallowed()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string p0, "PRELService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for heavy-weight "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FeatureInfo;

    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_f

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget v4, v4, Landroid/content/pm/FeatureInfo;->flags:I

    if-eqz v4, :cond_f

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled for apps that require BT"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_10
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mSpeg:Lcom/android/server/SpegService;

    invoke-virtual {v2, p1}, Lcom/android/server/SpegService;->hasPrivilegedPermissions(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled for privileged apps"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isExtractedNativeLibInBlockList(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isIncludedNativeLibInBlockList(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_0

    :cond_12
    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sget v2, Lcom/android/server/appprelauncher/AppPrelaunchService;->ACTIVE_APPS_LIMIT:I

    if-lt v0, v2, :cond_13

    const-string p0, "PRELService"

    const-string v0, "Feature is disabled due to limit on number of prelaunched apps"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return v1

    :cond_13
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedAppHistory:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    sget v2, Lcom/android/server/appprelauncher/AppPrelaunchService;->PRELAUNCH_ATTEMPTS_LIMIT:I

    if-lt v0, v2, :cond_14

    const-string p0, "PRELService"

    const-string v0, "Feature is disabled due to limit on number of prelaunch attempts"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return v1

    :cond_14
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService;->isDeviceInteractive()Z

    move-result p0

    if-nez p0, :cond_15

    const-string p0, "PRELService"

    const-string p1, "Feature is disabled in non-interactive device state"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_15
    return v3

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_16
    :goto_0
    const-string p0, "PRELService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature is disabled for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to unsupported library"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_17
    :goto_1
    const-string p0, "PRELService"

    const-string p1, "Feature is disabled for system apps"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final startGlobalWatchDog()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/appprelauncher/AppPrelaunchService$1;

    invoke-direct {v1, p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$1;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final startPrelaunchedAppByUser(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    const-string p2, "PRELService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User starts "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result p3

    const/4 v0, 0x0

    const/16 v1, 0x14

    if-lt p3, v1, :cond_0

    const/16 p3, 0x1e

    invoke-virtual {p0, p1, p3}, Lcom/android/server/appprelauncher/AppPrelaunchService;->waitForAppTillStageInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)Z

    move p3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    const/4 p3, 0x1

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->revokeOrGrantWakeLockPermissionIfNeeded(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p3

    monitor-enter p3

    const/16 p2, 0x32

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    const-string p2, "Untracked because user started"

    invoke-virtual {p1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setDeathReason(Ljava/lang/String;)V

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    const/16 p0, -0x60

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public stopPrelaunch(ILjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService;->mPrelaunchedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunched()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result p1

    const/16 v3, 0x32

    if-lt p1, v3, :cond_1

    monitor-exit v2

    return v0

    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    const/16 p1, 0x3c

    invoke-virtual {v1, p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->removePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const-string p0, "PRELService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to stop non-prelaunched app: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final waitForAppTillStageInternal(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;I)Z
    .locals 4

    const-string p0, "PRELService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait for app finish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " till stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object p0

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    if-ge v0, p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getAppWatchdogRemainingTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Possible endless waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " till stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, "PRELService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " till stage: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getAppWatchdogRemainingTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p0, "PRELService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " till stage: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    const-string v0, "PRELService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " till stage: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method
