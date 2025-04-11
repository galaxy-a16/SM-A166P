.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad2<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad2;-><init>()V

    return-void
.end method


# virtual methods
.method public getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-virtual {p2}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    invoke-virtual {p0, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;->spConsumerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;->lvConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueProducerNodeRef;->lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

.method public final newNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;-><init>()V

    return-object p0
.end method

.method public final newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance p0, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final size()I
    .locals 3

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueConsumerNodeRef;->lvConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueProducerNodeRef;->lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_1

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
