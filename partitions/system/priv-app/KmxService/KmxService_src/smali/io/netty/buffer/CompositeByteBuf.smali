.class public Lio/netty/buffer/CompositeByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;,
        Lio/netty/buffer/CompositeByteBuf$Component;,
        Lio/netty/buffer/CompositeByteBuf$ByteWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/AbstractReferenceCountedByteBuf;",
        "Ljava/lang/Iterable<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# static fields
.field static final BYTE_ARRAY_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "[B>;"
        }
    .end annotation
.end field

.field static final BYTE_BUFFER_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private componentCount:I

.field private components:[Lio/netty/buffer/CompositeByteBuf$Component;

.field private final direct:Z

.field private freed:Z

.field private lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

.field private final maxNumComponents:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_ITERATOR:Ljava/util/Iterator;

    new-instance v0, Lio/netty/buffer/CompositeByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/CompositeByteBuf$1;-><init>()V

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->BYTE_ARRAY_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;

    new-instance v0, Lio/netty/buffer/CompositeByteBuf$2;

    invoke-direct {v0}, Lio/netty/buffer/CompositeByteBuf$2;-><init>()V

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->BYTE_BUFFER_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    iput p1, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZII)V

    return-void
.end method

.method private constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZII)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    const-string v0, "alloc"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/ByteBufAllocator;

    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    const/4 p1, 0x1

    if-lt p3, p1, :cond_0

    iput-boolean p2, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    iput p3, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    invoke-static {p4, p3}, Lio/netty/buffer/CompositeByteBuf;->newCompArray(II)[Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object p1

    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxNumComponents: "

    const-string p2, " (expected: >= 1)"

    .line 3
    invoke-static {p1, p3, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$200(Lio/netty/buffer/CompositeByteBuf;)[Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    return-object p0
.end method

.method private addComp(ILio/netty/buffer/CompositeByteBuf$Component;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->shiftComps(II)V

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aput-object p2, p0, p1

    return-void
.end method

.method private addComponent0(ZILio/netty/buffer/ByteBuf;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    invoke-static {p3}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v2

    invoke-direct {p0, p2, v1}, Lio/netty/buffer/CompositeByteBuf;->addComp(ILio/netty/buffer/CompositeByteBuf$Component;)V

    const/4 v0, 0x1

    if-lez v2, :cond_0

    iget v3, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_0

    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v4, p2, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    invoke-virtual {v1, v3}, Lio/netty/buffer/CompositeByteBuf$Component;->reposition(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget p1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return p2

    :catchall_0
    move-exception p0

    if-nez v0, :cond_3

    invoke-interface {p3}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_3
    throw p0
.end method

.method private allocBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private checkComponentIndex(I)V
    .locals 3

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    if-ltz p1, :cond_0

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "cIndex: %d (expected: >= 0 && <= numComponents(%d))"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearComps()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-direct {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    return-void
.end method

.method private consolidate0(II)V
    .locals 5

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    add-int v0, p1, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, p1

    iget v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, v2

    invoke-direct {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    move v3, p1

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lio/netty/buffer/CompositeByteBuf$Component;->transferTo(Lio/netty/buffer/ByteBuf;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-direct {p0, v2, v1}, Lio/netty/buffer/CompositeByteBuf;->newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v1

    aput-object v1, v0, p1

    if-nez p1, :cond_3

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-eq p2, v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    :cond_4
    return-void
.end method

.method private consolidateIfNeeded()V
    .locals 2

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->consolidate0(II)V

    :cond_0
    return-void
.end method

.method private copyTo(IIILio/netty/buffer/ByteBuf;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, p3

    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {v3, v1, p4, v0, v2}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v2

    add-int/2addr v0, v2

    sub-int/2addr p2, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result p0

    invoke-virtual {p4, p0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private static ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1

    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkAccessible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lio/netty/util/IllegalReferenceCountException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    if-eqz v0, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(I)V

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findIt(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object p0

    return-object p0
.end method

.method private findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    if-eqz v0, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ge p1, v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findIt(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object p0

    return-object p0
.end method

.method private findIt(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 5

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lt p1, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    iget v0, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-ge p1, v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    return-object v3

    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string p1, "should not reach here"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static newCompArray(II)[Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [Lio/netty/buffer/CompositeByteBuf$Component;

    return-object p0
.end method

.method private newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 9

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    move-object p0, p1

    :goto_0
    instance-of v0, p0, Lio/netty/buffer/WrappedByteBuf;

    if-nez v0, :cond_6

    instance-of v0, p0, Lio/netty/buffer/SwappedByteBuf;

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    instance-of v0, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    move v4, v0

    goto :goto_2

    :cond_1
    instance-of v0, p0, Lio/netty/buffer/PooledSlicedByteBuf;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lio/netty/buffer/PooledSlicedByteBuf;

    iget v0, v0, Lio/netty/buffer/PooledSlicedByteBuf;->adjustment:I

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lio/netty/buffer/DuplicatedByteBuf;

    if-nez v0, :cond_3

    instance-of v0, p0, Lio/netty/buffer/PooledDuplicatedByteBuf;

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    :cond_4
    move v4, v2

    :goto_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    if-ne v0, v6, :cond_5

    move-object v7, p1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    move-object v7, v0

    :goto_3
    new-instance v8, Lio/netty/buffer/CompositeByteBuf$Component;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    move-object v0, v8

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;IIILio/netty/buffer/ByteBuf;)V

    return-object v8

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0
.end method

.method private removeComp(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    return-void
.end method

.method private removeCompRange(II)V
    .locals 3

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-ge p2, v0, :cond_1

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    sub-int v2, v0, p2

    invoke-static {v1, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    sub-int p2, v0, p2

    add-int/2addr p2, p1

    move p1, p2

    :goto_0
    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iput p2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    return-void
.end method

.method private shiftComps(II)V
    .locals 5

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    add-int v1, v0, p2

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    array-length v3, v2

    if-le v1, v3, :cond_3

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const-class p2, [Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-static {p1, v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/netty/buffer/CompositeByteBuf$Component;

    goto :goto_0

    :cond_0
    new-array v2, v2, [Lio/netty/buffer/CompositeByteBuf$Component;

    if-lez p1, :cond_1

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-ge p1, v0, :cond_2

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {v3, p1, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    goto :goto_1

    :cond_3
    if-ge p1, v0, :cond_4

    add-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {v2, p1, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_1
    iput v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    return-void
.end method

.method private toComponentIndex0(I)I
    .locals 6

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object p0, p0, v1

    iget p0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ge p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :cond_3
    :goto_1
    return v1

    :cond_4
    :goto_2
    if-gt v1, v0, :cond_7

    add-int v2, v1, v0

    ushr-int/2addr v2, v3

    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v4, v4, v2

    iget v5, v4, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lt p1, v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_2

    :cond_5
    iget v0, v4, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-ge p1, v0, :cond_6

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_2

    :cond_6
    return v2

    :cond_7
    new-instance p0, Ljava/lang/Error;

    const-string p1, "should not reach here"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateComponentOffsets(I)V
    .locals 3

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->reposition(I)V

    iget v1, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public _getByte(I)B
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object p0

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p0

    return p0
.end method

.method public _getInt(I)I
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result p0

    and-int/2addr p0, v2

    or-int/2addr p0, v0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result p0

    and-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public _getIntLE(I)I
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getIntLE(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result p0

    and-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result p0

    and-int/2addr p0, v2

    or-int/2addr p0, v0

    return p0
.end method

.method public _getLong(I)J
    .locals 5

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v3

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public _getLongLE(I)J
    .locals 5

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLongLE(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    const-wide v3, 0xffffffffL

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v3

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v3

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public _getShort(I)S
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public _getShortLE(I)S
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShortLE(I)S

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public _getUnsignedMedium(I)I
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public _getUnsignedMediumLE(I)I
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v2, 0xffff

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v0

    and-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public _setByte(II)V
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object p0

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p0

    invoke-virtual {v0, p0, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public _setInt(II)V
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x10

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    :goto_0
    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    :goto_1
    return-void
.end method

.method public _setIntLE(II)V
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, p2, 0x10

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    add-int/lit8 p1, p1, 0x2

    :goto_0
    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    :goto_1
    return-void
.end method

.method public _setLong(IJ)V
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    if-ne v0, v1, :cond_1

    ushr-long v0, p2, v2

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_1
    long-to-int v0, p2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    add-int/lit8 p1, p1, 0x4

    ushr-long/2addr p2, v2

    :goto_0
    long-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    :goto_1
    return-void
.end method

.method public _setLongLE(IJ)V
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->setLongLE(IJ)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x20

    if-ne v0, v1, :cond_1

    long-to-int v0, p2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    add-int/lit8 p1, p1, 0x4

    ushr-long/2addr p2, v2

    goto :goto_0

    :cond_1
    ushr-long v0, p2, v2

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    add-int/lit8 p1, p1, 0x4

    :goto_0
    long-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    :goto_1
    return-void
.end method

.method public _setMedium(II)V
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    shr-int/lit8 v0, p2, 0x8

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    :goto_1
    return-void
.end method

.method public _setMediumLE(II)V
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setMediumLE(II)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    int-to-short v0, p2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_1
    shr-int/lit8 v0, p2, 0x8

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    add-int/lit8 p1, p1, 0x2

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    :goto_1
    return-void
.end method

.method public _setShort(II)V
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    int-to-byte v0, p2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    :goto_1
    return-void
.end method

.method public _setShortLE(II)V
    .locals 3

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    iget-object p0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    int-to-byte v0, p2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    add-int/lit8 p1, p1, 0x1

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    :goto_1
    return-void
.end method

.method public addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 1
    const-string v0, "buffer"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    return-object p0
.end method

.method public addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 2
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "buffer"

    invoke-static {v0, v3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-interface/range {p2 .. p2}, Lio/netty/util/ReferenceCounted;->release()Z

    return-object v1

    :cond_0
    instance-of v5, v0, Lio/netty/buffer/CompositeByteBuf;

    if-nez v5, :cond_1

    iget v3, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-direct {v1, v2, v3, v0}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    invoke-direct/range {p0 .. p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    return-object v1

    :cond_1
    move-object v5, v0

    check-cast v5, Lio/netty/buffer/CompositeByteBuf;

    sub-int v6, v4, v3

    invoke-virtual {v5, v3, v6}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    iget-object v7, v5, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    iget v8, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    iget v9, v1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    :try_start_0
    invoke-direct {v5, v3}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v10

    move/from16 v18, v10

    :goto_0
    aget-object v10, v7, v5

    iget v11, v10, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, v10, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int v19, v15, v11

    if-lez v19, :cond_2

    iget v14, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    new-instance v13, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v12, v10, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v12

    invoke-virtual {v10, v11}, Lio/netty/buffer/CompositeByteBuf$Component;->srcIdx(I)I

    move-result v16

    iget-object v0, v10, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v10, v11}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v17

    const/16 v20, 0x0

    move-object v10, v13

    move-object v11, v12

    move/from16 v12, v16

    move/from16 v21, v3

    move-object v3, v13

    move-object v13, v0

    move v0, v14

    move/from16 v14, v17

    move-object/from16 v22, v7

    move v7, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v20

    invoke-direct/range {v10 .. v17}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;IIILio/netty/buffer/ByteBuf;)V

    invoke-direct {v1, v0, v3}, Lio/netty/buffer/CompositeByteBuf;->addComp(ILio/netty/buffer/CompositeByteBuf$Component;)V

    goto :goto_1

    :cond_2
    move/from16 v21, v3

    move-object/from16 v22, v7

    move v7, v15

    :goto_1
    if-ne v4, v7, :cond_4

    if-eqz v2, :cond_3

    add-int/2addr v6, v9

    iput v6, v1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    :cond_3
    invoke-direct/range {p0 .. p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    invoke-interface/range {p2 .. p2}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_4
    add-int v18, v18, v19

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p2

    move/from16 v3, v21

    move-object/from16 v7, v22

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    iput v9, v1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    :cond_5
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-lt v2, v8, :cond_6

    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    invoke-direct {v1, v2}, Lio/netty/buffer/CompositeByteBuf;->removeComp(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    throw v0
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-object p0
.end method

.method public array()[B
    .locals 2

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object p0
.end method

.method public arrayOffset()I
    .locals 3

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object p0, p0, v1

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_1
    return v1
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    iget p0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->capacity(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public capacity(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 6

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkNewCapacity(I)V

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {p0, v2, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    iget p1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    if-lt p1, v0, :cond_4

    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    goto :goto_2

    :cond_0
    if-ge p1, v1, :cond_4

    const/4 v3, 0x0

    iput-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v1, p1

    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    iget v5, v4, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v5, v1

    iput v5, v4, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    invoke-static {v4}, Lio/netty/buffer/CompositeByteBuf$Component;->access$100(Lio/netty/buffer/CompositeByteBuf$Component;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-static {v4, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->access$102(Lio/netty/buffer/CompositeByteBuf$Component;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    sub-int/2addr v1, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v0

    if-le v0, p1, :cond_3

    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/AbstractByteBuf;->setIndex0(II)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    if-le v0, p1, :cond_4

    iput p1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    :cond_4
    :goto_2
    return-object p0
.end method

.method public bridge synthetic clear()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->clear()Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0}, Lio/netty/buffer/AbstractByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->copyTo(IIILio/netty/buffer/ByteBuf;)V

    :cond_0
    return-object v0
.end method

.method public deallocate()V
    .locals 3

    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public discardReadComponents()Lio/netty/buffer/CompositeByteBuf;
    .locals 8

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v4

    if-ne v1, v4, :cond_2

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->clearComps()V

    invoke-virtual {p0, v3, v3}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->adjustMarkers(I)V

    return-object p0

    :cond_2
    iget v4, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    move-object v6, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_4

    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v5

    iget v7, v6, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-le v7, v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v5, :cond_5

    return-object p0

    :cond_5
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    if-eqz v4, :cond_6

    iget v4, v4, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v4, v0, :cond_6

    iput-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    :cond_6
    invoke-direct {p0, v3, v5}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    iget v2, v6, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-direct {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    sub-int/2addr v0, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    invoke-virtual {p0, v2}, Lio/netty/buffer/AbstractByteBuf;->adjustMarkers(I)V

    return-object p0
.end method

.method public bridge synthetic discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardReadComponents()Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public forEachByteAsc0(IILio/netty/util/ByteProcessor;)I
    .locals 7

    const/4 v0, -0x1

    if-gt p2, p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v1

    sub-int/2addr p2, p1

    :goto_0
    if-lez p2, :cond_4

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v1

    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iget v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    iget v5, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v5, p1

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    instance-of v6, v3, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v6, :cond_2

    check-cast v3, Lio/netty/buffer/AbstractByteBuf;

    add-int v6, v4, v5

    invoke-virtual {v3, v4, v6, p3}, Lio/netty/buffer/AbstractByteBuf;->forEachByteAsc0(IILio/netty/util/ByteProcessor;)I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v4, v5, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v3

    :goto_1
    if-eq v3, v0, :cond_3

    iget p0, v2, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    sub-int/2addr v3, p0

    return v3

    :cond_3
    add-int/2addr p1, v5

    sub-int/2addr p2, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public forEachByteDesc0(IILio/netty/util/ByteProcessor;)I
    .locals 8

    const/4 v0, -0x1

    if-le p2, p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p1, p2

    :goto_0
    if-lez p1, :cond_4

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v1

    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iget v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    add-int v4, p1, p2

    invoke-virtual {v2, v4}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v6, v4, v5

    instance-of v7, v3, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v7, :cond_2

    check-cast v3, Lio/netty/buffer/AbstractByteBuf;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v6, p3}, Lio/netty/buffer/AbstractByteBuf;->forEachByteDesc0(IILio/netty/util/ByteProcessor;)I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v6, v5, p3}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result v3

    :goto_1
    if-eq v3, v0, :cond_3

    iget p0, v2, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    sub-int/2addr v3, p0

    return v3

    :cond_3
    sub-int/2addr p1, v5

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public getByte(I)B
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object p0

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p0

    return p0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide p0

    const-wide/32 p2, 0x7fffffff

    cmp-long p2, p0, p2

    if-lez p2, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    long-to-int p0, p0

    return p0
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 4

    .line 7
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/AbstractByteBuf;->checkDstIndex(IIII)V

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_1

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {v3, v1, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v2

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 4

    .line 8
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    :goto_0
    if-lez p3, :cond_1

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {v3, v1, p2, v2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 6

    .line 9
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v2

    :goto_0
    if-lez v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v3

    invoke-virtual {v5, v3, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v4

    sub-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    .line 10
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 4

    .line 11
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/AbstractByteBuf;->checkDstIndex(IIII)V

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_1

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {v3, v1, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v2

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public hasArray()Z
    .locals 3

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object p0, p0, v2

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public hasMemoryAddress()Z
    .locals 3

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object p0, p0, v2

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public internalComponent(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$Component;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf$Component;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public isAccessible()Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isDirect()Z
    .locals 4

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    iget-object v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-nez v0, :cond_0

    sget-object p0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;-><init>(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/CompositeByteBuf$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic markReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->markReaderIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public markReaderIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0}, Lio/netty/buffer/AbstractByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public memoryAddress()J
    .locals 4

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    iget p0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    return-wide v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 5

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, v1

    iget-object v3, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p0

    invoke-virtual {v3, p0, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    array-length v0, p1

    if-ne v0, v2, :cond_2

    aget-object p0, p1, v1

    return-object p0

    :cond_2
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_3

    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p0

    :cond_4
    sget-object p0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public nioBufferCount()I
    .locals 4

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    move v1, v2

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    iget-object v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object p0, p0, v2

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 8

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    new-array p0, v1, [Ljava/nio/ByteBuffer;

    sget-object p1, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    aput-object p1, p0, v0

    return-object p0

    :cond_0
    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-static {v2}, Lio/netty/util/internal/RecyclableArrayList;->newInstance(I)Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v2

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v3

    :goto_0
    if-lez p2, :cond_3

    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v4, v4, v3

    iget-object v5, v4, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v6, v4, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v6, p1

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v7

    if-eqz v7, :cond_2

    if-eq v7, v1, :cond_1

    invoke-virtual {v4, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v5, v4, v6}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v4, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v5, v4, v6}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/2addr p1, v6

    sub-int/2addr p2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_3
    new-array p0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    throw p0
.end method

.method public numComponents()I
    .locals 0

    iget p0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    return p0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 0

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->readBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-super {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 10
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 11
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public readBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    .line 13
    array-length v0, p1

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Lio/netty/buffer/AbstractByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public readBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 14
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic readerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public readerIndex(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic resetReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->resetReaderIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public resetReaderIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0}, Lio/netty/buffer/AbstractByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public retain()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 3
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public retain(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public setByte(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    if-nez p3, :cond_0

    sget-object p0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v4, v2, p2, v3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result v2

    if-gez v2, :cond_3

    if-nez v1, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_3
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    if-gtz p3, :cond_1

    :cond_5
    return v1
.end method

.method public setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 10

    .line 2
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    if-nez p5, :cond_0

    sget-object p0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p0, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    int-to-long v6, v1

    add-long v7, p3, v6

    move-object v6, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    if-gez v2, :cond_4

    if-nez v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_4
    add-int/2addr p1, v2

    sub-int/2addr p5, v2

    add-int/2addr v1, v2

    if-ne v2, v3, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    if-gtz p5, :cond_1

    :cond_6
    :goto_2
    return v1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 5

    .line 3
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    if-nez p3, :cond_0

    sget-object p0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    invoke-interface {p2, p0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v4, v2, p2, v3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    if-gez v2, :cond_4

    if-nez v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_4
    add-int/2addr p1, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    if-ne v2, v3, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    if-gtz p3, :cond_1

    :cond_6
    :goto_2
    return v1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 4

    .line 8
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/AbstractByteBuf;->checkSrcIndex(IIII)V

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_1

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {v3, v1, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v2

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 6

    .line 9
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v2

    :goto_0
    if-lez v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v3

    invoke-virtual {v5, v3, p2}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v4

    sub-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    .line 10
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 4

    .line 11
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/AbstractByteBuf;->checkSrcIndex(IIII)V

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    :goto_0
    if-lez p4, :cond_1

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {v3, v1, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    add-int/2addr p1, v2

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic setIndex(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public setIndex(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setInt(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 2
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    return-object p0
.end method

.method public bridge synthetic setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setLong(IJ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 2
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->_setLong(IJ)V

    return-object p0
.end method

.method public bridge synthetic setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setMedium(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 2
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setMedium(II)V

    return-object p0
.end method

.method public bridge synthetic setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setShort(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    return-object p0
.end method

.method public bridge synthetic setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setZero(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public setZero(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->skipBytes(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public skipBytes(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lio/netty/buffer/AbstractByteBuf;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", components="

    invoke-static {v0, v1}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->q(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->touch()Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public touch()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 3
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 4
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->touch()Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeByte(I)Lio/netty/buffer/CompositeByteBuf;

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeByte(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writeByte(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    return-object p0
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 7
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-super {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 9
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public writeBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    .line 11
    array-length v0, p1

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Lio/netty/buffer/AbstractByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 12
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeChar(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writeChar(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeDouble(D)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writeDouble(D)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeFloat(F)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writeFloat(F)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeInt(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writeInt(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeLong(J)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writeLong(J)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeMedium(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writeMedium(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeShort(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writeShort(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic writerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public writerIndex(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method
