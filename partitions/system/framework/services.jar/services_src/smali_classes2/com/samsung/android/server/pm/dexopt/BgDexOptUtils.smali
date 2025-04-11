.class public abstract Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;
.super Ljava/lang/Object;
.source "BgDexOptUtils.java"


# direct methods
.method public static getBatteryLevel()I
    .locals 1

    .line 41
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method public static isBatteryFullyCharged(Landroid/content/Context;)Z
    .locals 6

    .line 30
    invoke-static {p0}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->isRunningBgDexOptCTS(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "BackgroundDexOptService"

    const-string v0, "Keep running"

    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 35
    :cond_0
    const-class v0, Landroid/os/BatteryManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    .line 36
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->getBatteryLevel()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_2

    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/os/BatteryManager;->computeChargeTimeRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isRunningBgDexOptCTS(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 50
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.compilation.cts"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
