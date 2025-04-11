.class public abstract Lcom/android/server/stats/pull/SystemMemoryUtil;
.super Ljava/lang/Object;
.source "SystemMemoryUtil.java"


# direct methods
.method public static getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    .locals 17

    .line 29
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v0

    long-to-int v0, v0

    .line 30
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v1

    long-to-int v1, v1

    .line 31
    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    move-result-wide v2

    long-to-int v2, v2

    .line 32
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0x22

    new-array v4, v4, [J

    .line 35
    invoke-static {v4}, Landroid/os/Debug;->getMemInfo([J)V

    const/16 v5, 0x13

    aget-wide v5, v4, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_0

    const/16 v5, 0xa

    aget-wide v5, v4, v5

    :cond_0
    const/4 v7, 0x1

    aget-wide v8, v4, v7

    const/16 v10, 0xe

    aget-wide v10, v4, v10

    add-long/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v4, v10

    add-long/2addr v8, v10

    const/16 v10, 0x14

    aget-wide v11, v4, v10

    add-long/2addr v8, v11

    const/16 v11, 0x15

    aget-wide v12, v4, v11

    add-long/2addr v8, v12

    const/16 v12, 0x16

    aget-wide v12, v4, v12

    add-long/2addr v8, v12

    const/16 v12, 0xb

    aget-wide v13, v4, v12

    add-long/2addr v8, v13

    add-long/2addr v8, v5

    const/16 v5, 0x10

    aget-wide v13, v4, v5

    add-long/2addr v8, v13

    const/16 v6, 0x11

    aget-wide v13, v4, v6

    add-long/2addr v8, v13

    .line 56
    invoke-static {}, Landroid/os/Debug;->isVmapStack()Z

    move-result v13

    const/16 v14, 0x12

    if-nez v13, :cond_1

    aget-wide v15, v4, v14

    add-long/2addr v8, v15

    :cond_1
    const/4 v13, 0x0

    if-ltz v3, :cond_2

    if-ltz v2, :cond_2

    add-int v15, v3, v2

    int-to-long v10, v15

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    if-ltz v3, :cond_3

    int-to-long v10, v3

    :goto_0
    add-long/2addr v8, v10

    goto :goto_1

    :cond_3
    if-ltz v0, :cond_4

    int-to-long v10, v0

    goto :goto_0

    .line 80
    :cond_4
    :goto_1
    new-instance v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    invoke-direct {v10}, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;-><init>()V

    aget-wide v11, v4, v12

    long-to-int v11, v11

    .line 81
    iput v11, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unreclaimableSlabKb:I

    aget-wide v11, v4, v5

    long-to-int v5, v11

    .line 82
    iput v5, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->vmallocUsedKb:I

    aget-wide v5, v4, v6

    long-to-int v5, v5

    .line 83
    iput v5, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->pageTablesKb:I

    aget-wide v5, v4, v14

    long-to-int v5, v5

    .line 84
    iput v5, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->kernelStackKb:I

    const/16 v5, 0x8

    aget-wide v5, v4, v5

    long-to-int v5, v5

    .line 85
    iput v5, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->shmemKb:I

    aget-wide v5, v4, v13

    long-to-int v11, v5

    .line 86
    iput v11, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalKb:I

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 87
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->freeKb:I

    const/16 v7, 0x17

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 88
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->availableKb:I

    const/16 v7, 0x14

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 89
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeKb:I

    const/16 v7, 0x15

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 90
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveKb:I

    const/16 v7, 0x18

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 91
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeAnonKb:I

    const/16 v7, 0x19

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 92
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveAnonKb:I

    const/16 v7, 0x1a

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 93
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeFileKb:I

    const/16 v7, 0x1b

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 94
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveFileKb:I

    const/16 v7, 0xc

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 95
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->swapTotalKb:I

    const/16 v7, 0xd

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 96
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->swapFreeKb:I

    const/16 v7, 0x1c

    aget-wide v11, v4, v7

    long-to-int v7, v11

    .line 97
    iput v7, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->cmaTotalKb:I

    const/16 v7, 0x1d

    aget-wide v11, v4, v7

    long-to-int v4, v11

    .line 98
    iput v4, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->cmaFreeKb:I

    .line 99
    iput v0, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalIonKb:I

    .line 100
    iput v1, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuTotalUsageKb:I

    .line 101
    iput v2, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuPrivateAllocationsKb:I

    .line 102
    iput v3, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->dmaBufTotalExportedKb:I

    sub-long/2addr v5, v8

    long-to-int v0, v5

    .line 103
    iput v0, v10, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unaccountedKb:I

    return-object v10
.end method
