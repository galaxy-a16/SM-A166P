.class public Lkotlinx/coroutines/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _next:Ljava/lang/Object;

.field volatile synthetic _prev:Ljava/lang/Object;

.field private volatile synthetic _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_next"

    const-class v1, Lkotlinx/coroutines/internal/n;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_removedRef"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/n;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lkotlinx/coroutines/internal/n;->_next:Ljava/lang/Object;

    iput-object p0, p0, Lkotlinx/coroutines/internal/n;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/internal/n;->_removedRef:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->n()Z

    return-void
.end method

.method public final f(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/i;)Z
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/n;->h(Lkotlinx/coroutines/internal/n;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final g()Lkotlinx/coroutines/internal/n;
    .locals 7

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/n;

    move-object v1, v0

    :goto_1
    const/4 v2, 0x0

    move-object v3, v2

    :goto_2
    iget-object v4, v1, Lkotlinx/coroutines/internal/n;->_next:Ljava/lang/Object;

    if-ne v4, p0, :cond_2

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lkotlinx/coroutines/internal/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->m()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v2

    :cond_3
    if-nez v4, :cond_4

    return-object v1

    :cond_4
    instance-of v5, v4, Lkotlinx/coroutines/internal/u;

    if-eqz v5, :cond_5

    check-cast v4, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v4, v1}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    instance-of v5, v4, Lkotlinx/coroutines/internal/v;

    if-eqz v5, :cond_8

    if-eqz v3, :cond_7

    sget-object v2, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lkotlinx/coroutines/internal/v;

    iget-object v4, v4, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v2, v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move-object v1, v3

    goto :goto_1

    :cond_7
    iget-object v1, v1, Lkotlinx/coroutines/internal/n;->_prev:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/n;

    goto :goto_2

    :cond_8
    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/internal/n;

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_2
.end method

.method public final h(Lkotlinx/coroutines/internal/n;)V
    .locals 2

    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/internal/n;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/n;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->m()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->g()Lkotlinx/coroutines/internal/n;

    :cond_2
    return-void
.end method

.method public final i()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->_next:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/u;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final j()Lkotlinx/coroutines/internal/n;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/internal/v;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/v;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/n;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/n;

    :cond_2
    return-object v0
.end method

.method public final k()Lkotlinx/coroutines/internal/n;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->g()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lkotlinx/coroutines/internal/n;->_prev:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/n;

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->m()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Lkotlinx/coroutines/internal/n;->_prev:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/n;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final l()V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/internal/v;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/v;

    iget-object p0, v0, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/n;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->g()Lkotlinx/coroutines/internal/n;

    return-void
.end method

.method public m()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/internal/v;

    return p0
.end method

.method public n()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->o()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o()Lkotlinx/coroutines/internal/n;
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/internal/v;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/v;

    iget-object p0, v0, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/n;

    return-object p0

    :cond_1
    if-ne v0, p0, :cond_2

    check-cast v0, Lkotlinx/coroutines/internal/n;

    return-object v0

    :cond_2
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/n;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->p()Lkotlinx/coroutines/internal/v;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->g()Lkotlinx/coroutines/internal/n;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final p()Lkotlinx/coroutines/internal/v;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->_removedRef:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/v;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/internal/v;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/v;-><init>(Lkotlinx/coroutines/internal/n;)V

    sget-object v1, Lkotlinx/coroutines/internal/n;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final q(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/k;)I
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p3, Lkotlinx/coroutines/internal/k;->c:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v0, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/a0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
