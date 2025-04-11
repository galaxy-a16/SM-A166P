.class public Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->clear()V

    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerLimitField;->lvProducerLimit()J

    move-result-wide v2

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerIndexField;->lvProducerIndex()J

    move-result-wide v4

    cmp-long v6, v4, v2

    const-wide/16 v7, 0x1

    if-ltz v6, :cond_2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;->lvConsumerIndex()J

    move-result-wide v2

    add-long/2addr v2, v0

    add-long/2addr v2, v7

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerLimitField;->soProducerLimit(J)V

    :cond_2
    add-long/2addr v7, v4

    invoke-virtual {p0, v4, v5, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerIndexField;->casProducerIndex(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4, v5, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v0

    iget-object p0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {p0, v0, v1, p1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public peek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;->lpConsumerIndex()J

    move-result-wide v1

    iget-wide v3, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    invoke-static {v1, v2, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerIndexField;->lvProducerIndex()J

    move-result-wide v5

    cmp-long p0, v1, v5

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    return-object v5
.end method

.method public poll()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;->lpConsumerIndex()J

    move-result-wide v0

    iget-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    invoke-static {v0, v1, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->calcCircularRefElementOffset(JJ)J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerIndexField;->lvProducerIndex()J

    move-result-wide v7

    cmp-long v5, v0, v7

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {v4, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvRefElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    return-object v6

    :cond_2
    :goto_0
    invoke-static {v4, v2, v3, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soRefElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueConsumerIndexField;->soConsumerIndex(J)V

    return-object v5
.end method

.method public bridge synthetic size()I
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
