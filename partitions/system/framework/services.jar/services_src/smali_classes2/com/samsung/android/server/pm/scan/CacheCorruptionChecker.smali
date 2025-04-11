.class public abstract Lcom/samsung/android/server/pm/scan/CacheCorruptionChecker;
.super Ljava/lang/Object;
.source "CacheCorruptionChecker.java"


# direct methods
.method public static deletePackageCaches(Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "Delete package caches due to corruption"

    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public static isPackageCacheCorrupted(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "key_scan_started"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/pm/PmSharedPreferences;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setPackageScanStarted(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "key_scan_started"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/pm/PmSharedPreferences;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
