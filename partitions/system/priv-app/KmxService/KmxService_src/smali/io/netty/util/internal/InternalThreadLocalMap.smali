.class public final Lio/netty/util/internal/InternalThreadLocalMap;
.super Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;
.source "SourceFile"


# static fields
.field private static final STRING_BUILDER_INITIAL_SIZE:I

.field private static final STRING_BUILDER_MAX_SIZE:I

.field public static final UNSET:Ljava/lang/Object;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/netty/util/internal/InternalThreadLocalMap;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    const-string v1, "io.netty.threadLocalMap.stringBuilder.initialSize"

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/netty/util/internal/InternalThreadLocalMap;->STRING_BUILDER_INITIAL_SIZE:I

    const-string v2, "-Dio.netty.threadLocalMap.stringBuilder.initialSize: {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "io.netty.threadLocalMap.stringBuilder.maxSize"

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/netty/util/internal/InternalThreadLocalMap;->STRING_BUILDER_MAX_SIZE:I

    const-string v2, "-Dio.netty.threadLocalMap.stringBuilder.maxSize: {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->newIndexedVariableTable()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public static destroy()V
    .locals 1

    sget-object v0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method private expandIndexedVariableTableAndSet(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    array-length v1, v0

    ushr-int/lit8 v2, p1, 0x1

    or-int/2addr v2, p1

    ushr-int/lit8 v3, v2, 0x2

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x4

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x8

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    sget-object v3, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    aput-object p2, v0, p1

    iput-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    return-void
.end method

.method private static fastGet(Lio/netty/util/concurrent/FastThreadLocalThread;)Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lio/netty/util/internal/InternalThreadLocalMap;

    invoke-direct {v0}, Lio/netty/util/internal/InternalThreadLocalMap;-><init>()V

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/FastThreadLocalThread;->setThreadLocalMap(Lio/netty/util/internal/InternalThreadLocalMap;)V

    :cond_0
    return-object v0
.end method

.method public static get()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    invoke-static {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->fastGet(Lio/netty/util/concurrent/FastThreadLocalThread;)Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->slowGet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    return-object v0
.end method

.method public static getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/InternalThreadLocalMap;

    return-object v0
.end method

.method private static newIndexedVariableTable()[Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static nextVariableIndex()I
    .locals 2

    sget-object v0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-ltz v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too many thread-local indexed variables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remove()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/FastThreadLocalThread;->setThreadLocalMap(Lio/netty/util/internal/InternalThreadLocalMap;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :goto_0
    return-void
.end method

.method private static slowGet()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 2

    sget-object v0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/internal/InternalThreadLocalMap;

    if-nez v1, :cond_0

    new-instance v1, Lio/netty/util/internal/InternalThreadLocalMap;

    invoke-direct {v1}, Lio/netty/util/internal/InternalThreadLocalMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public charsetEncoderCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->charsetEncoderCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->charsetEncoderCache:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public futureListenerStackDepth()I
    .locals 0

    iget p0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->futureListenerStackDepth:I

    return p0
.end method

.method public handlerSharableCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->handlerSharableCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->handlerSharableCache:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public indexedVariable(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    sget-object p0, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public isIndexedVariableSet(I)Z
    .locals 1

    iget-object p0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    sget-object p1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public localChannelReaderStackDepth()I
    .locals 0

    iget p0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->localChannelReaderStackDepth:I

    return p0
.end method

.method public random()Lio/netty/util/internal/ThreadLocalRandom;
    .locals 1

    iget-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->random:Lio/netty/util/internal/ThreadLocalRandom;

    if-nez v0, :cond_0

    new-instance v0, Lio/netty/util/internal/ThreadLocalRandom;

    invoke-direct {v0}, Lio/netty/util/internal/ThreadLocalRandom;-><init>()V

    iput-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->random:Lio/netty/util/internal/ThreadLocalRandom;

    :cond_0
    return-object v0
.end method

.method public removeIndexedVariable(I)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    aput-object v1, p0, p1

    return-object v0

    :cond_0
    sget-object p0, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    return-object p0
.end method

.method public setFutureListenerStackDepth(I)V
    .locals 0

    iput p1, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->futureListenerStackDepth:I

    return-void
.end method

.method public setIndexedVariable(ILjava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    aget-object p0, v0, p1

    aput-object p2, v0, p1

    sget-object p1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/InternalThreadLocalMap;->expandIndexedVariableTableAndSet(ILjava/lang/Object;)V

    return v2
.end method

.method public setLocalChannelReaderStackDepth(I)V
    .locals 0

    iput p1, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->localChannelReaderStackDepth:I

    return-void
.end method

.method public size()I
    .locals 6

    iget v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->futureListenerStackDepth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->localChannelReaderStackDepth:I

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v3, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->handlerSharableCache:Ljava/util/Map;

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v3, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->random:Lio/netty/util/internal/ThreadLocalRandom;

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v3, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->typeParameterMatcherGetCache:Ljava/util/Map;

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget-object v3, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->typeParameterMatcherFindCache:Ljava/util/Map;

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget-object v3, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->stringBuilder:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v3, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->charsetEncoderCache:Ljava/util/Map;

    if-eqz v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    iget-object v3, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->charsetDecoderCache:Ljava/util/Map;

    if-eqz v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    iget-object v3, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->arrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    iget-object p0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    array-length v3, p0

    :goto_1
    if-ge v2, v3, :cond_b

    aget-object v4, p0, v2

    sget-object v5, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v4, v5, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    sub-int/2addr v0, v1

    return v0
.end method

.method public typeParameterMatcherFindCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/util/internal/TypeParameterMatcher;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->typeParameterMatcherFindCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->typeParameterMatcherFindCache:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public typeParameterMatcherGetCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/netty/util/internal/TypeParameterMatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->typeParameterMatcherGetCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->typeParameterMatcherGetCache:Ljava/util/Map;

    :cond_0
    return-object v0
.end method
