.class public Lio/netty/buffer/PooledByteBufAllocator;
.super Lio/netty/buffer/AbstractByteBufAllocator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

.field private static final DEFAULT_CACHE_TRIM_INTERVAL:I

.field private static final DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

.field private static final DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

.field private static final DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

.field static final DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

.field private static final DEFAULT_MAX_ORDER:I

.field private static final DEFAULT_NORMAL_CACHE_SIZE:I

.field private static final DEFAULT_NUM_DIRECT_ARENA:I

.field private static final DEFAULT_NUM_HEAP_ARENA:I

.field private static final DEFAULT_PAGE_SIZE:I

.field private static final DEFAULT_SMALL_CACHE_SIZE:I

.field private static final DEFAULT_TINY_CACHE_SIZE:I

.field private static final DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final chunkSize:I

.field private final directArenaMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final directArenas:[Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolArena<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final heapArenaMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final heapArenas:[Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolArena<",
            "[B>;"
        }
    .end annotation
.end field

.field private final metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

.field private final normalCacheSize:I

.field private final smallCacheSize:I

.field private final threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

.field private final tinyCacheSize:I

.field private final trimTask:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const-class v0, Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "io.netty.allocator.pageSize"

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculatePageShifts(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move v0, v1

    :goto_0
    sput v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    const-string v4, "io.netty.allocator.maxOrder"

    const/16 v5, 0xb

    invoke-static {v4, v5}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v4

    :try_start_1
    invoke-static {v0, v4}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculateChunkSize(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v5, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_1
    sput v5, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Lio/netty/util/NettyRuntime;->availableProcessors()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sget v6, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    shl-int v7, v6, v5

    int-to-long v8, v4

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    int-to-long v12, v7

    div-long/2addr v10, v12

    const-wide/16 v14, 0x2

    div-long/2addr v10, v14

    const-wide/16 v16, 0x3

    div-long v10, v10, v16

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v0, v10

    const-string v4, "io.netty.allocator.numHeapArenas"

    invoke-static {v4, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->maxDirectMemory()J

    move-result-wide v10

    div-long/2addr v10, v12

    div-long/2addr v10, v14

    div-long v10, v10, v16

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    const-string v8, "io.netty.allocator.numDirectArenas"

    invoke-static {v8, v7}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sput v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    const-string v8, "io.netty.allocator.tinyCacheSize"

    const/16 v9, 0x200

    invoke-static {v8, v9}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    const-string v9, "io.netty.allocator.smallCacheSize"

    const/16 v10, 0x100

    invoke-static {v9, v10}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    const-string v10, "io.netty.allocator.normalCacheSize"

    const/16 v11, 0x40

    invoke-static {v10, v11}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    const-string v11, "io.netty.allocator.maxCachedBufferCapacity"

    const v12, 0x8000

    invoke-static {v11, v12}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v11

    sput v11, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    const-string v12, "io.netty.allocator.cacheTrimInterval"

    invoke-static {v12, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    const-string v12, "io.netty.allocation.cacheTrimIntervalMillis"

    invoke-static {v12}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v13

    const-string v4, "io.netty.allocator.cacheTrimIntervalMillis"

    if-eqz v13, :cond_1

    sget-object v13, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "-Dio.netty.allocation.cacheTrimIntervalMillis is deprecated, use -Dio.netty.allocator.cacheTrimIntervalMillis"

    invoke-interface {v13, v14}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    invoke-static {v4}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v13, 0x0

    invoke-static {v12, v13, v14}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    goto :goto_3

    :cond_1
    :goto_2
    const-wide/16 v13, 0x0

    invoke-static {v4, v13, v14}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    :goto_3
    sput-wide v12, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    const-string v4, "io.netty.allocator.useCacheForAllThreads"

    const/4 v12, 0x1

    invoke-static {v4, v12}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    const-string v12, "io.netty.allocator.directMemoryCacheAlignment"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    const-string v12, "io.netty.allocator.maxCachedByteBuffersPerChunk"

    const/16 v13, 0x3ff

    invoke-static {v12, v13}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

    sget-object v13, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v13}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "-Dio.netty.allocator.numHeapArenas: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v14, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.numDirectArenas: {}"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v0, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.pageSize: {}"

    if-nez v3, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v0, v7, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    const-string v0, "-Dio.netty.allocator.maxOrder: {}"

    if-nez v2, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v0, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    shl-int v0, v6, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "-Dio.netty.allocator.chunkSize: {}"

    invoke-interface {v13, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.tinyCacheSize: {}"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.smallCacheSize: {}"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.normalCacheSize: {}"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.maxCachedBufferCapacity: {}"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.cacheTrimInterval: {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    sget-wide v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.cacheTrimIntervalMillis: {}"

    invoke-interface {v13, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.useCacheForAllThreads: {}"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v13, v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "-Dio.netty.allocator.maxCachedByteBuffersPerChunk: {}"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->directBufferPreferred()Z

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(Z)V

    sput-object v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6

    .line 1
    sget v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    sget v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    sget v5, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIII)V

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v6, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    sget v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    sget v8, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIII)V

    return-void
.end method

.method public constructor <init>(ZIIIIIII)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    sget-boolean v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    sget v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIIIZI)V

    return-void
.end method

.method public constructor <init>(ZIIIIIIIZI)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v0, p2

    move/from16 v8, p3

    move/from16 v9, p10

    invoke-direct/range {p0 .. p1}, Lio/netty/buffer/AbstractByteBufAllocator;-><init>(Z)V

    new-instance v1, Lio/netty/buffer/PooledByteBufAllocator$1;

    invoke-direct {v1, v7}, Lio/netty/buffer/PooledByteBufAllocator$1;-><init>(Lio/netty/buffer/PooledByteBufAllocator;)V

    iput-object v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->trimTask:Ljava/lang/Runnable;

    new-instance v1, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    move/from16 v2, p9

    invoke-direct {v1, v7, v2}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;-><init>(Lio/netty/buffer/PooledByteBufAllocator;Z)V

    iput-object v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    move/from16 v1, p6

    iput v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    move/from16 v1, p7

    iput v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    move/from16 v1, p8

    iput v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    invoke-static/range {p4 .. p5}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculateChunkSize(II)I

    move-result v1

    iput v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    const-string v1, "nHeapArena"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    const-string v1, "nDirectArena"

    invoke-static {v8, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    const-string v1, "directMemoryCacheAlignment"

    invoke-static {v9, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    if-lez v9, :cond_1

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->isDirectMemoryCacheAlignmentSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directMemoryCacheAlignment is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    neg-int v1, v9

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_6

    invoke-static/range {p4 .. p4}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculatePageShifts(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-lez v0, :cond_3

    invoke-static/range {p2 .. p2}, Lio/netty/buffer/PooledByteBufAllocator;->newArenaArray(I)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    new-instance v13, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v14, v11

    :goto_1
    iget-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    array-length v0, v0

    if-ge v14, v0, :cond_2

    new-instance v15, Lio/netty/buffer/PoolArena$HeapArena;

    iget v5, v7, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move v4, v10

    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolArena$HeapArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V

    iget-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    aput-object v15, v0, v14

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    iput-object v12, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    if-lez v8, :cond_5

    invoke-static/range {p3 .. p3}, Lio/netty/buffer/PooledByteBufAllocator;->newArenaArray(I)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    new-instance v8, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    iget-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    array-length v0, v0

    if-ge v11, v0, :cond_4

    new-instance v12, Lio/netty/buffer/PoolArena$DirectArena;

    iget v5, v7, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move v4, v10

    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolArena$DirectArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V

    iget-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    aput-object v12, v0, v11

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_5
    iput-object v12, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_4
    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    new-instance v0, Lio/netty/buffer/PooledByteBufAllocatorMetric;

    invoke-direct {v0, v7}, Lio/netty/buffer/PooledByteBufAllocatorMetric;-><init>(Lio/netty/buffer/PooledByteBufAllocator;)V

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directMemoryCacheAlignment: "

    const-string v2, " (expected: power of two)"

    .line 4
    invoke-static {v1, v9, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic access$000(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    return-object p0
.end method

.method public static synthetic access$100(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    return-object p0
.end method

.method public static synthetic access$200(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 0

    iget p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    return p0
.end method

.method public static synthetic access$300(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 0

    iget p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    return p0
.end method

.method public static synthetic access$400(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 0

    iget p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    return p0
.end method

.method public static synthetic access$500()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    return v0
.end method

.method public static synthetic access$600()I
    .locals 1

    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    return v0
.end method

.method public static synthetic access$700()J
    .locals 2

    sget-wide v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    return-wide v0
.end method

.method public static synthetic access$800(Lio/netty/buffer/PooledByteBufAllocator;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->trimTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static isDirectMemoryCacheAlignmentSupported()Z
    .locals 1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    return v0
.end method

.method private static newArenaArray(I)[Lio/netty/buffer/PoolArena;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation

    new-array p0, p0, [Lio/netty/buffer/PoolArena;

    return-object p0
.end method

.method private static usedMemory([Lio/netty/buffer/PoolArena;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolArena<",
            "*>;)J"
        }
    .end annotation

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v6, p0, v3

    invoke-virtual {v6}, Lio/netty/buffer/PoolArena;->numActiveBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v4, v1

    if-gez v6, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v4
.end method

.method private static validateAndCalculateChunkSize(II)I
    .locals 3

    const/16 v0, 0xe

    if-gt p1, v0, :cond_2

    move v1, p0

    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    const/high16 v2, 0x20000000

    if-gt v1, v2, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "pageSize (%d) << maxOrder (%d) must not exceed %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxOrder: "

    const-string v1, " (expected: 0-14)"

    invoke-static {v0, p1, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateAndCalculatePageShifts(I)I
    .locals 3

    const/16 v0, 0x1000

    const-string v1, "pageSize: "

    if-lt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, " (expected: power of 2)"

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, " (expected: 4096)"

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final chunkSize()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    return p0
.end method

.method public isDirectBufferPooled()Z
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newDirectBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->newUnsafeDirectByteBuf(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lio/netty/buffer/UnpooledDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lio/netty/buffer/AbstractByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public newHeapBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lio/netty/buffer/UnpooledHeapByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    :goto_0
    move-object p0, v0

    :goto_1
    invoke-static {p0}, Lio/netty/buffer/AbstractByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public normalCacheSize()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    return p0
.end method

.method public numDirectArenas()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public numHeapArenas()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public numThreadLocalCaches()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    :goto_0
    const/4 p0, 0x0

    if-nez v0, :cond_1

    return p0

    :cond_1
    array-length v1, v0

    move v2, p0

    :goto_1
    if-ge p0, v1, :cond_2

    aget-object v3, v0, p0

    iget-object v3, v3, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public smallCacheSize()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    return p0
.end method

.method public final threadCache()Lio/netty/buffer/PoolThreadCache;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/buffer/PoolThreadCache;

    return-object p0
.end method

.method public tinyCacheSize()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    return p0
.end method

.method public trimCurrentThreadCache()Z
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->getIfExists()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/buffer/PoolThreadCache;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/PoolThreadCache;->trim()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final usedDirectMemory()J
    .locals 2

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {p0}, Lio/netty/buffer/PooledByteBufAllocator;->usedMemory([Lio/netty/buffer/PoolArena;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final usedHeapMemory()J
    .locals 2

    iget-object p0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {p0}, Lio/netty/buffer/PooledByteBufAllocator;->usedMemory([Lio/netty/buffer/PoolArena;)J

    move-result-wide v0

    return-wide v0
.end method
