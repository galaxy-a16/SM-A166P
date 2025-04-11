.class public Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;-><init>(II)V

    return-void
.end method


# virtual methods
.method public availableInQueue(JJ)J
    .locals 2

    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;->maxQueueCapacity:J

    sub-long/2addr p1, p3

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public getCurrentBufferCapacity(J)J
    .locals 0

    return-wide p1
.end method

.method public getNextBufferSize([Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)I"
        }
    .end annotation

    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic size()I
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
