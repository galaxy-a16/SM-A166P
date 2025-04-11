.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueueL0Pad;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
.implements Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueueL0Pad<",
        "TE;>;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
        "TE;>;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;"
    }
.end annotation


# instance fields
.field protected final buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected final mask:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueueL0Pad;-><init>()V

    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->allocateRefArray(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    :goto_0
    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 0

    invoke-static {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil;->isEmpty(Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvConsumerIndex()J

    move-result-wide v1

    invoke-interface {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvProducerIndex()J

    move-result-wide v3

    new-instance v8, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;

    iget-wide v5, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    iget-object v7, p0, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/shaded/org/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;-><init>(JJJ[Ljava/lang/Object;)V

    return-object v8
.end method

.method public size()I
    .locals 0

    invoke-static {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil;->size(Lio/netty/util/internal/shaded/org/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
