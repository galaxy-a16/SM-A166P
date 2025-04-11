.class public interface abstract Lcom/android/server/chimera/SystemRepository;
.super Ljava/lang/Object;
.source "SystemRepository.java"


# virtual methods
.method public abstract currentTimeMillis()J
.end method

.method public abstract dumpProcessListForPPN(ILjava/util/function/BiFunction;)Ljava/util/List;
.end method

.method public abstract forceGc(I)V
.end method

.method public abstract forceStop(Ljava/lang/String;I)V
.end method

.method public abstract getAccessibilityServicePackages()Ljava/util/List;
.end method

.method public abstract getAppFilePathsByPackageName(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getAppStandbyBucket(Ljava/lang/String;IJ)I
.end method

.method public abstract getAppStandbyBuckets()Ljava/util/Map;
.end method

.method public abstract getAvailableMemory()J
.end method

.method public abstract getBigGameApps()Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;
.end method

.method public abstract getCameraApps()Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;
.end method

.method public abstract getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.end method

.method public abstract getCurrentHomePackageName()Ljava/lang/String;
.end method

.method public abstract getFullPowerWhitelist()Ljava/util/List;
.end method

.method public abstract getGameApps()Lcom/android/server/chimera/ICollectionCache$GameAppsCache;
.end method

.method public abstract getLongLiveProcessesForUser(I)Ljava/util/List;
.end method

.method public abstract getMemmoryOfPid(I)J
.end method

.method public abstract getMemoryInfo()Landroid/app/ActivityManager$MemoryInfo;
.end method

.method public abstract getNativeProcesses(Ljava/util/Set;)Ljava/util/List;
.end method

.method public abstract getPackageNameByPid(I)Ljava/lang/String;
.end method

.method public abstract getPackageNameFromUid(I)[Ljava/lang/String;
.end method

.method public abstract getPkgsTypeForChimera(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract getProcStateAndOomScoreForPid(I)[I
.end method

.method public abstract getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;
.end method

.method public abstract getPss(I[J)J
.end method

.method public abstract getRss(I)[J
.end method

.method public abstract getRunningAppProcesses()Ljava/util/List;
.end method

.method public abstract getSharedPreferences()Landroid/content/SharedPreferences;
.end method

.method public abstract getSystemPid()I
.end method

.method public abstract getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUserId(I)I
.end method

.method public abstract getWakeLockPackageList()[Ljava/lang/String;
.end method

.method public abstract hasChimeraProtectedProc(Ljava/lang/String;I)I
.end method

.method public abstract hasConnectionProvider(Ljava/lang/String;I)Z
.end method

.method public abstract hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
.end method

.method public abstract hasPkgIcon(Ljava/lang/String;I)Z
.end method

.method public abstract hasRestartService(Ljava/lang/String;I)Z
.end method

.method public abstract isApp(I)Z
.end method

.method public abstract isCharging()Z
.end method

.method public abstract isHomeHubDocked()Z
.end method

.method public abstract isInCall()Z
.end method

.method public abstract isKilledByRecentTask(ILjava/lang/String;)Z
.end method

.method public abstract isLockTaskPackage(Ljava/lang/String;)Z
.end method

.method public abstract isOnScreenWindow(I)Z
.end method

.method public abstract isPackageInstalled(Ljava/lang/String;)Z
.end method

.method public abstract isScreenOff()Z
.end method

.method public abstract isSmartSwitchWorking()Z
.end method

.method public abstract isThreadGroupLeader(I)Z
.end method

.method public abstract isUserShipBuild()Z
.end method

.method public abstract killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logDebug(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.end method

.method public abstract registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V
.end method

.method public abstract registerUidObserver(Lcom/android/server/chimera/SystemRepository$ChimeraUidObserver;)V
.end method

.method public abstract removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendMessageDelayed(Landroid/os/Handler;ILjava/lang/Object;J)V
.end method

.method public abstract setSystemEventListenerHandler(Landroid/os/Handler;)V
.end method

.method public abstract setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unRegisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
.end method

.method public abstract useCompaction()Z
.end method
