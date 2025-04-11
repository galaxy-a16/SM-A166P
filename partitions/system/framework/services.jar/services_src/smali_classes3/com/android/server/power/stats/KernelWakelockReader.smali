.class public Lcom/android/server/power/stats/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field public static final PROC_WAKELOCKS_FORMAT:[I

.field public static final WAKEUP_SOURCES_FORMAT:[I

.field public static sKernelWakelockUpdateVersion:I


# instance fields
.field public mKernelWakelockBuffer:[B

.field public final mProcWakelocksData:[J

.field public final mProcWakelocksName:[Ljava/lang/String;

.field public mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/power/stats/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 57
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/power/stats/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    new-array v0, v0, [J

    .line 70
    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksData:[J

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    const v0, 0x8000

    new-array v0, v0, [B

    .line 72
    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    return-void
.end method


# virtual methods
.method public final getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 3

    const-string v0, "KernelWakelockReader"

    const/4 v1, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/KernelWakelockReader;->waitForSuspendControlService()Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 196
    :try_start_1
    invoke-interface {v2}, Landroid/system/suspend/internal/ISuspendControlServiceInternal;->getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object v2

    .line 197
    invoke-virtual {p0, v2, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateWakelockStats([Landroid/system/suspend/internal/WakeLockInfo;Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "SuspendControlService got IllegalArgumentException"

    .line 202
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception p0

    const-string p1, "Failed to obtain wakelock stats from ISuspendControlService"

    .line 199
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_2
    move-exception p0

    const-string p1, "Required service suspend_control not available"

    .line 191
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public parseProcWakelocks([BIZLcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    const/4 v11, 0x0

    move v2, v11

    :goto_0
    const/16 v12, 0xa

    if-ge v2, v9, :cond_0

    .line 268
    aget-byte v3, v0, v2

    if-eq v3, v12, :cond_0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    add-int/2addr v2, v13

    .line 271
    monitor-enter p0

    move v14, v2

    :goto_1
    if-ge v2, v9, :cond_b

    move v15, v14

    :goto_2
    if-ge v15, v9, :cond_1

    .line 274
    :try_start_0
    aget-byte v2, v0, v15

    if-eq v2, v12, :cond_1

    if-eqz v2, :cond_1

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v9, -0x1

    if-le v15, v2, :cond_2

    goto/16 :goto_7

    .line 282
    :cond_2
    iget-object v8, v1, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 283
    iget-object v7, v1, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksData:[J

    move v2, v14

    :goto_3
    if-ge v2, v15, :cond_4

    .line 288
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    .line 291
    sget-object v2, Lcom/android/server/power/stats/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    goto :goto_4

    .line 292
    :cond_5
    sget-object v2, Lcom/android/server/power/stats/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    :goto_4
    move-object v5, v2

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move v3, v14

    move v4, v15

    move-object v6, v8

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    .line 290
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v2

    .line 295
    aget-object v3, v18, v11

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 296
    aget-wide v4, v17, v13

    long-to-int v4, v4

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x2

    if-eqz p3, :cond_6

    .line 300
    aget-wide v7, v17, v7

    mul-long/2addr v7, v5

    goto :goto_5

    .line 303
    :cond_6
    aget-wide v7, v17, v7

    const-wide/16 v16, 0x1f4

    add-long v7, v7, v16

    div-long/2addr v7, v5

    :goto_5
    if-eqz v2, :cond_9

    .line 306
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 307
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 308
    new-instance v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    sget v5, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct {v2, v4, v7, v8, v5}, Lcom/android/server/power/stats/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 311
    :cond_7
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 312
    iget v3, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mVersion:I

    sget v5, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v3, v5, :cond_8

    .line 313
    iget v3, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mCount:I

    .line 314
    iget-wide v3, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mTotalTime:J

    add-long/2addr v3, v7

    iput-wide v3, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_6

    .line 316
    :cond_8
    iput v4, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mCount:I

    .line 317
    iput-wide v7, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mTotalTime:J

    .line 318
    iput v5, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_9
    if-nez v2, :cond_a

    :try_start_1
    const-string v2, "KernelWakelockReader"

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse proc line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sub-int v5, v15, v14

    invoke-direct {v4, v0, v14, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_0
    :try_start_2
    const-string v2, "KernelWakelockReader"

    const-string v3, "Failed to parse proc line!"

    .line 326
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    add-int/lit8 v14, v15, 0x1

    move v2, v15

    goto/16 :goto_1

    .line 332
    :cond_b
    :goto_7
    monitor-exit p0

    return-object v10

    :catchall_0
    move-exception v0

    .line 333
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final readKernelWakelockStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 10

    .line 80
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/wakeup"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "KernelWakelockReader"

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readKernelWakelockStats("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 86
    const-class v0, Lcom/android/server/power/stats/KernelWakelockReader;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "KernelWakelockReader"

    const-string p1, "Failed to get wakelock stats from SystemSuspend"

    .line 90
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    monitor-exit v0

    return-object v1

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 101
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 105
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/wakelocks"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v6, v2

    move v7, v6

    goto :goto_0

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_3

    .line 109
    :catch_1
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/d/wakeup_sources"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x1

    move v7, v2

    .line 119
    :goto_0
    :try_start_3
    iget-object v8, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v9, v8

    sub-int/2addr v9, v7

    invoke-virtual {v5, v8, v7, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_2

    add-int/2addr v7, v8

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x64

    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    const-string v3, "KernelWakelockReader"

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading wakelock stats took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lez v7, :cond_6

    .line 138
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v0, v0

    if-lt v7, v0, :cond_4

    const-string v0, "KernelWakelockReader"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kernel wake locks exceeded mKernelWakelockBuffer size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    if-ge v2, v7, :cond_6

    .line 144
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_5

    move v7, v2

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    :cond_6
    :goto_2
    const-class v1, Lcom/android/server/power/stats/KernelWakelockReader;

    monitor-enter v1

    .line 153
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "KernelWakelockReader"

    const-string v2, "Failed to get Native wakelock stats from SystemSuspend"

    .line 156
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_7
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    invoke-virtual {p0, v0, v7, v6, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_2
    move-exception p0

    .line 161
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catch_2
    :try_start_5
    const-string p0, "KernelWakelockReader"

    const-string/jumbo p1, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    .line 112
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :goto_3
    :try_start_6
    const-string p1, "KernelWakelockReader"

    const-string v2, "failed to read kernel wakelocks"

    .line 126
    invoke-static {p1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 129
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :goto_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 130
    throw p0
.end method

.method public removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 2

    .line 355
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 356
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    iget v0, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mVersion:I

    sget v1, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v0, v1, :cond_0

    .line 358
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 0

    .line 343
    sget p0, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 344
    iput p0, p1, Lcom/android/server/power/stats/KernelWakelockStats;->kernelWakelockVersion:I

    return-object p1
.end method

.method public updateWakelockStats([Landroid/system/suspend/internal/WakeLockInfo;Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .locals 11

    .line 218
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_4

    aget-object v1, p1, v0

    .line 220
    iget-object v2, v1, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x3e8

    if-nez v2, :cond_0

    .line 222
    iget-object v2, v1, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    new-instance v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    iget-wide v6, v1, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v6, v6

    iget-wide v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v7, v3

    sget v9, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/server/power/stats/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {p2, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v5, 0x0

    goto :goto_1

    .line 225
    :cond_0
    iget-object v2, v1, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 226
    iget-wide v5, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mTotalTime:J

    .line 227
    iget-boolean v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    if-nez v7, :cond_1

    iget v7, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mVersion:I

    sget v8, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v7, v8, :cond_1

    .line 228
    iget v7, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mCount:I

    iget-wide v8, v1, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mCount:I

    .line 230
    iget-wide v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_1

    .line 232
    :cond_1
    iget-wide v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v7, v7

    iput v7, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mCount:I

    .line 234
    iget-wide v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v7, v3

    iput-wide v7, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mTotalTime:J

    .line 235
    sget v7, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v7, v2, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->mVersion:I

    .line 238
    :goto_1
    iget-object v2, v1, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    const-string v7, "PowerManager"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v7, v3

    sub-long/2addr v7, v5

    const-wide v9, 0x283baec00L

    cmp-long v2, v7, v9

    if-ltz v2, :cond_3

    .line 240
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "name="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\t isActive="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "\t lastChange="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\t activeCount="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\t activeTime="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\t totalTime="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\t version="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\t time_delta="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v7, v3

    sub-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KernelWakelockReader"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-object p2
.end method

.method public final waitForSuspendControlService()Landroid/system/suspend/internal/ISuspendControlServiceInternal;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    const-string/jumbo v2, "suspend_control_internal"

    if-ge v0, v1, :cond_1

    .line 174
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 173
    invoke-static {v1}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    new-instance p0, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {p0, v2}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
