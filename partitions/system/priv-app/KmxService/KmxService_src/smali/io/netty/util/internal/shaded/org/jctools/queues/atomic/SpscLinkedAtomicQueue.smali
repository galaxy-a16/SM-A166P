.class public Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;-><init>()V

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->newNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueConsumerNodeRef;->spConsumerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic isEmpty()Z
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object p1

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->lpProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V

    const/4 p0, 0x1

    return p0
.end method

.method public peek()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public poll()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/SpscLinkedAtomicQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueue;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
