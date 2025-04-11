.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields<",
        "TE;>;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final BUFFER_CONSUMED:Ljava/lang/Object;

.field private static final JUMP:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->BUFFER_CONSUMED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;-><init>()V

    const/4 v0, 0x2

    const-string v1, "initialCapacity"

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkGreaterThanOrEqual(IILjava/lang/String;)I

    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    shl-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->allocateRefArray(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->producerBuffer:[Ljava/lang/Object;

    iput-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->producerMask:J

    iput-object p1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerBuffer:[Ljava/lang/Object;

    iput-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerMask:J

    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->soProducerLimit(J)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->BUFFER_CONSUMED:Ljava/lang/Object;

    return-object v0
.end method

.method private newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "new buffer must have at least one element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v0, 0x2

    add-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->soConsumerIndex(J)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "new buffer must have at least one element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static nextArrayOffset(J)J
    .locals 2

    const-wide/16 v0, 0x2

    add-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private nextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)[TE;"
        }
    .end annotation

    invoke-static {p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->nextArrayOffset(J)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerBuffer:[Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    shl-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    iput-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerMask:J

    sget-object p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->BUFFER_CONSUMED:Ljava/lang/Object;

    invoke-static {p1, p2, p3, p0}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v0
.end method

.method private offerSlowPath(JJJ)I
    .locals 4

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->getCurrentBufferCapacity(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    cmp-long v2, p1, p3

    const/4 v3, 0x1

    if-lez v2, :cond_1

    invoke-virtual {p0, p5, p6, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->casProducerLimit(JJ)Z

    move-result p0

    if-nez p0, :cond_0

    return v3

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p3, p4, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->availableInQueue(JJ)J

    move-result-wide p1

    const-wide/16 p5, 0x0

    cmp-long p1, p1, p5

    if-gtz p1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-wide/16 p1, 0x1

    add-long/2addr p1, p3

    invoke-virtual {p0, p3, p4, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->casProducerIndex(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    return v3
.end method

.method private resize(J[Ljava/lang/Object;JLjava/lang/Object;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[TE;JTE;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->getNextBufferSize([Ljava/lang/Object;)I

    move-result v0

    :try_start_0
    invoke-static {v0}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->allocateRefArray(I)[Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->producerBuffer:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x2

    shl-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    iput-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->producerMask:J

    invoke-static {p4, p5, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v4

    invoke-static {p4, p5, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v6

    if-nez p6, :cond_0

    invoke-interface {p7}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object p6

    :cond_0
    invoke-static {v1, v6, v7, p6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-static {p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->nextArrayOffset(J)J

    move-result-wide p1

    invoke-static {p3, p1, p2, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->lvConsumerIndex()J

    move-result-wide p1

    invoke-virtual {p0, p4, p5, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->availableInQueue(JJ)J

    move-result-wide p1

    const-string p6, "availableInQueue"

    invoke-static {p1, p2, p6}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkPositive(JLjava/lang/String;)J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, p4

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->soProducerLimit(J)V

    const-wide/16 p1, 0x2

    add-long/2addr p4, p1

    invoke-virtual {p0, p4, p5}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->soProducerIndex(J)V

    sget-object p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    invoke-static {p3, v4, v5, p0}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p4, p5}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->soProducerIndex(J)V

    throw p1
.end method


# virtual methods
.method public abstract availableInQueue(JJ)J
.end method

.method public abstract getCurrentBufferCapacity(J)J
.end method

.method public abstract getNextBufferSize([Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)I"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 4

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->lvProducerIndex()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v6, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;

    iget-object v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->lvConsumerIndex()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->lvProducerIndex()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue$WeakIterator;-><init>([Ljava/lang/Object;JJ)V

    return-object v6
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    move-object v7, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->lvProducerLimit()J

    move-result-wide v5

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->lvProducerIndex()J

    move-result-wide v8

    const-wide/16 v0, 0x1

    and-long v2, v8, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v10, v7, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->producerMask:J

    iget-object v12, v7, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueColdProducerFields;->producerBuffer:[Ljava/lang/Object;

    cmp-long v0, v5, v8

    const/4 v13, 0x1

    if-gtz v0, :cond_4

    move-object v0, p0

    move-wide v1, v10

    move-wide v3, v8

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->offerSlowPath(JJJ)I

    move-result v0

    if-eq v0, v13, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    move-object v0, p0

    move-wide v1, v10

    move-object v3, v12

    move-wide v4, v8

    move-object/from16 v6, p1

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->resize(J[Ljava/lang/Object;JLjava/lang/Object;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)V

    return v13

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    const-wide/16 v0, 0x2

    add-long/2addr v0, v8

    invoke-virtual {p0, v8, v9, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->casProducerIndex(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v8, v9, v10, v11}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v0

    move-object/from16 v2, p1

    invoke-static {v12, v0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return v13

    :cond_5
    move-object/from16 v2, p1

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->lpConsumerIndex()J

    move-result-wide v1

    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerMask:J

    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->lvProducerIndex()J

    move-result-wide v8

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    :cond_0
    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    :cond_1
    sget-object v5, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v5, :cond_2

    invoke-direct {p0, v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->nextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v7
.end method

.method public poll()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->lpConsumerIndex()J

    move-result-wide v1

    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->consumerMask:J

    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->modifiedCalcCircularRefElementOffset(JJ)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->lvProducerIndex()J

    move-result-wide v9

    cmp-long v7, v1, v9

    if-eqz v7, :cond_1

    :cond_0
    invoke-static {v0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_1
    return-object v8

    :cond_2
    :goto_0
    sget-object v9, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v7, v9, :cond_3

    invoke-direct {p0, v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->nextBuffer([Ljava/lang/Object;J)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0, v5, v6, v8}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->soConsumerIndex(J)V

    return-object v7
.end method

.method public size()I
    .locals 6

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->lvConsumerIndex()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueProducerFields;->lvProducerIndex()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->lvConsumerIndex()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    sub-long/2addr v2, v4

    const/4 p0, 0x1

    shr-long v0, v2, p0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    long-to-int p0, v0

    return p0

    :cond_1
    move-wide v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
