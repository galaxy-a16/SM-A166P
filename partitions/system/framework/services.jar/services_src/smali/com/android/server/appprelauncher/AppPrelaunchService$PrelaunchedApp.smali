.class public Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;
.super Ljava/lang/Object;
.source "AppPrelaunchService.java"


# instance fields
.field public final DEBUG:Z

.field public currentStage:I

.field public deathReason:Ljava/lang/String;

.field public final finalStage:I

.field public isBeingPrelaunched:Z

.field public isKilled:Z

.field public mAppWatchdogTimeMs:J

.field public final mHasWakeLockPermission:Z

.field public mPid:I

.field public mWakeLockRevoked:Z

.field public final packageName:Ljava/lang/String;

.field public final prelaunchedTimeNs:J

.field public final processName:Ljava/lang/String;

.field public final spegMarkerFileMisc:Ljava/io/File;

.field public final spegMarkerFilePkg:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 3

    .line 1211
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->DEBUG:Z

    const/4 p1, -0x1

    .line 1194
    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mPid:I

    const/4 p1, 0x0

    .line 1201
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->deathReason:Ljava/lang/String;

    .line 1203
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->prelaunchedTimeNs:J

    .line 1207
    invoke-static {}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$sfgetPREL_APP_START_WATCHDOG_TIMEOUT_MS()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mAppWatchdogTimeMs:J

    .line 1212
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->packageName:Ljava/lang/String;

    .line 1213
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->processName:Ljava/lang/String;

    .line 1214
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    .line 1215
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/misc/speg/speg."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->spegMarkerFileMisc:Ljava/io/File;

    .line 1216
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "base.speg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->spegMarkerFilePkg:Ljava/io/File;

    .line 1217
    iput p3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->finalStage:I

    .line 1218
    iput p4, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I

    const/4 p1, 0x1

    .line 1219
    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isBeingPrelaunched:Z

    .line 1220
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object p1

    const-string p2, "android.permission.WAKE_LOCK"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mHasWakeLockPermission:Z

    return-void
.end method


# virtual methods
.method public createOrDeleteMarkerFiles(Z)Z
    .locals 9

    .line 1226
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string v4, "PRELService"

    if-eqz p1, :cond_0

    .line 1232
    :try_start_0
    iget-object v5, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v5}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmSpeg(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/SpegService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->spegMarkerFilePkg:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1233
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result v7

    const/4 v8, 0x1

    .line 1232
    invoke-virtual {v5, v6, v8, v7}, Lcom/android/server/SpegService;->createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1237
    :try_start_1
    iget-object v6, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->spegMarkerFilePkg:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    .line 1238
    iget-object v6, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->spegMarkerFileMisc:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v5, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1240
    :catch_0
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete marker files for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1244
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1246
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1247
    iget-boolean p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 1248
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string p1, "Creating"

    goto :goto_1

    :cond_1
    const-string p1, "Deleting"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " marker files took "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v2, v0

    .line 1249
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " us. Ret "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1248
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v5

    .line 1244
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1245
    throw p0
.end method

.method public getAppWatchdogRemainingTimeMs()J
    .locals 5

    .line 1348
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->prelaunchedTimeNs:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 1349
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getAppWatchogTimeoutMs()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppWatchogTimeoutMs()J
    .locals 2

    .line 1344
    iget-wide v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mAppWatchdogTimeMs:J

    return-wide v0
.end method

.method public getDeathReason()Ljava/lang/String;
    .locals 0

    .line 1376
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->deathReason:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Unknown"

    return-object p0
.end method

.method public getKilled()Z
    .locals 0

    .line 1340
    iget-boolean p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isKilled:Z

    return p0
.end method

.method public getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;
    .locals 3

    .line 1285
    iget-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get lock of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRELService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1304
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getPid()I
    .locals 1

    monitor-enter p0

    .line 1316
    :try_start_0
    iget v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrelaunched()Z
    .locals 0

    .line 1296
    iget-boolean p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isBeingPrelaunched:Z

    return p0
.end method

.method public getPrelaunchedTimeNs()J
    .locals 2

    .line 1383
    iget-wide v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->prelaunchedTimeNs:J

    return-wide v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 0

    .line 1312
    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getStage()I
    .locals 1

    monitor-enter p0

    .line 1292
    :try_start_0
    iget v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUid()I
    .locals 0

    .line 1308
    iget p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    return p0
.end method

.method public getUserId()I
    .locals 0

    .line 1332
    iget p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public isProcessAlive()Z
    .locals 3

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getKilled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1328
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmSpeg(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/SpegService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getUid()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/SpegService;->getPidOf(Ljava/lang/String;I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public revokeOrGrantWakeLockPermissionIfNeeded(Z)V
    .locals 3

    .line 1353
    iget-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mHasWakeLockPermission:Z

    if-nez v0, :cond_0

    return-void

    .line 1354
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v1, "Revoking"

    goto :goto_0

    :cond_1
    const-string v1, "Granting"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WAKE_LOCK of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRELService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.permission.WAKE_LOCK"

    if-eqz p1, :cond_2

    .line 1357
    :try_start_0
    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPermissionManager(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->packageName:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->revokeInstallPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1358
    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mWakeLockRevoked:Z

    goto :goto_1

    .line 1359
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mWakeLockRevoked:Z

    if-eqz p1, :cond_3

    .line 1360
    iget-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {p1}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPermissionManager(Lcom/android/server/appprelauncher/AppPrelaunchService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->packageName:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1361
    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mWakeLockRevoked:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to manage WAKE_LOCK of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public setDeathReason(Ljava/lang/String;)V
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->deathReason:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1371
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->deathReason:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setKilled()V
    .locals 1

    const/4 v0, 0x1

    .line 1336
    iput-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isKilled:Z

    return-void
.end method

.method public declared-synchronized setPid(I)V
    .locals 2

    monitor-enter p0

    .line 1320
    :try_start_0
    iget v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1321
    monitor-exit p0

    return-void

    .line 1323
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mPid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1324
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPrelaunched(Z)V
    .locals 0

    .line 1300
    iput-boolean p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isBeingPrelaunched:Z

    return-void
.end method

.method public declared-synchronized setStage(I)V
    .locals 7

    monitor-enter p0

    .line 1256
    :try_start_0
    iget v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I

    if-gt p1, v0, :cond_1

    .line 1257
    iget-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PRELService"

    .line 1258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to downgrade stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1261
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/16 v0, 0x32

    if-lt p1, v0, :cond_2

    .line 1266
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 1269
    :try_start_2
    iget-object v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    iget v4, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    invoke-static {v3, v4, v2}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$mrestrictNetworkConnection(Lcom/android/server/appprelauncher/AppPrelaunchService;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "PRELService"

    .line 1271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to restore network connection for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1273
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->createOrDeleteMarkerFiles(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1275
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1277
    invoke-virtual {p0, v2}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setPrelaunched(Z)V

    goto :goto_2

    .line 1275
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1276
    throw p1

    .line 1279
    :cond_2
    :goto_2
    iput p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I

    .line 1281
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1282
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1388
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->prelaunchedTimeNs:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 1389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prelaunched app { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " s ago, stage: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->currentStage:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isUidRestricted: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->isBeingPrelaunched:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pid: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->mPid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", deathReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getDeathReason()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
