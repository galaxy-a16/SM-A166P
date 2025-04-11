.class public abstract Lcom/samsung/android/server/pm/scan/ApexScanUtils;
.super Ljava/lang/Object;
.source "ApexScanUtils.java"


# direct methods
.method public static assertApexInfosAreValid(Ljava/util/List;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Apex packages were not scanned."

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
