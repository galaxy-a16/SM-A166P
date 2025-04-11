.class final Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/DefaultPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PriorityQueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lio/netty/util/internal/DefaultPriorityQueue;


# direct methods
.method private constructor <init>(Lio/netty/util/internal/DefaultPriorityQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;->this$0:Lio/netty/util/internal/DefaultPriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/util/internal/DefaultPriorityQueue;Lio/netty/util/internal/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;-><init>(Lio/netty/util/internal/DefaultPriorityQueue;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;->index:I

    iget-object p0, p0, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;->this$0:Lio/netty/util/internal/DefaultPriorityQueue;

    invoke-static {p0}, Lio/netty/util/internal/DefaultPriorityQueue;->access$100(Lio/netty/util/internal/DefaultPriorityQueue;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lio/netty/util/internal/PriorityQueueNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;->index:I

    iget-object v1, p0, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;->this$0:Lio/netty/util/internal/DefaultPriorityQueue;

    invoke-static {v1}, Lio/netty/util/internal/DefaultPriorityQueue;->access$100(Lio/netty/util/internal/DefaultPriorityQueue;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;->this$0:Lio/netty/util/internal/DefaultPriorityQueue;

    invoke-static {v0}, Lio/netty/util/internal/DefaultPriorityQueue;->access$200(Lio/netty/util/internal/DefaultPriorityQueue;)[Lio/netty/util/internal/PriorityQueueNode;

    move-result-object v0

    iget v1, p0, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;->index:I

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lio/netty/util/internal/DefaultPriorityQueue$PriorityQueueIterator;->next()Lio/netty/util/internal/PriorityQueueNode;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
