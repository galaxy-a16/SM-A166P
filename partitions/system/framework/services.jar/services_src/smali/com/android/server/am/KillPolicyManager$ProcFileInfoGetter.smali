.class public abstract Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# direct methods
.method public static getCurSwappiness()I
    .locals 5

    const/16 v0, 0x2020

    .line 4267
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const-string v2, "/proc/sys/vm/swappiness"

    const/4 v3, 0x0

    .line 4272
    invoke-static {v2, v0, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v1, v4

    long-to-int v0, v0

    return v0
.end method

.method public static getLMKCountInfo()J
    .locals 5

    const/16 v0, 0x2020

    .line 4297
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const-string v2, "/sys/module/lowmemorykiller/parameters/lmkcount"

    const/4 v3, 0x0

    .line 4302
    invoke-static {v2, v0, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v1, v4

    return-wide v0
.end method

.method public static getLMKDCountInfo()J
    .locals 5

    const/16 v0, 0x2020

    .line 4277
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const-string v2, "/proc/lmkd_debug/lmkd_count"

    const/4 v3, 0x0

    .line 4282
    invoke-static {v2, v0, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v1, v4

    return-wide v0
.end method

.method public static getLMKDCricCountInfo()J
    .locals 5

    const/16 v0, 0x2020

    .line 4287
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const-string v2, "/proc/lmkd_debug/lmkd_cricount"

    const/4 v3, 0x0

    .line 4292
    invoke-static {v2, v0, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v1, v4

    return-wide v0
.end method

.method public static getRAMsizeGB()I
    .locals 8

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 4309
    fill-array-data v1, :array_0

    .line 4310
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 4312
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 4313
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 4316
    aget v5, v1, v4

    int-to-double v6, v5

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    aget v0, v1, v0

    return v0

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
    .end array-data
.end method
