.class public Lcom/android/server/am/pmm/DmaBufLeakDetector;
.super Ljava/lang/Object;
.source "DmaBufLeakDetector.java"


# static fields
.field public static final ISSUE_TRACKER_INTENT_LISTENERS_LIST:[Ljava/lang/String;

.field public static final LEAK_THRESHOLD_STRATEGY:[[F

.field public static final MEMINFO_CATEGORY:[[Ljava/lang/String;

.field public static final MEMINFO_FILEPATH:[Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsListenerAppInstalled:Z

.field public mIsReporting:Z

.field public mIsTestMode:Z

.field public mLastCheckTime:J

.field public mLastLeakTime:J

.field public mLeakThreshold:F

.field public mMemTotal:J

.field public mReportCount:I


# direct methods
.method public static synthetic $r8$lambda$L1ctvSx_CP27YiqPQ2XtxKQjGpY(Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->lambda$getLargestDmaBufProcess$0(Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Xav13KK9GenzPhqFLBWRct2m944(Lcom/android/server/am/pmm/DmaBufLeakDetector;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->lambda$reportLeak$1(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "com.salab.issuetracker"

    const-string v1, "com.sec.salab.voyager"

    .line 33
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->ISSUE_TRACKER_INTENT_LISTENERS_LIST:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 41
    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    new-array v6, v0, [F

    fill-array-data v6, :array_5

    filled-new-array/range {v1 .. v6}, [[F

    move-result-object v0

    sput-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->LEAK_THRESHOLD_STRATEGY:[[F

    const-string v0, "/proc/meminfo"

    const-string v1, "/proc/meminfo_extra"

    .line 48
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->MEMINFO_FILEPATH:[Ljava/lang/String;

    const-string/jumbo v0, "mtk_mm"

    const-string/jumbo v1, "mtk_mm-uncached"

    const-string/jumbo v2, "system"

    const-string/jumbo v3, "system-uncached"

    .line 49
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemHeap"

    const-string v2, "Not-Used"

    filled-new-array {v1, v2, v2, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->MEMINFO_CATEGORY:[[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x40400000    # 3.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_3
    .array-data 4
        0x40c00000    # 6.0f
        0x3fe66666    # 1.8f
    .end array-data

    :array_4
    .array-data 4
        0x41000000    # 8.0f
        0x4019999a    # 2.4f
    .end array-data

    :array_5
    .array-data 4
        0x41400000    # 12.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 72
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mMemTotal:J

    const/4 v0, 0x0

    move v1, v0

    .line 74
    :goto_0
    sget-object v2, Lcom/android/server/am/pmm/DmaBufLeakDetector;->LEAK_THRESHOLD_STRATEGY:[[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 75
    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget v3, v2, v3

    const/high16 v4, 0x44800000    # 1024.0f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    .line 77
    aget v2, v2, v0

    iget-wide v3, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mMemTotal:J

    long-to-float v3, v3

    const/high16 v4, 0x49800000    # 1048576.0f

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string/jumbo v0, "persist.sys.dmabuf_leak_threshold_kb"

    const-string v1, ""

    .line 82
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    int-to-float v0, v0

    .line 87
    iput v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DmaBuf Threshold : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DmaBufLeakDetector"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$getLargestDmaBufProcess$0(Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;)I
    .locals 0

    .line 199
    iget p0, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    neg-int p0, p0

    return p0
.end method

.method private synthetic lambda$reportLeak$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->sendIssueTrackerIntent(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 225
    iput-boolean p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsReporting:Z

    return-void
.end method


# virtual methods
.method public getDmaBufSizeKb()J
    .locals 17

    .line 166
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 167
    sget-object v2, Lcom/android/server/am/pmm/DmaBufLeakDetector;->MEMINFO_FILEPATH:[Ljava/lang/String;

    array-length v3, v2

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const-string v0, "DmaBufLeakDetector"

    if-ge v7, v3, :cond_3

    aget-object v9, v2, v7

    .line 168
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v9, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    const/16 v11, 0x800

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 170
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    :goto_1
    if-eqz v11, :cond_2

    .line 172
    sget-object v12, Lcom/android/server/am/pmm/DmaBufLeakDetector;->MEMINFO_CATEGORY:[[Ljava/lang/String;

    aget-object v12, v12, v8

    array-length v13, v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_1

    aget-object v15, v12, v14

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "\\D+"

    const-string v15, ""

    .line 175
    invoke-virtual {v11, v6, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v15, v2

    move/from16 v16, v3

    int-to-long v2, v6

    add-long/2addr v4, v2

    goto :goto_3

    :cond_0
    move-object v15, v2

    move/from16 v16, v3

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object v2, v15

    move/from16 v3, v16

    goto :goto_2

    :cond_1
    move-object v15, v2

    move/from16 v16, v3

    .line 179
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v15

    move/from16 v3, v16

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    move-object v15, v2

    move/from16 v16, v3

    .line 181
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v15, v2

    move/from16 v16, v3

    :goto_4
    move-object v2, v0

    .line 168
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_4
    move-exception v0

    move-object v15, v2

    move/from16 v16, v3

    :goto_6
    move-object v2, v0

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_0
    move-object v15, v2

    move/from16 v16, v3

    :catch_1
    :goto_8
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v2, v15

    move/from16 v3, v16

    goto/16 :goto_0

    .line 185
    :cond_3
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DmaBuf : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public getLargestDmaBufProcess()Ljava/lang/String;
    .locals 8

    .line 192
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getDmabufAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 194
    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 197
    :cond_0
    new-instance v0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;-><init>()V

    .line 198
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 197
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nheaviest process="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    iget-object v3, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dmabuf_rss="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    iget v3, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "KB"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nName, UID, TotalRss(KB), Count, SFShareRss(KB), SFCount, ADJ"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "DmaBufLeakDetector"

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    aget-object p0, p0, v2

    iget-object p0, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasLeak(F)Z
    .locals 0

    .line 152
    iget p0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCameraRunning()Z
    .locals 1

    const-string/jumbo p0, "service.camera.running"

    const-string v0, "0"

    .line 251
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isListenerAppInstalled(Landroid/content/Context;)Z
    .locals 5

    const-string p0, "DmaBufLeakDetector"

    const/4 v0, 0x0

    move v1, v0

    .line 257
    :goto_0
    sget-object v2, Lcom/android/server/am/pmm/DmaBufLeakDetector;->ISSUE_TRACKER_INTENT_LISTENERS_LIST:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 258
    aget-object v2, v2, v1

    .line 260
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 261
    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "android"

    .line 268
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "matched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_2

    .line 274
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature not matched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 276
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not found app #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v0
.end method

.method public isTestMode()Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    return p0
.end method

.method public declared-synchronized onCheckMemoryLeak(Landroid/content/Context;)V
    .locals 6

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isListenerAppInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsReporting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 119
    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isTestMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "DmaBufLeakDetector"

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDmaBufSizeKb()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", getLargestDmaBufProcess()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCameraRunning()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLeakThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mIsListenerAppInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 125
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    if-eqz v2, :cond_8

    .line 126
    iget-wide v2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastLeakTime:J

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 127
    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->hasLeak(F)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    .line 132
    monitor-exit p0

    return-void

    .line 134
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->hasLeak(F)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 137
    :cond_5
    iput-wide v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastLeakTime:J

    .line 138
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->reportLeak(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 135
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    .line 141
    :cond_8
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastCheckTime:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_b

    .line 142
    iput-wide v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastCheckTime:J

    .line 143
    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->hasLeak(F)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    .line 146
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 144
    :cond_a
    :goto_2
    monitor-exit p0

    return-void

    .line 149
    :cond_b
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public receiveSource(Ljava/lang/String;)V
    .locals 6

    .line 98
    sget-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->ISSUE_TRACKER_INTENT_LISTENERS_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "DmaBufLeakDetector"

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 99
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Listener app message received : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "Listener app message received but not found"

    .line 105
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportLeak(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsReporting:Z

    .line 223
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "DmaBufLeakDetector"

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public sendIssueTrackerIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ERRCODE"

    const/16 v2, -0x86

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ERRPKG"

    .line 235
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ERRNAME"

    const-string v1, "DMABUF"

    .line 236
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ERRMSG"

    const-string v1, "DMABUF_leak"

    .line 244
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 246
    iget p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mReportCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mReportCount:I

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sent intent to issuetracker. Report Count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mReportCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DmaBufLeakDetector"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    return-void
.end method
