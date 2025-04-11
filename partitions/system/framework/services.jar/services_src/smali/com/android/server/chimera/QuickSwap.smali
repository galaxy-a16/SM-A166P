.class public final Lcom/android/server/chimera/QuickSwap;
.super Ljava/lang/Object;
.source "QuickSwap.java"


# static fields
.field public static final GENAI_PROCESSES_LIST:Ljava/util/List;

.field public static final TAG:Ljava/lang/String; = "QuickSwap"


# instance fields
.field public final DEFAULT_THREAD_POOL_SIZE:I

.field public isDoingQuickSwap:Z

.field public isDoingQuickSwapLock:Ljava/lang/Object;

.field public mGenAIReceiver:Lcom/android/server/chimera/QuickSwap$GenAIReceiver;

.field public mIsNandswapOn:Z

.field public mLatestAnonZramDiff:J

.field public mLatestLatency:J

.field public mLatestPageoutCnt:I

.field public mLatestQuickSwapType:I

.field public mLatestResult:Ljava/lang/String;

.field public mLatestTimestampMS:J

.field public mLatestWritebackCnt:I

.field public mNativeProcPssMap:Ljava/util/Map;

.field public mPPN:Lcom/android/server/chimera/PerProcessNandswap;

.field public mPageoutCnt:I

.field public mQuickSwapHandler:Lcom/android/server/chimera/QuickSwap$QuickSwapHandler;

.field public mQuickSwapThread:Lcom/android/server/ServiceThread;

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mThreadPoolSize:I

.field public mThresholdBroadcast:J

.field public mThresholdLmkd:J

.field public mTriggeredCnt:I

.field public mWritebackCnt:I


# direct methods
.method public static synthetic $r8$lambda$1WKEqdsZl9b5P8BXN4F_k4Pv-qk(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/chimera/QuickSwap;->lambda$getReclaimSet$2(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WhASt5lTX99SE06CriYFF1hb--M(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/chimera/QuickSwap;->lambda$getReclaimSet$1(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q4YDhG_wdSeY1DQX1rKMrEHBXhQ(Lcom/android/server/chimera/QuickSwap;ILcom/android/server/chimera/PerProcessNandswap$NandswapRecord;J)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/chimera/QuickSwap;->lambda$doQuickSwap$0(ILcom/android/server/chimera/PerProcessNandswap$NandswapRecord;J)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuickSwapThread(Lcom/android/server/chimera/QuickSwap;)Lcom/android/server/ServiceThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/QuickSwap;->mQuickSwapThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/QuickSwap;)Lcom/android/server/chimera/SystemRepository;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/chimera/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "com.samsung.android.wallpaper.magician"

    const-string v1, "com.samsung.android.offline.languagemodel"

    const-string v2, "com.google.android.aicore"

    .line 92
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/QuickSwap;->GENAI_PROCESSES_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/SystemRepository;)V
    .locals 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 56
    iput v0, p0, Lcom/android/server/chimera/QuickSwap;->DEFAULT_THREAD_POOL_SIZE:I

    .line 57
    iput v0, p0, Lcom/android/server/chimera/QuickSwap;->mThreadPoolSize:I

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/QuickSwap;->mNativeProcPssMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/server/chimera/QuickSwap;->mTriggeredCnt:I

    .line 69
    iput v0, p0, Lcom/android/server/chimera/QuickSwap;->mPageoutCnt:I

    .line 70
    iput v0, p0, Lcom/android/server/chimera/QuickSwap;->mWritebackCnt:I

    .line 72
    iput v0, p0, Lcom/android/server/chimera/QuickSwap;->mLatestQuickSwapType:I

    const-string v1, "N/A"

    .line 73
    iput-object v1, p0, Lcom/android/server/chimera/QuickSwap;->mLatestResult:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 74
    iput-wide v1, p0, Lcom/android/server/chimera/QuickSwap;->mLatestTimestampMS:J

    .line 75
    iput v0, p0, Lcom/android/server/chimera/QuickSwap;->mLatestPageoutCnt:I

    .line 76
    iput v0, p0, Lcom/android/server/chimera/QuickSwap;->mLatestWritebackCnt:I

    .line 77
    iput-wide v1, p0, Lcom/android/server/chimera/QuickSwap;->mLatestAnonZramDiff:J

    .line 78
    iput-wide v1, p0, Lcom/android/server/chimera/QuickSwap;->mLatestLatency:J

    .line 131
    iput-boolean v0, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwap:Z

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    .line 103
    iput-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    .line 104
    iput-object p2, p0, Lcom/android/server/chimera/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 105
    new-instance p1, Lcom/android/server/chimera/QuickSwap$GenAIReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/chimera/QuickSwap$GenAIReceiver;-><init>(Lcom/android/server/chimera/QuickSwap;)V

    iput-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mGenAIReceiver:Lcom/android/server/chimera/QuickSwap$GenAIReceiver;

    const-string/jumbo p1, "ro.sys.kernelmemory.nandswap.quickswap.nandswap"

    const/4 p2, 0x1

    .line 107
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/chimera/QuickSwap;->mIsNandswapOn:Z

    const-string/jumbo p1, "ro.sys.kernelmemory.nandswap.quickswap.threshold.broadcast"

    const-wide/32 v0, 0x100000

    .line 110
    invoke-static {p1, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/chimera/QuickSwap;->mThresholdBroadcast:J

    const-string/jumbo p1, "ro.sys.kernelmemory.nandswap.quickswap.threshold.lmkd"

    const-wide/32 v0, 0x96000

    .line 111
    invoke-static {p1, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/chimera/QuickSwap;->mThresholdLmkd:J

    .line 113
    iget p1, p0, Lcom/android/server/chimera/QuickSwap;->mThreadPoolSize:I

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 114
    sget-object p1, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "thread pool created, size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/QuickSwap;->mThreadPoolSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mNativeProcPssMap:Ljava/util/Map;

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "surfaceflinger"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mNativeProcPssMap:Ljava/util/Map;

    const-wide/16 v0, 0x96

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "vendor.samsung.hardware.camera.provider-service_64"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mNativeProcPssMap:Ljava/util/Map;

    const-wide/16 v0, 0x8c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "mppserver"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mNativeProcPssMap:Ljava/util/Map;

    const-wide/16 v0, 0x3c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "audioserver"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mNativeProcPssMap:Ljava/util/Map;

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.fingerprint-service"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mNativeProcPssMap:Ljava/util/Map;

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "QuickSwapThread"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1, p2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mQuickSwapThread:Lcom/android/server/ServiceThread;

    .line 125
    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mQuickSwapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 128
    :cond_0
    new-instance p1, Lcom/android/server/chimera/QuickSwap$QuickSwapHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/chimera/QuickSwap$QuickSwapHandler;-><init>(Lcom/android/server/chimera/QuickSwap;Lcom/android/server/chimera/QuickSwap$QuickSwapHandler-IA;)V

    iput-object p1, p0, Lcom/android/server/chimera/QuickSwap;->mQuickSwapHandler:Lcom/android/server/chimera/QuickSwap$QuickSwapHandler;

    return-void
.end method

.method private synthetic lambda$doQuickSwap$0(ILcom/android/server/chimera/PerProcessNandswap$NandswapRecord;J)Ljava/lang/Integer;
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x40

    .line 264
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap;->isAppLaunch()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 265
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 266
    sget-object p0, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "QuickSwap skip: app launch (in sub-thread) "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 271
    :cond_1
    :try_start_1
    iget-object p0, p2, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 272
    iget v3, p2, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->procState:I

    .line 273
    iget p2, p2, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->adj:I

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickSwap PO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "(pid "

    if-eqz v4, :cond_2

    .line 278
    :try_start_2
    sget-object v4, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QuickSwap PO start for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") adj:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pss:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    const/4 v4, 0x1

    .line 282
    invoke-static {p1, v4}, Lcom/android/server/chimera/PerProcessNandswap;->compactProcessForWriteback(II)J

    move-result-wide v6

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, p3

    .line 285
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 286
    sget-object p3, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QuickSwap PO end for "

    invoke-virtual {p4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") ret: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", adj:"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", state:"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 292
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 296
    throw p0
.end method

.method public static synthetic lambda$getReclaimSet$1(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 4

    .line 466
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 467
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    .line 469
    :cond_1
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic lambda$getReclaimSet$2(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Ljava/lang/Integer;
    .locals 0

    .line 475
    iget p0, p0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doQuickSwap(I)V
    .locals 4

    const/16 v0, -0x384

    const/4 v1, 0x0

    .line 176
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const/16 v2, -0x3e8

    const/16 v3, 0xfa

    .line 178
    :try_start_0
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/server/chimera/QuickSwap;->doQuickSwap(III[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    iget-object p1, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 183
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwap:Z

    .line 184
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 180
    :try_start_2
    sget-object v0, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do QuickSwap execute with exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    iget-object p1, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 183
    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwap:Z

    .line 184
    monitor-exit p1

    :goto_0
    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwap:Z

    .line 184
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 185
    throw p1

    :catchall_3
    move-exception p0

    .line 184
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method

.method public doQuickSwap(III[I)V
    .locals 30

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 199
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 200
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 202
    invoke-virtual {v7, v8, v0}, Lcom/android/server/chimera/QuickSwap;->isLowMemory(ILcom/android/internal/util/MemInfoReader;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 208
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 211
    sget-object v1, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "storageFreeRatio: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "%.2f"

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v14, v11

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " threshold: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v11

    goto :goto_0

    :cond_1
    move v1, v12

    :goto_0
    move v13, v1

    goto :goto_1

    .line 215
    :catch_0
    sget-object v1, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    const-string v2, "Read StatFs Failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .line 220
    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/server/chimera/QuickSwap;->getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v14

    .line 222
    sget-object v1, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    const-string v2, "QuickSwap start"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget v2, v7, Lcom/android/server/chimera/QuickSwap;->mTriggeredCnt:I

    add-int/2addr v2, v12

    iput v2, v7, Lcom/android/server/chimera/QuickSwap;->mTriggeredCnt:I

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 226
    invoke-virtual {v7, v2, v3, v4}, Lcom/android/server/chimera/QuickSwap;->getReclaimSet(II[I)Ljava/util/Set;

    move-result-object v16

    .line 227
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "reclaimSet size 0!!"

    .line 228
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 237
    :cond_2
    iget-object v2, v7, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v2, v0}, Lcom/android/server/chimera/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result v2

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getMinSwapFreePercentage()I

    move-result v3

    const-string v5, "QuickSwap skip: no nandswap record"

    const-string v6, "QuickSwap skip: app launch "

    const-string v4, ""

    if-lt v2, v3, :cond_b

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move/from16 v18, v11

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 242
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 243
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 245
    iget-object v1, v7, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v1}, Lcom/android/server/chimera/PerProcessNandswap;->isAppLaunch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    sget-object v1, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move/from16 v18, v12

    goto :goto_2

    .line 253
    :cond_4
    iget-object v1, v7, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v1, v1, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez v21, :cond_6

    .line 255
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 256
    sget-object v1, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v12, v4

    move-wide/from16 v23, v9

    move-object v9, v5

    move-object v10, v6

    goto :goto_3

    .line 262
    :cond_6
    :try_start_1
    iget-object v2, v7, Lcom/android/server/chimera/QuickSwap;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 p2, v1

    move-object/from16 v1, p2

    move-object v11, v2

    move-object/from16 v2, p0

    move/from16 p3, v3

    move-object v12, v4

    move-object/from16 v4, v21

    move-wide/from16 v23, v9

    move-object v9, v5

    move-object v10, v6

    move-wide/from16 v5, v19

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/QuickSwap;ILcom/android/server/chimera/PerProcessNandswap$NandswapRecord;J)V

    invoke-virtual {v11, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 298
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_1
    move/from16 p3, v3

    move-object v12, v4

    move-wide/from16 v23, v9

    move-object v9, v5

    move-object v10, v6

    .line 300
    :catch_2
    sget-object v1, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickSwap Skip: rejected submit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v5, v9

    move-object v6, v10

    move-object v4, v12

    move-wide/from16 v9, v23

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_7
    move-object v12, v4

    move-wide/from16 v23, v9

    move-object v9, v5

    move-object v10, v6

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 307
    :try_start_3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v2, v0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 309
    sget-object v3, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickSwap async task execute with exception! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 313
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PO=comp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    if-eqz v18, :cond_a

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PO=laun"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 318
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PO=skip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v1, v0

    move v6, v2

    goto :goto_6

    :cond_b
    move-object v12, v4

    move-wide/from16 v23, v9

    move-object v9, v5

    move-object v10, v6

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickSwap Skip: swap is full (free is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v3, v0}, Lcom/android/server/chimera/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PO=full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    const/4 v6, 0x0

    :goto_6
    const-string v2, ", "

    if-eqz v13, :cond_16

    .line 326
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, v7, Lcom/android/server/chimera/QuickSwap;->mIsNandswapOn:Z

    if-eqz v0, :cond_16

    .line 328
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v11, 0x0

    const/16 v22, 0x0

    :cond_c
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 329
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 330
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 332
    iget-object v0, v7, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v0}, Lcom/android/server/chimera/PerProcessNandswap;->isAppLaunch()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 333
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 334
    sget-object v0, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v22, 0x1

    goto :goto_7

    .line 340
    :cond_e
    iget-object v0, v7, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez v0, :cond_f

    .line 342
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 343
    sget-object v0, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    move-object v13, v9

    move-object/from16 v17, v10

    .line 349
    :try_start_4
    iget-object v9, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 350
    iget v10, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->procState:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 p4, v5

    .line 351
    :try_start_5
    iget v5, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->adj:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v20, v13

    .line 353
    :try_start_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v21, v6

    :try_start_7
    const-string v6, "QuickSwap WB : "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-wide/from16 v25, v14

    const-wide/16 v13, 0x40

    :try_start_8
    invoke-static {v13, v14, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 354
    :try_start_9
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-string v13, "(pid "

    if-eqz v6, :cond_10

    .line 355
    :try_start_a
    sget-object v6, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "QuickSwap WB start for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") adj:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " pss:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v6, 0x2

    .line 359
    invoke-static {v12, v6}, Lcom/android/server/chimera/PerProcessNandswap;->compactProcessForWriteback(II)J

    move-result-wide v14

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    sub-long v3, v27, v3

    const-wide/16 v27, 0x0

    cmp-long v29, v14, v27

    if-lez v29, :cond_11

    .line 365
    iget-object v8, v7, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v8, v0, v6}, Lcom/android/server/chimera/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;I)V

    .line 368
    :cond_11
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 369
    sget-object v0, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QuickSwap WB end for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") ret: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", adj:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", state:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_12
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v3, 0x40

    goto :goto_b

    :catchall_0
    move-exception v0

    move-wide v3, v13

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    move/from16 v21, v6

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    const-wide/16 v3, 0x40

    goto :goto_c

    :catch_8
    move-exception v0

    move-object/from16 p4, v5

    :goto_8
    move/from16 v21, v6

    move-object/from16 v20, v13

    :goto_9
    move-wide/from16 v25, v14

    .line 375
    :goto_a
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-wide/16 v3, 0x40

    .line 377
    :goto_b
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v8, p1

    move-object/from16 v5, p4

    move-object/from16 v10, v17

    move-object/from16 v9, v20

    move/from16 v6, v21

    move-wide/from16 v14, v25

    goto/16 :goto_7

    :goto_c
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 378
    throw v0

    :cond_13
    move/from16 v21, v6

    move-wide/from16 v25, v14

    .line 381
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v11, :cond_14

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WB=comp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_14
    if-eqz v22, :cond_15

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WB=laun"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 386
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WB=skip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    move-object v3, v0

    goto :goto_e

    :cond_16
    move/from16 v21, v6

    move-wide/from16 v25, v14

    .line 388
    sget-object v0, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    const-string v3, "QuickSwap Skip: writeback_limit is over"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WB=over"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    const/4 v11, 0x0

    :goto_e
    const/4 v0, 0x0

    .line 393
    invoke-virtual {v7, v0}, Lcom/android/server/chimera/QuickSwap;->getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v0

    sub-long v14, v25, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v14, v4

    if-gez v0, :cond_17

    move-wide v8, v4

    goto :goto_f

    :cond_17
    move-wide v8, v14

    .line 398
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 399
    sget-object v4, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickSwap done: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", PO "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v21

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", WB "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB in "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v0, v23

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, v23

    move v6, v10

    move v7, v11

    move-wide v10, v12

    .line 402
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/chimera/QuickSwap;->finishQuickSwap(ILjava/lang/String;JIIJJ)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "    configs"

    .line 567
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      threadpoolsize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/QuickSwap;->mThreadPoolSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      NS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/chimera/QuickSwap;->mIsNandswapOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      threshold.broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/QuickSwap;->mThresholdBroadcast:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      threshold.lmkd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/QuickSwap;->mThresholdLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    stats"

    .line 572
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      triggerd_cnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/QuickSwap;->mTriggeredCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      PO_cnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/chimera/QuickSwap;->mPageoutCnt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      WB_cnt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/chimera/QuickSwap;->mWritebackCnt:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    latest"

    .line 576
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/chimera/QuickSwap;->mLatestQuickSwapType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      Result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/chimera/QuickSwap;->mLatestResult:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/QuickSwap;->mLatestPageoutCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/QuickSwap;->mLatestWritebackCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      anonZramDiff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/QuickSwap;->mLatestAnonZramDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/QuickSwap;->mLatestLatency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/chimera/QuickSwap;->mLatestTimestampMS:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final finishQuickSwap(ILjava/lang/String;JIIJJ)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    .line 517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 519
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-long/2addr v3, p3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 520
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object v6, p2

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x13d6ea

    .line 518
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 521
    iget v3, v0, Lcom/android/server/chimera/QuickSwap;->mPageoutCnt:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/android/server/chimera/QuickSwap;->mPageoutCnt:I

    .line 522
    iget v3, v0, Lcom/android/server/chimera/QuickSwap;->mWritebackCnt:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/android/server/chimera/QuickSwap;->mWritebackCnt:I

    move v3, p1

    .line 524
    iput v3, v0, Lcom/android/server/chimera/QuickSwap;->mLatestQuickSwapType:I

    move-object v3, p2

    .line 525
    iput-object v3, v0, Lcom/android/server/chimera/QuickSwap;->mLatestResult:Ljava/lang/String;

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/chimera/QuickSwap;->mLatestTimestampMS:J

    .line 527
    iput v1, v0, Lcom/android/server/chimera/QuickSwap;->mLatestPageoutCnt:I

    .line 528
    iput v2, v0, Lcom/android/server/chimera/QuickSwap;->mLatestWritebackCnt:I

    move-wide/from16 v1, p7

    .line 529
    iput-wide v1, v0, Lcom/android/server/chimera/QuickSwap;->mLatestAnonZramDiff:J

    move-wide/from16 v1, p9

    .line 530
    iput-wide v1, v0, Lcom/android/server/chimera/QuickSwap;->mLatestLatency:J

    return-void
.end method

.method public final getReclaimSet(II[I)Ljava/util/Set;
    .locals 12

    .line 465
    new-instance v0, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda1;-><init>()V

    .line 472
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/chimera/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/chimera/QuickSwap$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 476
    iget-object v3, p0, Lcom/android/server/chimera/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v3, v2}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 478
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 479
    sget-object v6, Lcom/android/server/chimera/QuickSwap;->GENAI_PROCESSES_LIST:Ljava/util/List;

    iget-object v7, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 482
    :cond_1
    iget-object v6, p0, Lcom/android/server/chimera/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v7, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-interface {v6, v7}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    if-lt v6, p1, :cond_0

    if-le v6, p2, :cond_2

    goto :goto_0

    .line 486
    :cond_2
    array-length v8, p3

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v9, v8, :cond_4

    aget v11, p3, v9

    if-ne v6, v11, :cond_3

    move v10, v7

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    if-eqz v10, :cond_5

    goto :goto_0

    .line 491
    :cond_5
    new-instance v7, Landroid/util/Pair;

    iget v8, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v9, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    cmp-long v4, v9, v4

    if-lez v4, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v9, 0x1

    :goto_2
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v7, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v4, p0, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v5, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/chimera/PerProcessNandswap;->checkProcessStatusForNandswap(Ljava/lang/String;II)V

    goto :goto_0

    .line 495
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 497
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_9

    .line 498
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 499
    sget-object p3, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped by dead process pid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 504
    :cond_9
    iget-object p3, p0, Lcom/android/server/chimera/QuickSwap;->mNativeProcPssMap:Ljava/util/Map;

    iget-object v0, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    if-eqz p3, :cond_a

    .line 506
    new-instance v0, Landroid/util/Pair;

    iget v2, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v0, v2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 508
    :cond_a
    new-instance p3, Landroid/util/Pair;

    iget v0, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 510
    :goto_4
    iget-object p3, p0, Lcom/android/server/chimera/QuickSwap;->mPPN:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v0, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget p2, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v2, -0x3e8

    invoke-virtual {p3, v0, p2, v2}, Lcom/android/server/chimera/PerProcessNandswap;->checkProcessStatusForNandswap(Ljava/lang/String;II)V

    goto/16 :goto_3

    :cond_b
    return-object v1
.end method

.method public final getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J
    .locals 9

    if-nez p1, :cond_0

    .line 448
    new-instance p1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 449
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 453
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object p0

    const/16 v0, 0x18

    .line 454
    aget-wide v0, p0, v0

    const/16 v2, 0x19

    .line 455
    aget-wide v2, p0, v2

    .line 456
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide p0

    add-long v4, v0, v2

    add-long/2addr v4, p0

    .line 458
    sget-object v6, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "du: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " = aa "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " + ia "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " + zr "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public final isCameraRunning()Z
    .locals 1

    const-string/jumbo p0, "service.camera.running"

    const-string v0, "0"

    .line 407
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 408
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isLowMemory(ILcom/android/internal/util/MemInfoReader;)Z
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    .line 418
    :cond_0
    iget-wide v2, v0, Lcom/android/server/chimera/QuickSwap;->mThresholdLmkd:J

    goto :goto_0

    .line 415
    :cond_1
    iget-wide v2, v0, Lcom/android/server/chimera/QuickSwap;->mThresholdBroadcast:J

    .line 422
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v4

    const/4 v5, 0x1

    .line 424
    aget-wide v6, v4, v5

    const/16 v8, 0x1d

    .line 425
    aget-wide v8, v4, v8

    const/4 v10, 0x6

    .line 426
    aget-wide v10, v4, v10

    sub-long v12, v6, v8

    sub-long/2addr v12, v10

    const/16 v14, 0x1a

    .line 429
    aget-wide v14, v4, v14

    const/16 v16, 0x1b

    move-wide/from16 v17, v6

    .line 430
    aget-wide v5, v4, v16

    move-wide/from16 v19, v10

    add-long v10, v14, v5

    move-wide/from16 v21, v5

    add-long v4, v12, v10

    cmp-long v2, v4, v2

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 436
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/QuickSwap;->isCameraRunning()Z

    move-result v0

    .line 438
    sget-object v6, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickSwap LOWMEM="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " CAM="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v17

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v19

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v21

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    :goto_3
    return v5
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "nandswap"

    .line 553
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 554
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/chimera/QuickSwap;->mIsNandswapOn:Z

    return v1

    :cond_0
    const-string/jumbo v0, "threshold.broadcast"

    .line 556
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/chimera/QuickSwap;->mThresholdBroadcast:J

    return v1

    :cond_1
    const-string/jumbo v0, "threshold.lmkd"

    .line 559
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 560
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/chimera/QuickSwap;->mThresholdLmkd:J

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public tryQuickSwap(I)Z
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/server/chimera/QuickSwap;->mQuickSwapHandler:Lcom/android/server/chimera/QuickSwap$QuickSwapHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwap:Z

    if-eqz v2, :cond_1

    .line 139
    sget-object p0, Lcom/android/server/chimera/QuickSwap;->TAG:Ljava/lang/String;

    const-string p1, "QuickSwap is skipped because QuickSwap is already running."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x1

    .line 142
    iput-boolean v1, p0, Lcom/android/server/chimera/QuickSwap;->isDoingQuickSwap:Z

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object p0, p0, Lcom/android/server/chimera/QuickSwap;->mQuickSwapHandler:Lcom/android/server/chimera/QuickSwap$QuickSwapHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1

    :catchall_0
    move-exception p0

    .line 143
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unRegisterBroadcast()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/server/chimera/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p0, p0, Lcom/android/server/chimera/QuickSwap;->mGenAIReceiver:Lcom/android/server/chimera/QuickSwap$GenAIReceiver;

    invoke-interface {v0, p0}, Lcom/android/server/chimera/SystemRepository;->unRegisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
