.class public Landroid/net/ConnectivityModuleConnector;
.super Ljava/lang/Object;
.source "ConnectivityModuleConnector.java"


# static fields
.field private static final CONFIG_ALWAYS_RATELIMIT_NETWORKSTACK_CRASH:Ljava/lang/String; = "always_ratelimit_networkstack_crash"

.field private static final CONFIG_MIN_CRASH_INTERVAL_MS:Ljava/lang/String; = "min_crash_interval"

.field private static final CONFIG_MIN_UPTIME_BEFORE_CRASH_MS:Ljava/lang/String; = "min_uptime_before_crash"

.field private static final DEFAULT_MIN_CRASH_INTERVAL_MS:J = 0x1499700L

.field private static final DEFAULT_MIN_UPTIME_BEFORE_CRASH_MS:J = 0x1b7740L

.field private static final IN_PROCESS_SUFFIX:Ljava/lang/String; = ".InProcess"

.field private static final PREFS_FILE:Ljava/lang/String; = "ConnectivityModuleConnector.xml"

.field private static final PREF_KEY_LAST_CRASH_TIME:Ljava/lang/String; = "lastcrash_time"

.field private static final TAG:Ljava/lang/String; = "ConnectivityModuleConnector"

.field private static sInstance:Landroid/net/ConnectivityModuleConnector;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

.field private final mHealthListeners:Landroid/util/ArraySet;


# direct methods
.method public static bridge synthetic -$$Nest$mlogi(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeCrashWithTerribleFailure(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcheckModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->checkModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 81
    new-instance v0, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;-><init>(Landroid/net/ConnectivityModuleConnector$DependenciesImpl-IA;)V

    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;-><init>(Landroid/net/ConnectivityModuleConnector$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityModuleConnector$Dependencies;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    .line 86
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    return-void
.end method

.method private static checkModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1

    .line 289
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 291
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Networking module does not have permission "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getInstance()Landroid/net/ConnectivityModuleConnector;
    .locals 2

    const-class v0, Landroid/net/ConnectivityModuleConnector;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Landroid/net/ConnectivityModuleConnector;

    invoke-direct {v1}, Landroid/net/ConnectivityModuleConnector;-><init>()V

    sput-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;

    .line 96
    :cond_0
    sget-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .line 354
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    .line 355
    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "ConnectivityModuleConnector.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 357
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    const-string v1, "Error loading shared preferences"

    .line 359
    invoke-direct {p0, v1, v0}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 384
    sget-object p0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 388
    sget-object p0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 393
    sget-object p0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 0

    .line 397
    sget-object p0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    const/4 v3, 0x0

    .line 298
    :try_start_0
    invoke-direct {v1, v0, v3}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "connectivity"

    const-string/jumbo v8, "min_crash_interval"

    const-wide/32 v9, 0x1499700

    .line 302
    invoke-static {v7, v8, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v9, "connectivity"

    const-string/jumbo v10, "min_uptime_before_crash"

    const-wide/32 v11, 0x1b7740

    .line 304
    invoke-static {v9, v10, v11, v12}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v11, "connectivity"

    const-string v12, "always_ratelimit_networkstack_crash"

    const/4 v13, 0x0

    .line 306
    invoke-static {v11, v12, v13}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 309
    invoke-direct/range {p0 .. p0}, Landroid/net/ConnectivityModuleConnector;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 310
    invoke-direct {v1, v12}, Landroid/net/ConnectivityModuleConnector;->tryGetLastCrashTime(Landroid/content/SharedPreferences;)J

    move-result-wide v14

    .line 323
    sget-boolean v16, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/16 v17, 0x1

    if-eqz v16, :cond_0

    if-nez v11, :cond_0

    move/from16 v11, v17

    goto :goto_0

    :cond_0
    move v11, v13

    :goto_0
    cmp-long v3, v3, v9

    if-gez v3, :cond_1

    move/from16 v3, v17

    goto :goto_1

    :cond_1
    move v3, v13

    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v4, v14, v9

    if-eqz v4, :cond_2

    cmp-long v4, v14, v5

    if-gez v4, :cond_2

    move/from16 v4, v17

    goto :goto_2

    :cond_2
    move v4, v13

    :goto_2
    if-eqz v4, :cond_3

    add-long/2addr v14, v7

    cmp-long v4, v5, v14

    if-gez v4, :cond_3

    move/from16 v13, v17

    :cond_3
    if-nez v11, :cond_6

    if-nez v3, :cond_4

    if-eqz v13, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    .line 342
    iget-object v3, v1, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 344
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    :try_start_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;

    .line 346
    invoke-interface {v3, v2}, Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;->onNetworkStackFailure(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 344
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 349
    :cond_5
    monitor-exit p0

    return-void

    .line 334
    :cond_6
    :try_start_5
    invoke-direct {v1, v12, v5, v6}, Landroid/net/ConnectivityModuleConnector;->tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V

    .line 335
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryGetLastCrashTime(Landroid/content/SharedPreferences;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    const-string/jumbo v2, "lastcrash_time"

    .line 367
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p1

    const-string v2, "Error getting last crash time"

    .line 369
    invoke-direct {p0, v2, p1}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method private tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 377
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "lastcrash_time"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "Error writing last crash time"

    .line 379
    invoke-direct {p0, p2, p1}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Network stack init"

    .line 104
    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting networking module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 219
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    const/4 v2, 0x1

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/net/ConnectivityModuleConnector$Dependencies;->getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/net/ConnectivityModuleConnector$Dependencies;->getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string p1, "Starting networking module in network_stack process"

    .line 226
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Starting networking module in system_server process"

    .line 228
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    if-nez v1, :cond_1

    const-string p2, "Could not resolve the networking module"

    .line 232
    invoke-direct {p0, p2, p1}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 240
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;

    invoke-direct {v2, p0, p2, p3, p1}, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;-><init>(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection-IA;)V

    const/16 p1, 0x41

    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p1, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not bind to networking module in-process, or in app with "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "Networking module service start requested"

    .line 249
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    return-void
.end method
