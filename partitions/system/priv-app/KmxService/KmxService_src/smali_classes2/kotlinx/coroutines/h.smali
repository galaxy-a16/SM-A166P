.class public final Lkotlinx/coroutines/h;
.super Lkotlinx/coroutines/g0;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/g;
.implements Lrb/b;


# static fields
.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _state:Ljava/lang/Object;

.field public final d:Lkotlin/coroutines/d;

.field public final e:Lkotlin/coroutines/i;

.field public f:Lkotlinx/coroutines/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "_decision"

    const-class v1, Lkotlinx/coroutines/h;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILkotlin/coroutines/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/g0;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    const/4 p1, 0x0

    iput p1, p0, Lkotlinx/coroutines/h;->_decision:I

    sget-object p1, Lkotlinx/coroutines/b;->a:Lkotlinx/coroutines/b;

    iput-object p1, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static r(Ljava/lang/Object;Lvb/b;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v(Lkotlinx/coroutines/k1;Ljava/lang/Object;ILvb/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lkotlinx/coroutines/q;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    if-nez p3, :cond_5

    instance-of p2, p0, Lkotlinx/coroutines/f;

    if-eqz p2, :cond_4

    instance-of p2, p0, Lkotlinx/coroutines/c;

    if-eqz p2, :cond_5

    :cond_4
    if-eqz p4, :cond_7

    :cond_5
    new-instance p2, Lkotlinx/coroutines/p;

    instance-of v0, p0, Lkotlinx/coroutines/f;

    if-eqz v0, :cond_6

    check-cast p0, Lkotlinx/coroutines/f;

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    move-object v2, p0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/f;Lvb/b;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V

    move-object p1, p2

    :cond_7
    :goto_2
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 9

    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    instance-of v0, p1, Lkotlinx/coroutines/k1;

    if-nez v0, :cond_7

    instance-of v0, p1, Lkotlinx/coroutines/q;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/p;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/p;

    iget-object v1, v0, Lkotlinx/coroutines/p;->e:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-static {v0, v1, p2, v2}, Lkotlinx/coroutines/p;->a(Lkotlinx/coroutines/p;Lkotlinx/coroutines/f;Ljava/util/concurrent/CancellationException;I)Lkotlinx/coroutines/p;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lkotlinx/coroutines/p;->b:Lkotlinx/coroutines/f;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/h;->g(Lkotlinx/coroutines/f;Ljava/lang/Throwable;)V

    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/p;->c:Lvb/b;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/h;->i(Lvb/b;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object v7, Lkotlinx/coroutines/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v8, Lkotlinx/coroutines/p;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object v0, v8

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/f;Lvb/b;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V

    invoke-virtual {v7, p0, p1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lkotlin/coroutines/d;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lkotlinx/coroutines/g0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Lkotlinx/coroutines/p;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/p;

    iget-object p1, p1, Lkotlinx/coroutines/p;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    return-object p0
.end method

.method public final g(Lkotlinx/coroutines/f;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/f;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    invoke-static {p0, p2}, Lfc/e;->s(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final getCallerFrame()Lrb/b;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

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

    iget-object p0, p0, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    return-object p0
.end method

.method public final h(Lvb/b;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-interface {p1, p2}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    invoke-static {p0, p2}, Lfc/e;->s(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final i(Lvb/b;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-interface {p1, p2}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    invoke-static {p0, p2}, Lfc/e;->s(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 4

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/k1;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lkotlinx/coroutines/i;

    instance-of v2, v0, Lkotlinx/coroutines/f;

    invoke-direct {v1, p0, p1, v2}, Lkotlinx/coroutines/i;-><init>(Lkotlin/coroutines/d;Ljava/lang/Throwable;Z)V

    sget-object v3, Lkotlinx/coroutines/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_2

    check-cast v0, Lkotlinx/coroutines/f;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/h;->g(Lkotlinx/coroutines/f;Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/h;->q()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->k()V

    :cond_4
    iget p1, p0, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/h;->l(I)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/h;->f:Lkotlinx/coroutines/j0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/j0;->dispose()V

    sget-object v0, Lkotlinx/coroutines/j1;->a:Lkotlinx/coroutines/j1;

    iput-object v0, p0, Lkotlinx/coroutines/h;->f:Lkotlinx/coroutines/j0;

    return-void
.end method

.method public final l(I)V
    .locals 6

    :cond_0
    iget v0, p0, Lkotlinx/coroutines/h;->_decision:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v0, Lkotlinx/coroutines/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    if-nez v4, :cond_c

    instance-of v5, v0, Lkotlinx/coroutines/internal/e;

    if-eqz v5, :cond_c

    if-eq p1, v3, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move p1, v2

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v3

    :goto_3
    iget v5, p0, Lkotlinx/coroutines/g0;->c:I

    if-eq v5, v3, :cond_7

    if-ne v5, v1, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    if-ne p1, v2, :cond_c

    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/internal/e;

    iget-object p1, p1, Lkotlinx/coroutines/internal/e;->d:Lkotlinx/coroutines/t;

    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/t;->x(Lkotlin/coroutines/i;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/t;->i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_9
    invoke-static {}, Lkotlinx/coroutines/p1;->a()Lkotlinx/coroutines/r0;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/r0;->N()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/r0;->H(Lkotlinx/coroutines/g0;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v3}, Lkotlinx/coroutines/r0;->M(Z)V

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

    invoke-static {p0, v0, v3}, Li4/f;->G(Lkotlinx/coroutines/g0;Lkotlin/coroutines/d;Z)V

    :cond_b
    invoke-virtual {p1}, Lkotlinx/coroutines/r0;->O()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_b

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/g0;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_4
    invoke-virtual {p1}, Lkotlinx/coroutines/r0;->y()V

    goto :goto_5

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Lkotlinx/coroutines/r0;->y()V

    throw p0

    :cond_c
    invoke-static {p0, v0, v4}, Li4/f;->G(Lkotlinx/coroutines/g0;Lkotlin/coroutines/d;Z)V

    :goto_5
    return-void
.end method

.method public final m()Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->q()Z

    move-result v0

    :cond_0
    iget v1, p0, Lkotlinx/coroutines/h;->_decision:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v1, Lkotlinx/coroutines/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lkotlinx/coroutines/h;->f:Lkotlinx/coroutines/j0;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->o()Lkotlinx/coroutines/j0;

    :cond_3
    if-eqz v0, :cond_6

    iget-object v0, p0, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/e;

    if-eqz v1, :cond_4

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/internal/e;

    :cond_4
    if-eqz v5, :cond_6

    invoke-virtual {v5, p0}, Lkotlinx/coroutines/internal/e;->k(Lkotlinx/coroutines/g;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/h;->k()V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/h;->j(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0

    :cond_7
    if-eqz v0, :cond_a

    iget-object v0, p0, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/e;

    if-eqz v1, :cond_8

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/internal/e;

    :cond_8
    if-eqz v5, :cond_a

    invoke-virtual {v5, p0}, Lkotlinx/coroutines/internal/e;->k(Lkotlinx/coroutines/g;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lkotlinx/coroutines/h;->k()V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/h;->j(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    iget-object v0, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/q;

    if-nez v1, :cond_f

    iget v1, p0, Lkotlinx/coroutines/g0;->c:I

    if-eq v1, v3, :cond_c

    if-ne v1, v2, :cond_b

    goto :goto_3

    :cond_b
    move v3, v4

    :cond_c
    :goto_3
    if-eqz v3, :cond_e

    iget-object v1, p0, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    sget-object v2, Lc3/l;->f:Lc3/l;

    invoke-interface {v1, v2}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/y0;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lkotlinx/coroutines/y0;->isActive()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    check-cast v1, Lkotlinx/coroutines/f1;

    invoke-virtual {v1}, Lkotlinx/coroutines/f1;->u()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/h;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    throw v1

    :cond_e
    :goto_4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_f
    check-cast v0, Lkotlinx/coroutines/q;

    iget-object p0, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->o()Lkotlinx/coroutines/j0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    instance-of v1, v1, Lkotlinx/coroutines/k1;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/j0;->dispose()V

    sget-object v0, Lkotlinx/coroutines/j1;->a:Lkotlinx/coroutines/j1;

    iput-object v0, p0, Lkotlinx/coroutines/h;->f:Lkotlinx/coroutines/j0;

    :cond_1
    return-void
.end method

.method public final o()Lkotlinx/coroutines/j0;
    .locals 4

    sget-object v0, Lc3/l;->f:Lc3/l;

    iget-object v1, p0, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    invoke-interface {v1, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/y0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/j;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/j;-><init>(Lkotlinx/coroutines/h;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lfc/e;->u(Lkotlinx/coroutines/y0;ZLkotlinx/coroutines/b1;I)Lkotlinx/coroutines/j0;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/h;->f:Lkotlinx/coroutines/j0;

    return-object v0
.end method

.method public final p(Lvb/b;)V
    .locals 10

    instance-of v0, p1, Lkotlinx/coroutines/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/f;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/e;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/e;-><init>(Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/b;

    if-eqz v2, :cond_2

    sget-object v2, Lkotlinx/coroutines/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/f;

    const/4 v3, 0x0

    if-nez v2, :cond_e

    instance-of v2, v1, Lkotlinx/coroutines/q;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/q;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v6, v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6

    instance-of v1, v1, Lkotlinx/coroutines/i;

    if-eqz v1, :cond_5

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    :cond_4
    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/h;->h(Lvb/b;Ljava/lang/Throwable;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {v1, p1}, Lkotlinx/coroutines/h;->r(Ljava/lang/Object;Lvb/b;)V

    throw v3

    :cond_7
    instance-of v2, v1, Lkotlinx/coroutines/p;

    if-eqz v2, :cond_c

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/p;

    iget-object v6, v2, Lkotlinx/coroutines/p;->b:Lkotlinx/coroutines/f;

    if-nez v6, :cond_b

    instance-of v6, v0, Lkotlinx/coroutines/c;

    if-eqz v6, :cond_8

    return-void

    :cond_8
    iget-object v6, v2, Lkotlinx/coroutines/p;->e:Ljava/lang/Throwable;

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    move v4, v5

    :goto_2
    if-eqz v4, :cond_a

    invoke-virtual {p0, p1, v6}, Lkotlinx/coroutines/h;->h(Lvb/b;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/16 v4, 0x1d

    invoke-static {v2, v0, v3, v4}, Lkotlinx/coroutines/p;->a(Lkotlinx/coroutines/p;Lkotlinx/coroutines/f;Ljava/util/concurrent/CancellationException;I)Lkotlinx/coroutines/p;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_b
    invoke-static {v1, p1}, Lkotlinx/coroutines/h;->r(Ljava/lang/Object;Lvb/b;)V

    throw v3

    :cond_c
    instance-of v2, v0, Lkotlinx/coroutines/c;

    if-eqz v2, :cond_d

    return-void

    :cond_d
    new-instance v9, Lkotlinx/coroutines/p;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    move-object v2, v9

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lkotlinx/coroutines/p;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/f;Lvb/b;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V

    sget-object v2, Lkotlinx/coroutines/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_e
    invoke-static {v1, p1}, Lkotlinx/coroutines/h;->r(Ljava/lang/Object;Lvb/b;)V

    throw v3
.end method

.method public final q()Z
    .locals 4

    iget v0, p0, Lkotlinx/coroutines/g0;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

    check-cast p0, Lkotlinx/coroutines/internal/e;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/coroutines/q;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget v0, p0, Lkotlinx/coroutines/g0;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/h;->t(Ljava/lang/Object;ILvb/b;)V

    return-void
.end method

.method public final s()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/p;

    iget-object v0, v0, Lkotlinx/coroutines/p;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->k()V

    return v2

    :cond_0
    iput v2, p0, Lkotlinx/coroutines/h;->_decision:I

    sget-object v0, Lkotlinx/coroutines/b;->a:Lkotlinx/coroutines/b;

    iput-object v0, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public final t(Ljava/lang/Object;ILvb/b;)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/k1;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/k1;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, p3, v2}, Lkotlinx/coroutines/h;->v(Lkotlinx/coroutines/k1;Ljava/lang/Object;ILvb/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->q()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->k()V

    :cond_1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/h;->l(I)V

    return-void

    :cond_2
    instance-of p2, v0, Lkotlinx/coroutines/i;

    if-eqz p2, :cond_4

    check-cast v0, Lkotlinx/coroutines/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlinx/coroutines/i;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    iget-object p1, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/h;->i(Lvb/b;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Already resumed, but proposed with update "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CancellableContinuation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

    invoke-static {v1}, Lkotlinx/coroutines/a0;->M(Lkotlin/coroutines/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/k1;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lkotlinx/coroutines/i;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/a0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lkotlinx/coroutines/t;)V
    .locals 4

    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    iget-object v1, p0, Lkotlinx/coroutines/h;->d:Lkotlin/coroutines/d;

    instance-of v2, v1, Lkotlinx/coroutines/internal/e;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/internal/e;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Lkotlinx/coroutines/internal/e;->d:Lkotlinx/coroutines/t;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-ne v1, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    iget p1, p0, Lkotlinx/coroutines/g0;->c:I

    :goto_2
    invoke-virtual {p0, v0, p1, v3}, Lkotlinx/coroutines/h;->t(Ljava/lang/Object;ILvb/b;)V

    return-void
.end method

.method public final w(Ljava/lang/Object;Ljava/lang/Object;Lvb/b;)Lkotlinx/coroutines/internal/z;
    .locals 4

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/k1;

    sget-object v2, Lkotlinx/coroutines/a0;->a:Lkotlinx/coroutines/internal/z;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/k1;

    iget v3, p0, Lkotlinx/coroutines/g0;->c:I

    invoke-static {v1, p1, v3, p3, p2}, Lkotlinx/coroutines/h;->v(Lkotlinx/coroutines/k1;Ljava/lang/Object;ILvb/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->q()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/h;->k()V

    :cond_1
    return-object v2

    :cond_2
    instance-of p0, v0, Lkotlinx/coroutines/p;

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    check-cast v0, Lkotlinx/coroutines/p;

    iget-object p0, v0, Lkotlinx/coroutines/p;->d:Ljava/lang/Object;

    if-ne p0, p2, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p1

    :goto_0
    return-object v2

    :cond_4
    return-object p1
.end method
