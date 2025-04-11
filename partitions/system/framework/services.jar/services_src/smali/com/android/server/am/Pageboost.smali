.class public abstract Lcom/android/server/am/Pageboost;
.super Ljava/lang/Object;
.source "Pageboost.java"


# static fields
.field public static final BOOTFILE_ENABLED:Z

.field public static final PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

.field public static final PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

.field public static PAGEBOOST_DAEMON_ENABLED:Z = false

.field public static final PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

.field public static final PAGEBOOST_IO_PREFETCH_ENABLED:Z

.field public static PAGEBOOST_KERNEL_ENABLED:Z = false

.field public static final PAGEBOOST_MINIMIZE:Z

.field public static final PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

.field public static final TAG:Ljava/lang/String; = "Pageboost"

.field public static mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public static mAppDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

.field public static mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

.field public static mContext:Landroid/content/Context;

.field public static mFileDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

.field public static mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

.field public static mPackageReceiver:Landroid/content/BroadcastReceiver;

.field public static mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

.field public static mReceiver:Landroid/content/BroadcastReceiver;

.field public static mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field public static mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field public static mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field public static munlock_firstapp:Z

.field public static sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

.field public static sHandlerThread:Lcom/android/server/ServiceThread;

.field public static user_unlock_done:Z


# direct methods
.method public static bridge synthetic -$$Nest$sfgetPAGEBOOST_ACTIVE_LAUNCH_ENABLED()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPAGEBOOST_IGNORE_DRAM_SPECIFICATION()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPAGEBOOST_IO_PREFETCH_ENABLED()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPAGEBOOST_VRAMDISK_WITHOUT_PREDICT()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmAppDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmBootFileManager()Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmZygote64FileMap()Lcom/android/server/am/Pageboost$FileMapList;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmZygoteFileMap()Lcom/android/server/am/Pageboost$FileMapList;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsHandler()Lcom/android/server/am/Pageboost$PageboostHandler;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetuser_unlock_done()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputmBootFileManager(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputuser_unlock_done(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$smaddPackage(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdelayedInitPageboost()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/am/Pageboost;->delayedInitPageboost()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smdeleteDB(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost;->getPidFromPackageName(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smrealupdatePackages()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/am/Pageboost;->realupdatePackages()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smremovePackage(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendMessage(ILjava/lang/String;IIII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendMessageWithBundle(ILandroid/os/Bundle;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/Pageboost;->sendMessageWithBundle(ILandroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.config.pageboost.io_prefetch.enabled"

    const-string/jumbo v1, "true"

    .line 127
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo v0, "ro.config.pageboost.ignore_dram_spec"

    const-string v2, "false"

    .line 130
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    const-string/jumbo v0, "ro.config.pageboost.active_launch.enabled"

    .line 132
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    const-string/jumbo v0, "ro.config.pageboost.active_launch.timeout"

    const/16 v3, 0x64

    .line 134
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

    const-string/jumbo v0, "ro.config.pageboost.vramdisk.minimize"

    .line 136
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    const-string/jumbo v0, "ro.config.pageboost.vramdisk.without_predict"

    .line 138
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

    const-string/jumbo v0, "ro.config.pageboost.vramdisk.bootfile.enabled"

    .line 140
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->BOOTFILE_ENABLED:Z

    const/4 v0, 0x1

    .line 147
    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 148
    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    const/4 v0, 0x0

    .line 151
    sput-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 152
    sput-object v0, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 153
    sput-object v0, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 154
    sput-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 155
    sput-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 157
    sput-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 158
    sput-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    sput-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 161
    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    .line 162
    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 163
    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 165
    sput-object v0, Lcom/android/server/am/Pageboost;->mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 166
    sput-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 167
    sput-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 169
    sput-object v0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    const/4 v0, 0x0

    .line 225
    sput-boolean v0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    .line 233
    sput-boolean v0, Lcom/android/server/am/Pageboost;->munlock_firstapp:Z

    .line 236
    invoke-static {}, Lcom/android/server/am/Pageboost;->staticInitialize()V

    return-void
.end method

.method public static addPackage(Ljava/lang/String;)V
    .locals 3

    .line 3129
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_0

    return-void

    .line 3132
    :cond_0
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3133
    iput v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    const/4 v1, 0x0

    .line 3135
    :try_start_0
    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 3136
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 3137
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 3138
    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3144
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 3145
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add app to global @ runtime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static checkPageboostDaemonSupport()V
    .locals 3

    const-string v0, "init.svc.pageboostd"

    const-string v1, ""

    .line 391
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "running"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    .line 392
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPageboostDaemonSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static checkPageboostKernelSupport()V
    .locals 3

    .line 375
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/io_record_control"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "io_record_control file exists: kernel support = true"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 380
    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 381
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "io_record_control file does not exist: kernel support = false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "io_record_control file open failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPageboostKernelSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static delayedInitPageboost()V
    .locals 5

    .line 522
    invoke-static {}, Lcom/android/server/am/Pageboost;->checkPageboostKernelSupport()V

    .line 523
    invoke-static {}, Lcom/android/server/am/Pageboost;->checkPageboostDaemonSupport()V

    .line 525
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "abort delayedInitPageboost"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 530
    :cond_0
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isRecordingCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    invoke-static {}, Lcom/android/server/am/Pageboost$IoRecord;->emergencyReset()V

    .line 532
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "emergency reset during bootup"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 537
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.launcher.action.RUN_APP"

    .line 538
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.ACTION_PAGEBOOST"

    .line 539
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

    .line 540
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 541
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 542
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    .line 543
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 544
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    sget-object v1, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.android.server.am.permission.PAGEBOOST"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 547
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 548
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 549
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 550
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 551
    sget-object v1, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 554
    invoke-static {}, Lcom/android/server/am/Pageboost;->openFileDB()Z

    move-result v0

    .line 555
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->openAppDB(Z)V

    const-string/jumbo v0, "zygote64"

    .line 558
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    const-string/jumbo v0, "zygote"

    .line 559
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    const-string/jumbo v0, "system_server"

    .line 560
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 563
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->initBigDataProxy()V

    .line 565
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostdProxy;->initPageboostdProxy()V

    goto :goto_0

    .line 572
    :cond_2
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Pageboost Delayed Init Failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static deleteDB(Ljava/lang/String;)V
    .locals 1

    .line 459
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 460
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 3432
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3433
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "minimized: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", kernel support: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    .line 3434
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", daemon support: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    .line 3435
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3433
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_5

    .line 3438
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 3441
    :cond_1
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    const-string/jumbo v1, "purge"

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3442
    sget-object p1, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    .line 3443
    invoke-static {p1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->clearTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p1, "DB is purged. Please type \'adb reboot\'"

    .line 3444
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "(!CAUTION: Do not reboot using \'power key\'. Unless DB will be restored)"

    .line 3445
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "app DB not exists. Try again after 5 seconds"

    .line 3447
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 3451
    :cond_3
    array-length v1, p1

    const/4 v3, 0x2

    if-le v1, v3, :cond_4

    const-string v1, "heimdall"

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    const-string p1, "== Pageboost dump start =="

    .line 3455
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3456
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Pageboost Configurations"

    .line 3457
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore dram spec: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prefetch enabled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alp enabled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3461
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prefetch level: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->-$$Nest$sfgetPAGEBOOST_IO_PREFETCH_LEVEL()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "prefetch app count: 1"

    .line 3462
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vramdisk enabled: (config) false (decision_by_dram) "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->-$$Nest$sfgetENABLED()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "memprep enabled: false"

    .line 3464
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3465
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Pageboost AppLRU Info"

    .line 3466
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    sget-object p1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {p1, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->print(Ljava/io/PrintWriter;)V

    .line 3468
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Pageboost Vramdisk Info"

    .line 3469
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "disabled"

    .line 3475
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3477
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Action Log"

    .line 3478
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3479
    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->print(Ljava/io/PrintWriter;)V

    .line 3480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- Bigdata: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->-$$Nest$sfgetENABLED()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  String: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->-$$Nest$smmakeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "== pageboost dump end =="

    .line 3481
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    .line 3483
    :catch_0
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "failed to dumpInfo by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static gatherLaunchTime(Ljava/lang/String;II)V
    .locals 8

    const-string v0, " "

    if-nez p0, :cond_0

    return-void

    .line 3308
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/Pageboost;->munlock_firstapp:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->hasPinnedFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3309
    sget-object v1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "launcher"

    .line 3310
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.settings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.samsung.android.mtp"

    .line 3311
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0xbb8

    .line 3312
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    .line 3316
    :cond_1
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "com.att.iqi"

    .line 3321
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3322
    sget-object v1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch time gathered : pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v2, 0x9

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 3324
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3326
    :catch_0
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "failed to gatherLaunchTime by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;
    .locals 2

    .line 452
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 453
    invoke-static {p0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 455
    array-length v0, p0

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/server/am/Pageboost$FileMapList;

    const/4 v1, 0x0

    aget p0, p0, v1

    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getPidFromPackageName(Ljava/lang/String;Z)I
    .locals 5

    .line 401
    sget-object v0, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 402
    :try_start_0
    sget-object v1, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 403
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_2

    .line 405
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 406
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    .line 409
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 417
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "cch-empty"

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 418
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 425
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static initPageboost(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 12

    .line 435
    :try_start_0
    sput-object p0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 436
    sput-object p1, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 438
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x1388

    .line 439
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    .line 442
    :cond_0
    sget-boolean p0, Lcom/android/server/am/Pageboost;->BOOTFILE_ENABLED:Z

    if-eqz p0, :cond_1

    const/16 v0, 0x17

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 443
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const v11, 0x927c0

    .line 444
    invoke-static/range {v6 .. v11}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "failed to initPageboost by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static isPageboostMinimized()Z
    .locals 1

    .line 396
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_KERNEL_ENABLED:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_DAEMON_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static moveTaskToFront(Ljava/lang/String;)V
    .locals 8

    .line 3333
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 3338
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToFront : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    .line 3341
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3344
    :catch_0
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v0, "failed to moveTaskToFront by exception"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static onAppLaunch(Landroid/content/Intent;)V
    .locals 3

    .line 3257
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    const-string v0, "android.intent.action.MAIN"

    .line 3258
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.category.LAUNCHER"

    .line 3259
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3260
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3263
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 3264
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppLaunch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    return-void

    .line 3270
    :cond_1
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isRecordingCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0xe

    .line 3271
    invoke-static {v0, p0, v1}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    const/16 v2, 0x7d0

    .line 3273
    invoke-static {v0, p0, v2}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V

    :goto_0
    const/16 v0, 0x11

    .line 3277
    invoke-static {v0, p0, v1}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    .line 3280
    :catch_0
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v0, "failed to onAppLaunch by exception"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static onProcStatusChange(ILjava/lang/String;I)V
    .locals 7

    .line 3351
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x10

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v2, p1

    move v4, p2

    move v5, p0

    .line 3355
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3357
    :catch_0
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "failed to onProcStatusChange by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static openAppDB(Z)V
    .locals 5

    const-string v0, "/data/misc/pageboost/pageboost_app_db.db"

    const-string v1, "delete app db and open"

    if-eqz p0, :cond_0

    .line 467
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    .line 471
    :cond_0
    new-instance p0, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 473
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 474
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v2, "getWritableDatabase for appDB"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 487
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception for appDB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 480
    sget-object v2, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException for appDB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "malformed database"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 482
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    .line 484
    sget-object p0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 477
    :catch_2
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v0, "SQLiteDatabaseCorruptException for appDB"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget-object p0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    :goto_0
    return-void
.end method

.method public static openFileDB()Z
    .locals 6

    .line 493
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    sget-object v1, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    const/4 v1, 0x1

    .line 494
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    const/4 v0, 0x0

    .line 496
    :try_start_0
    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 497
    sget-object v2, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v3, "getWritableDatabase for fileDB"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 511
    sget-object v2, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception for fileDB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    .line 503
    sget-object v3, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException for fileDB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "malformed database"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "delete fileDB and open"

    .line 506
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/misc/pageboost/pageboost_file_db.db"

    .line 507
    invoke-static {v0}, Lcom/android/server/am/Pageboost;->deleteDB(Ljava/lang/String;)V

    .line 508
    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    goto :goto_1

    .line 500
    :catch_2
    sget-object v1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v2, "SQLiteDatabaseCorruptException for fileDB"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v1, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 514
    :goto_1
    sget-object v1, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 515
    invoke-static {v1}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->initFileDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return v0
.end method

.method public static prefetchPackage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    .line 3495
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 3498
    :cond_0
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v1, :cond_1

    .line 3499
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "Pageboost pkg list is not initialized yet"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-nez p0, :cond_2

    .line 3503
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "null pkg is requested"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3507
    :cond_2
    invoke-virtual {v1, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 3509
    sget-object p1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not in Pageboost pkg list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const-string v2, "alp"

    .line 3513
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3514
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->activeLaunch()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 3518
    :cond_4
    invoke-static {}, Lcom/android/server/am/Pageboost;->startActiveLaunchTimeout()V

    goto :goto_0

    .line 3520
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->execute()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3521
    sget-object p1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to prefetch. maybe not captured yet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3526
    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prefetchRequested,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    .line 3530
    :catch_0
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string p1, "failed to prefetchPackage by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static realupdatePackages()V
    .locals 9

    .line 3170
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3174
    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 3180
    :cond_1
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-eqz v0, :cond_2

    .line 3181
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reinit global list"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3190
    sput-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 3193
    :cond_2
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3194
    sget-object v1, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->restoreAppLRU(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v1

    const/16 v2, 0x80

    .line 3196
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3197
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 3199
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 3208
    :cond_4
    sget-object v4, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    .line 3211
    new-instance v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v7}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 3212
    invoke-virtual {v1, v5, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 3213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add app to global : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 3215
    invoke-virtual {v5, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    .line 3216
    iput v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    goto :goto_0

    .line 3219
    :cond_5
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 3220
    invoke-virtual {v5, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    .line 3221
    iput v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    goto :goto_0

    .line 3227
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->removeNotInstalled()V

    .line 3228
    sput-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    return-void

    .line 3175
    :cond_7
    :goto_1
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mContext or mPredictor is not initialized yet."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static removePackage(Ljava/lang/String;)V
    .locals 1

    .line 3155
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_0

    return-void

    .line 3158
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->removeFromName(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3160
    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static sendMessage(ILjava/lang/String;IIII)V
    .locals 2

    .line 2345
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "pkg"

    .line 2347
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ltz p2, :cond_1

    const-string/jumbo p1, "launchtime"

    .line 2350
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-ltz p3, :cond_2

    const-string/jumbo p1, "pid"

    .line 2353
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-ltz p4, :cond_3

    const-string/jumbo p1, "status"

    .line 2356
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2358
    :cond_3
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2359
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-lez p5, :cond_4

    .line 2361
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long p2, p5

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2363
    :cond_4
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public static sendMessageWithBundle(ILandroid/os/Bundle;I)V
    .locals 2

    .line 2326
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2327
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-lez p2, :cond_0

    .line 2329
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2331
    :cond_0
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public static sendMessageWithObject(ILjava/lang/Object;I)V
    .locals 2

    .line 2336
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    if-lez p2, :cond_0

    .line 2338
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2340
    :cond_0
    sget-object p1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public static setMlockConfiguration(J)V
    .locals 5

    const-wide v0, 0xc0000000L

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 240
    :goto_0
    sput-boolean v2, Lcom/android/server/am/Pageboost;->munlock_firstapp:Z

    .line 241
    sget-object v2, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dram size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " APP_LAUNCH_MUNLOCK_RAMSIZE: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static startActiveLaunch(Ljava/lang/String;)V
    .locals 8

    .line 3364
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 3372
    :cond_1
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start alp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x13

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    .line 3373
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 3375
    :catch_0
    sget-object p0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v0, "failed to startActiveLaunch by exception"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static startActiveLaunchTimeout()V
    .locals 7

    .line 3389
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 3393
    sget v6, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static staticInitialize()V
    .locals 4

    .line 251
    :try_start_0
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Static Initialization of Pageboost"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/android/server/am/Pageboost;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 255
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 256
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostHandler;

    sget-object v1, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 259
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostPredictor;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostPredictor;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 262
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->setConfiguration(J)V

    .line 268
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost;->setMlockConfiguration(J)V

    .line 271
    new-instance v0, Lcom/android/server/am/Pageboost$1;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$1;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    new-instance v0, Lcom/android/server/am/Pageboost$2;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$2;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "failed to staticInitialize by exception"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static stopActiveLaunch()V
    .locals 8

    .line 3380
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3384
    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop alp"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 3385
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static updatePackages()V
    .locals 8

    .line 3237
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3247
    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Update Packages"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x2710

    .line 3248
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3250
    :catch_0
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "failed to updatePackages by exception"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
