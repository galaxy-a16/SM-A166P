.class public abstract Lcom/android/server/enterprise/license/LicenseLog;
.super Ljava/lang/Object;
.source "LicenseLog.java"


# direct methods
.method public static deleteAllLog()Z
    .locals 1

    .line 60
    invoke-static {}, Lcom/android/server/enterprise/license/LicenseLogService;->deleteAllLog()Z

    move-result v0

    return v0
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->deleteLog(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .locals 0

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/enterprise/license/LicenseLogService;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V

    return-void
.end method
