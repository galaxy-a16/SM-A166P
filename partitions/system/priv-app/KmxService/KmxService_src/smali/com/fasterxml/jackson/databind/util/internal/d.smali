.class public final Lcom/fasterxml/jackson/databind/util/internal/d;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Deque;


# instance fields
.field public a:Lcom/fasterxml/jackson/databind/util/internal/a;

.field public b:Lcom/fasterxml/jackson/databind/util/internal/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->e(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result p0

    return p0
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->c(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setPrevious(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/util/internal/a;->setNext(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->e(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final c(Lcom/fasterxml/jackson/databind/util/internal/a;)Z
    .locals 1

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/util/internal/a;->getPrevious()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/util/internal/a;->getNext()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/util/internal/a;->getNext()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object v2

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setPrevious(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setNext(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->c(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/util/internal/b;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/internal/b;-><init>(Lcom/fasterxml/jackson/databind/util/internal/a;I)V

    return-object v0
.end method

.method public final e(Lcom/fasterxml/jackson/databind/util/internal/a;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->c(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setNext(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/util/internal/a;->setPrevious(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final element()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->b()V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    return-object p0
.end method

.method public final f()Lcom/fasterxml/jackson/databind/util/internal/a;
    .locals 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/util/internal/a;->getNext()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object v2

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setNext(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setPrevious(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public final g()Lcom/fasterxml/jackson/databind/util/internal/a;
    .locals 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/util/internal/a;->getPrevious()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object v2

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setPrevious(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setNext(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public final getFirst()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->b()V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    return-object p0
.end method

.method public final getLast()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->b()V

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    return-object p0
.end method

.method public final h(Lcom/fasterxml/jackson/databind/util/internal/a;)V
    .locals 3

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/util/internal/a;->getPrevious()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object v0

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/util/internal/a;->getNext()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setNext(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    invoke-interface {p1, v2}, Lcom/fasterxml/jackson/databind/util/internal/a;->setPrevious(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    :goto_0
    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/util/internal/a;->setPrevious(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    invoke-interface {p1, v2}, Lcom/fasterxml/jackson/databind/util/internal/a;->setNext(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    :goto_1
    return-void
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/util/internal/b;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/internal/b;-><init>(Lcom/fasterxml/jackson/databind/util/internal/a;I)V

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->e(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result p0

    return p0
.end method

.method public final offerFirst(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->c(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setPrevious(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/util/internal/a;->setNext(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final bridge synthetic offerLast(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->e(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result p0

    return p0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    return-object p0
.end method

.method public final peekFirst()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    return-object p0
.end method

.method public final peekLast()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    return-object p0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->f()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic pollFirst()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->f()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic pollLast()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->g()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public final pop()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->b()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->f()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public final push(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->c(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->b:Lcom/fasterxml/jackson/databind/util/internal/a;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/internal/a;->setPrevious(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/util/internal/a;->setNext(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final remove()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->b()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->f()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/fasterxml/jackson/databind/util/internal/a;

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->c(Lcom/fasterxml/jackson/databind/util/internal/a;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->h(Lcom/fasterxml/jackson/databind/util/internal/a;)V

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/util/internal/d;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->b()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->f()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public final removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->b()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/internal/d;->g()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public final removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/internal/d;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/internal/d;->a:Lcom/fasterxml/jackson/databind/util/internal/a;

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Lcom/fasterxml/jackson/databind/util/internal/a;->getNext()Lcom/fasterxml/jackson/databind/util/internal/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    return v0
.end method
