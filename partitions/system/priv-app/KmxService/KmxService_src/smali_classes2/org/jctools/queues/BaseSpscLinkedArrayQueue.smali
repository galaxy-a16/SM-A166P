.class abstract Lorg/jctools/queues/BaseSpscLinkedArrayQueue;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final JUMP:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;-><init>()V

    return-void
.end method

.method private newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->lvNextArrayAndUnlink([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerBuffer:[Ljava/lang/Object;

    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->lvNextArrayAndUnlink([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerBuffer:[Ljava/lang/Object;

    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr p2, v3

    invoke-virtual {p0, p2, p3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->soConsumerIndex(J)V

    const/4 p0, 0x0

    invoke-static {p1, v0, v1, p0}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "new buffer must have at least one element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 0

    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->isEmpty(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final linkOldToNew(J[Ljava/lang/Object;J[Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[TE;J[TE;JTE;)V"
        }
    .end annotation

    invoke-static {p6, p7, p8, p9}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p3, p6}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->soNext([Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object p6, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    invoke-static {p3, p4, p5, p6}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;->soProducerIndex(J)V

    return-void
.end method

.method public final lvNextArrayAndUnlink([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)[TE;"
        }
    .end annotation

    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->nextArrayOffset([Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return-object p0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBuffer:[Ljava/lang/Object;

    iget-wide v4, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;->producerIndex:J

    iget-wide v2, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerMask:J

    invoke-static {v4, v5, v2, v3}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v6

    iget-wide v8, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBufferLimit:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, v4

    move-wide v5, v6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v9, 0x0

    move-object v0, p0

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z

    move-result p0

    return p0
.end method

.method public abstract offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJJTE;",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public peek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerBuffer:[Ljava/lang/Object;

    iget-wide v1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->consumerIndex:J

    iget-wide v3, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerMask:J

    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v0, v1, v2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v3
.end method

.method public poll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerBuffer:[Ljava/lang/Object;

    iget-wide v1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->consumerIndex:J

    iget-wide v3, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerMask:J

    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    invoke-virtual {p0, v1, v2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->soConsumerIndex(J)V

    invoke-static {v0, v3, v4, v7}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v5

    :cond_1
    if-eqz v6, :cond_2

    invoke-direct {p0, v0, v1, v2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v7
.end method

.method public final size()I
    .locals 0

    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->size(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I

    move-result p0

    return p0
.end method

.method public final soNext([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;[TE;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->nextArrayOffset([Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;TE;JJ)V"
        }
    .end annotation

    invoke-static {p1, p5, p6, p2}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 p1, 0x1

    add-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;->soProducerIndex(J)V

    return-void
.end method
