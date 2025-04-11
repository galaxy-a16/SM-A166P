.class public final Lkotlinx/coroutines/selects/c;
.super Lkotlinx/coroutines/internal/i;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/selects/g;
.implements Lkotlin/coroutines/d;
.implements Lrb/b;


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _result:Ljava/lang/Object;

.field volatile synthetic _state:Ljava/lang/Object;

.field public final d:Lkotlin/coroutines/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "_state"

    const-class v1, Lkotlinx/coroutines/selects/c;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/c;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_result"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/c;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/i;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/c;->d:Lkotlin/coroutines/d;

    sget-object p1, Lkotlinx/coroutines/selects/h;->a:Lkotlinx/coroutines/internal/z;

    iput-object p1, p0, Lkotlinx/coroutines/selects/c;->_state:Ljava/lang/Object;

    sget-object p1, Lkotlinx/coroutines/selects/h;->c:Lkotlinx/coroutines/internal/z;

    iput-object p1, p0, Lkotlinx/coroutines/selects/c;->_result:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/selects/c;->_parentHandle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lrb/b;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/selects/c;->d:Lkotlin/coroutines/d;

    instance-of v0, p0, Lrb/b;

    if-eqz v0, :cond_0

    check-cast p0, Lrb/b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/selects/c;->d:Lkotlin/coroutines/d;

    invoke-interface {p0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lkotlinx/coroutines/j0;)V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/selects/b;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/b;-><init>(Lkotlinx/coroutines/j0;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->v()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lkotlinx/coroutines/internal/n;->f(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->v()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/j0;->dispose()V

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 4

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/c;->_result:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/selects/h;->c:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    new-instance v2, Lkotlinx/coroutines/q;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    sget-object v0, Lkotlinx/coroutines/selects/c;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v1, :cond_4

    sget-object v0, Lkotlinx/coroutines/selects/c;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lkotlinx/coroutines/selects/h;->d:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lkotlinx/coroutines/selects/c;->d:Lkotlin/coroutines/d;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/c;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/j0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/j0;->dispose()V

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/n;

    :goto_0
    invoke-static {v0, p0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Lkotlinx/coroutines/selects/b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/selects/b;

    iget-object v1, v1, Lkotlinx/coroutines/selects/b;->d:Lkotlinx/coroutines/j0;

    invoke-interface {v1}, Lkotlinx/coroutines/j0;->dispose()V

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->j()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final t()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->v()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    sget-object v1, Lc3/l;->f:Lc3/l;

    invoke-interface {v0, v1}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/y0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/j;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/j;-><init>(Lkotlinx/coroutines/selects/c;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lfc/e;->u(Lkotlinx/coroutines/y0;ZLkotlinx/coroutines/b1;I)Lkotlinx/coroutines/j0;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/selects/c;->_parentHandle:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/j0;->dispose()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/c;->_result:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/selects/h;->c:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_3

    sget-object v0, Lkotlinx/coroutines/selects/c;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/selects/c;->_result:Ljava/lang/Object;

    :cond_3
    sget-object p0, Lkotlinx/coroutines/selects/h;->d:Lkotlinx/coroutines/internal/z;

    if-eq v0, p0, :cond_5

    instance-of p0, v0, Lkotlinx/coroutines/q;

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    check-cast v0, Lkotlinx/coroutines/q;

    iget-object p0, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SelectInstance(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/selects/c;->_state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/selects/c;->_result:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/q;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/q;

    iget-object v0, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    if-eq v0, p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->getContext()Lkotlin/coroutines/i;

    move-result-object p0

    invoke-static {p0, p1}, Lfc/e;->s(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final v()Z
    .locals 2

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/c;->_state:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/selects/h;->a:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/internal/u;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final w(Ljava/lang/Throwable;)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/c;->_result:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/selects/h;->c:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_1

    new-instance v0, Lkotlinx/coroutines/q;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    sget-object v2, Lkotlinx/coroutines/selects/c;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v1, :cond_2

    sget-object v0, Lkotlinx/coroutines/selects/c;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lkotlinx/coroutines/selects/h;->d:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/selects/c;->d:Lkotlin/coroutines/d;

    invoke-static {p0}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    invoke-static {p1}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x()Z
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->y()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/a0;->a:Lkotlinx/coroutines/internal/z;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected trySelectIdempotent result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y()Ljava/lang/Object;
    .locals 4

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/c;->_state:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/selects/h;->a:Lkotlinx/coroutines/internal/z;

    sget-object v2, Lkotlinx/coroutines/a0;->a:Lkotlinx/coroutines/internal/z;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    sget-object v0, Lkotlinx/coroutines/selects/c;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/c;->s()V

    return-object v2

    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/internal/u;

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v3
.end method
