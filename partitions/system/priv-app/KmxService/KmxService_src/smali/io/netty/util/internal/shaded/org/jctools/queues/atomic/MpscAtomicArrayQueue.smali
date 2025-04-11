.class public Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueL3Pad;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->clear()V

    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->mask:I

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;->lvProducerLimit()J

    move-result-wide v1

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueProducerIndexField;->lvProducerIndex()J

    move-result-wide v3

    cmp-long v5, v3, v1

    const-wide/16 v6, 0x1

    if-ltz v5, :cond_2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;->lvConsumerIndex()J

    move-result-wide v1

    int-to-long v8, v0

    add-long/2addr v1, v8

    add-long/2addr v1, v6

    cmp-long v5, v3, v1

    if-ltz v5, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;->soProducerLimit(J)V

    :cond_2
    add-long/2addr v6, v3

    invoke-virtual {p0, v3, v4, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueProducerIndexField;->casProducerIndex(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    int-to-long v0, v0

    invoke-static {v3, v4, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v0

    iget-object p0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {p0, v0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;->lpConsumerIndex()J

    move-result-wide v1

    iget v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->mask:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v3

    invoke-static {v0, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueProducerIndexField;->lvProducerIndex()J

    move-result-wide v4

    cmp-long p0, v1, v4

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {v0, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    return-object v4
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;->lpConsumerIndex()J

    move-result-wide v0

    iget v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->mask:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->calcCircularRefElementOffset(JJ)I

    move-result v2

    iget-object v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v3, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueProducerIndexField;->lvProducerIndex()J

    move-result-wide v6

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {v3, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->lvRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    return-object v5

    :cond_2
    :goto_0
    invoke-static {v3, v2, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->soRefElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueConsumerIndexField;->soConsumerIndex(J)V

    return-object v4
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicReferenceArrayQueue;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
