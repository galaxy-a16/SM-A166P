.class final Lio/netty/buffer/PoolChunk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/PoolChunkMetric;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolChunkMetric;"
    }
.end annotation


# instance fields
.field final arena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final cachedNioBuffers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field private final depthMap:[B

.field private freeBytes:I

.field private final log2ChunkSize:I

.field private final maxOrder:I

.field private final maxSubpageAllocs:I

.field final memory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final memoryMap:[B

.field next:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field final offset:I

.field private final pageShifts:I

.field private final pageSize:I

.field parent:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field prev:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final subpageOverflowMask:I

.field private final subpages:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field final unpooled:Z

.field private final unusable:B


# direct methods
.method public constructor <init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;TT;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    iput p4, p0, Lio/netty/buffer/PoolChunk;->offset:I

    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    const/4 p2, 0x0

    iput p2, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    iput p2, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    iput p2, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    iput p2, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    add-int/2addr v0, p2

    int-to-byte p4, v0

    iput-byte p4, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    iput p3, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    invoke-static {p3}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result p3

    iput p3, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    iput p2, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;IIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;TT;IIIII)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    iput p3, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    iput p5, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    iput p4, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    iput p6, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    iput p7, p0, Lio/netty/buffer/PoolChunk;->offset:I

    add-int/lit8 p1, p4, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    invoke-static {p6}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result p1

    iput p1, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    const/4 p1, 0x1

    sub-int/2addr p3, p1

    not-int p2, p3

    iput p2, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    iput p6, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    shl-int p2, p1, p4

    iput p2, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    shl-int/2addr p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    array-length p2, p2

    new-array p2, p2, [B

    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    move p3, p1

    move p2, v0

    :goto_0
    if-gt p2, p4, :cond_1

    shl-int p5, p1, p2

    move p6, v0

    :goto_1
    if-ge p6, p5, :cond_0

    iget-object p7, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    int-to-byte v1, p2

    aput-byte v1, p7, p3

    iget-object p7, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    aput-byte v1, p7, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->newSubpageArray(I)[Lio/netty/buffer/PoolSubpage;

    move-result-object p1

    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    new-instance p1, Ljava/util/ArrayDeque;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    return-void
.end method

.method private allocateNode(I)I
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    neg-int v1, v1

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    if-le v2, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    :goto_0
    if-lt v2, p1, :cond_2

    and-int v2, v0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    iget-byte p1, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->updateParentsAlloc(I)V

    return v0

    :cond_2
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    if-le v2, p1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    goto :goto_0
.end method

.method private allocateRun(I)J
    .locals 2

    iget v0, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    invoke-static {p1}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result p1

    iget v1, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    sub-int/2addr p1, v1

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->allocateNode(I)I

    move-result p1

    if-gez p1, :cond_0

    int-to-long p0, p1

    return-wide p0

    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    int-to-long p0, p1

    return-wide p0
.end method

.method private allocateSubpage(I)J
    .locals 11

    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0, p1}, Lio/netty/buffer/PoolArena;->findSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->allocateNode(I)I

    move-result v4

    if-gez v4, :cond_0

    int-to-long p0, v4

    monitor-exit v0

    return-wide p0

    :cond_0
    iget-object v8, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    iget v6, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    iget v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    sub-int/2addr v1, v6

    iput v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    invoke-direct {p0, v4}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v9

    aget-object v1, v8, v9

    if-nez v1, :cond_1

    new-instance v10, Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, v4}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v5

    move-object v1, v10

    move-object v2, v0

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lio/netty/buffer/PoolSubpage;-><init>(Lio/netty/buffer/PoolSubpage;Lio/netty/buffer/PoolChunk;IIII)V

    aput-object v10, v8, v9

    move-object v1, v10

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0, p1}, Lio/netty/buffer/PoolSubpage;->init(Lio/netty/buffer/PoolSubpage;I)V

    :goto_0
    invoke-virtual {v1}, Lio/netty/buffer/PoolSubpage;->allocate()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static bitmapIdx(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private depth(I)B
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method private initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JII)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JII)V"
        }
    .end annotation

    .line 2
    invoke-static {p3, p4}, Lio/netty/buffer/PoolChunk;->memoryMapIdx(J)I

    move-result v0

    iget-object v2, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v0

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, p5

    iget v7, v2, Lio/netty/buffer/PoolSubpage;->elemSize:I

    mul-int/2addr v3, v7

    add-int/2addr v3, v0

    iget v0, p0, Lio/netty/buffer/PoolChunk;->offset:I

    add-int v5, v3, v0

    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->threadCache()Lio/netty/buffer/PoolThreadCache;

    move-result-object v8

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    return-void
.end method

.method private static log2(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private static memoryMapIdx(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private newSubpageArray(I)[Lio/netty/buffer/PoolSubpage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    new-array p0, p1, [Lio/netty/buffer/PoolSubpage;

    return-object p0
.end method

.method private runLength(I)I
    .locals 1

    iget v0, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x1

    shl-int/2addr p0, v0

    return p0
.end method

.method private runOffset(I)I
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v1

    shl-int/2addr v0, v1

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method private setValue(IB)V
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    aput-byte p2, p0, p1

    return-void
.end method

.method private subpageIdx(I)I
    .locals 0

    iget p0, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    xor-int/2addr p0, p1

    return p0
.end method

.method private updateParentsAlloc(I)V
    .locals 2

    :goto_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    ushr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result p1

    if-ge v1, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, p1

    :goto_1
    invoke-direct {p0, v0, v1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    move p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateParentsFree(I)V
    .locals 4

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :goto_0
    if-le p1, v1, :cond_2

    ushr-int/lit8 v2, p1, 0x1

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v3

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result p1

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_0

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    int-to-byte p1, p1

    invoke-direct {p0, v2, p1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    goto :goto_2

    :cond_0
    if-ge v3, p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    invoke-direct {p0, v2, v3}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    :goto_2
    move p1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private usage(I)I
    .locals 5

    .line 2
    const/16 v0, 0x64

    if-nez p1, :cond_0

    return v0

    :cond_0
    int-to-long v1, p1

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    iget p0, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    int-to-long p0, p0

    div-long/2addr v1, p0

    long-to-int p0, v1

    if-nez p0, :cond_1

    const/16 p0, 0x63

    return p0

    :cond_1
    sub-int/2addr v0, p0

    return v0
.end method

.method private value(I)B
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    aget-byte p0, p0, p1

    return p0
.end method


# virtual methods
.method public allocate(Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;II)Z"
        }
    .end annotation

    iget v0, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lio/netty/buffer/PoolChunk;->allocateRun(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lio/netty/buffer/PoolChunk;->allocateSubpage(I)J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    const-wide/16 v0, 0x0

    cmp-long p3, v5, v0

    if-gez p3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p3, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    move-object v4, p3

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lio/netty/buffer/PoolChunk;->initBuf(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V

    const/4 p0, 0x1

    return p0
.end method

.method public chunkSize()I
    .locals 0

    iget p0, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    return p0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0, p0}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    return-void
.end method

.method public free(JLjava/nio/ByteBuffer;)V
    .locals 3

    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->memoryMapIdx(J)I

    move-result v0

    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->bitmapIdx(J)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v1

    aget-object p2, p2, v1

    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget v2, p2, Lio/netty/buffer/PoolSubpage;->elemSize:I

    invoke-virtual {v1, v2}, Lio/netty/buffer/PoolArena;->findSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v1

    monitor-enter v1

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr p1, v2

    :try_start_0
    invoke-virtual {p2, v1, p1}, Lio/netty/buffer/PoolSubpage;->free(Lio/netty/buffer/PoolSubpage;I)Z

    move-result p1

    if-eqz p1, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget p1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result p1

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->updateParentsFree(I)V

    if-eqz p3, :cond_2

    iget-object p1, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    sget p2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

    if-ge p1, p2, :cond_2

    iget-object p0, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    invoke-interface {p0, p3}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public initBuf(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI)V"
        }
    .end annotation

    invoke-static {p3, p4}, Lio/netty/buffer/PoolChunk;->memoryMapIdx(J)I

    move-result v0

    invoke-static {p3, p4}, Lio/netty/buffer/PoolChunk;->bitmapIdx(J)I

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v2

    iget v3, p0, Lio/netty/buffer/PoolChunk;->offset:I

    add-int v5, v2, v3

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v7

    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->threadCache()Lio/netty/buffer/PoolThreadCache;

    move-result-object v8

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v8}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JII)V

    :goto_0
    return-void
.end method

.method public initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI)V"
        }
    .end annotation

    .line 1
    invoke-static {p3, p4}, Lio/netty/buffer/PoolChunk;->bitmapIdx(J)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Chunk("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->usage(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->q(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public usage()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->usage(I)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
