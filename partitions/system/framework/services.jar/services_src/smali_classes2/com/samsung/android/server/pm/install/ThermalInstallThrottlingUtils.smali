.class public abstract Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;
.super Ljava/lang/Object;
.source "ThermalInstallThrottlingUtils.java"


# direct methods
.method public static getInstallDelayByThermal(I)J
    .locals 5

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    if-ne p0, v0, :cond_0

    return-wide v1

    :cond_0
    const-string p0, "dev.ssrm.app.install.standby"

    .line 20
    invoke-static {p0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-lez p0, :cond_1

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Have install standby: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v1, v3

    :cond_1
    return-wide v1
.end method
