.class public Lkotlinx/coroutines/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/y0;
.implements Lkotlinx/coroutines/m;
.implements Lkotlinx/coroutines/l1;
.implements Lkotlinx/coroutines/selects/d;


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lkotlinx/coroutines/f1;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/f1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/a0;->j:Lkotlinx/coroutines/l0;

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlinx/coroutines/a0;->i:Lkotlinx/coroutines/l0;

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/f1;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/f1;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public static I(Lkotlinx/coroutines/internal/n;)Lkotlinx/coroutines/l;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->j()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->m()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lkotlinx/coroutines/l;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlinx/coroutines/l;

    return-object p0

    :cond_1
    instance-of v0, p0, Lkotlinx/coroutines/i1;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static O(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/d1;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlinx/coroutines/d1;

    invoke-virtual {p0}, Lkotlinx/coroutines/d1;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/d1;->d()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Completing"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lkotlinx/coroutines/v0;

    if-eqz v0, :cond_4

    check-cast p0, Lkotlinx/coroutines/v0;

    invoke-interface {p0}, Lkotlinx/coroutines/v0;->isActive()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "Active"

    goto :goto_0

    :cond_3
    const-string p0, "New"

    goto :goto_0

    :cond_4
    instance-of p0, p0, Lkotlinx/coroutines/q;

    if-eqz p0, :cond_5

    const-string p0, "Cancelled"

    goto :goto_0

    :cond_5
    const-string p0, "Completed"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public B(Lkotlinx/coroutines/CompletionHandlerException;)V
    .locals 0

    throw p1
.end method

.method public final C(Lkotlinx/coroutines/y0;)V
    .locals 4

    sget-object v0, Lkotlinx/coroutines/j1;->a:Lkotlinx/coroutines/j1;

    if-nez p1, :cond_0

    iput-object v0, p0, Lkotlinx/coroutines/f1;->_parentHandle:Ljava/lang/Object;

    return-void

    :cond_0
    check-cast p1, Lkotlinx/coroutines/f1;

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/f1;->N(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlinx/coroutines/l;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/l;-><init>(Lkotlinx/coroutines/f1;)V

    const/4 v3, 0x2

    invoke-static {p1, v2, v1, v3}, Lfc/e;->u(Lkotlinx/coroutines/y0;ZLkotlinx/coroutines/b1;I)Lkotlinx/coroutines/j0;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/k;

    iput-object p1, p0, Lkotlinx/coroutines/f1;->_parentHandle:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lkotlinx/coroutines/v0;

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lkotlinx/coroutines/j0;->dispose()V

    iput-object v0, p0, Lkotlinx/coroutines/f1;->_parentHandle:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final D(ZZLvb/b;)Lkotlinx/coroutines/j0;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    instance-of v2, p3, Lkotlinx/coroutines/z0;

    if-eqz v2, :cond_0

    move-object v2, p3

    check-cast v2, Lkotlinx/coroutines/z0;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_4

    new-instance v2, Lkotlinx/coroutines/x0;

    invoke-direct {v2, p3}, Lkotlinx/coroutines/x0;-><init>(Lvb/b;)V

    goto :goto_2

    :cond_1
    instance-of v2, p3, Lkotlinx/coroutines/b1;

    if-eqz v2, :cond_2

    move-object v2, p3

    check-cast v2, Lkotlinx/coroutines/b1;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lkotlinx/coroutines/k0;

    invoke-direct {v2, p3, v0}, Lkotlinx/coroutines/k0;-><init>(Ljava/lang/Object;I)V

    :cond_4
    :goto_2
    iput-object p0, v2, Lkotlinx/coroutines/b1;->d:Lkotlinx/coroutines/f1;

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lkotlinx/coroutines/l0;

    if-eqz v4, :cond_8

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/l0;

    iget-boolean v5, v4, Lkotlinx/coroutines/l0;->a:Z

    if-eqz v5, :cond_6

    sget-object v4, Lkotlinx/coroutines/f1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v2

    :cond_6
    new-instance v3, Lkotlinx/coroutines/i1;

    invoke-direct {v3}, Lkotlinx/coroutines/i1;-><init>()V

    iget-boolean v5, v4, Lkotlinx/coroutines/l0;->a:Z

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    new-instance v5, Lkotlinx/coroutines/u0;

    invoke-direct {v5, v3}, Lkotlinx/coroutines/u0;-><init>(Lkotlinx/coroutines/i1;)V

    move-object v3, v5

    :goto_4
    sget-object v5, Lkotlinx/coroutines/f1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    instance-of v4, v3, Lkotlinx/coroutines/v0;

    if-eqz v4, :cond_16

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/v0;

    invoke-interface {v4}, Lkotlinx/coroutines/v0;->e()Lkotlinx/coroutines/i1;

    move-result-object v4

    if-nez v4, :cond_a

    if-eqz v3, :cond_9

    check-cast v3, Lkotlinx/coroutines/b1;

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/f1;->M(Lkotlinx/coroutines/b1;)V

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    sget-object v5, Lkotlinx/coroutines/j1;->a:Lkotlinx/coroutines/j1;

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz p1, :cond_11

    instance-of v8, v3, Lkotlinx/coroutines/d1;

    if-eqz v8, :cond_11

    monitor-enter v3

    :try_start_0
    move-object v8, v3

    check-cast v8, Lkotlinx/coroutines/d1;

    invoke-virtual {v8}, Lkotlinx/coroutines/d1;->b()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_b

    instance-of v9, p3, Lkotlinx/coroutines/l;

    if-eqz v9, :cond_10

    move-object v9, v3

    check-cast v9, Lkotlinx/coroutines/d1;

    invoke-virtual {v9}, Lkotlinx/coroutines/d1;->d()Z

    move-result v9

    if-nez v9, :cond_10

    :cond_b
    new-instance v5, Lkotlinx/coroutines/e1;

    invoke-direct {v5, v2, p0, v3}, Lkotlinx/coroutines/e1;-><init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/f1;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object v9

    invoke-virtual {v9, v2, v4, v5}, Lkotlinx/coroutines/internal/n;->q(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/k;)I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v9, v0, :cond_d

    if-eq v9, v7, :cond_c

    goto :goto_5

    :cond_c
    move v5, v6

    goto :goto_6

    :cond_d
    move v5, v0

    :goto_6
    if-nez v5, :cond_e

    monitor-exit v3

    goto/16 :goto_3

    :cond_e
    if-nez v8, :cond_f

    monitor-exit v3

    return-object v2

    :cond_f
    move-object v5, v2

    :cond_10
    monitor-exit v3

    goto :goto_7

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_11
    move-object v8, v1

    :goto_7
    if-eqz v8, :cond_13

    if-eqz p2, :cond_12

    invoke-interface {p3, v8}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v5

    :cond_13
    new-instance v5, Lkotlinx/coroutines/e1;

    invoke-direct {v5, v2, p0, v3}, Lkotlinx/coroutines/e1;-><init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/f1;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v5}, Lkotlinx/coroutines/internal/n;->q(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/k;)I

    move-result v3

    if-eq v3, v0, :cond_14

    if-eq v3, v7, :cond_15

    goto :goto_8

    :cond_14
    move v6, v0

    :cond_15
    if-eqz v6, :cond_5

    return-object v2

    :cond_16
    if-eqz p2, :cond_19

    instance-of p0, v3, Lkotlinx/coroutines/q;

    if-eqz p0, :cond_17

    check-cast v3, Lkotlinx/coroutines/q;

    goto :goto_9

    :cond_17
    move-object v3, v1

    :goto_9
    if-eqz v3, :cond_18

    iget-object v1, v3, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    :cond_18
    invoke-interface {p3, v1}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    sget-object p0, Lkotlinx/coroutines/j1;->a:Lkotlinx/coroutines/j1;

    return-object p0
.end method

.method public E()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final F(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/v0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/f1;->N(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v3

    :goto_0
    sget-object v1, Lkotlin/s;->a:Lkotlin/s;

    if-nez v0, :cond_2

    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object p0

    invoke-static {p0}, Lp9/d;->H(Lkotlin/coroutines/i;)V

    return-object v1

    :cond_2
    new-instance v0, Lkotlinx/coroutines/h;

    invoke-static {p1}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/d;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/h;->n()V

    new-instance p1, Lkotlinx/coroutines/k0;

    const/4 v4, 0x2

    invoke-direct {p1, v0, v4}, Lkotlinx/coroutines/k0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v2, v3, p1}, Lkotlinx/coroutines/f1;->D(ZZLvb/b;)Lkotlinx/coroutines/j0;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/e;

    invoke-direct {p1, p0, v3}, Lkotlinx/coroutines/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/h;->p(Lvb/b;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/h;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    return-object v1
.end method

.method public final G(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/f1;->P(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/a0;->d:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    instance-of v1, p1, Lkotlinx/coroutines/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lkotlinx/coroutines/q;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p1, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    :cond_2
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-object v1, Lkotlinx/coroutines/a0;->f:Lkotlinx/coroutines/internal/z;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final J(Lkotlinx/coroutines/i1;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/n;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lkotlinx/coroutines/z0;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/b1;

    :try_start_0
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/b1;->s(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lkotlin/h;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in completion handler "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->j()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/f1;->B(Lkotlinx/coroutines/CompletionHandlerException;)V

    :cond_3
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/f1;->o(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public K(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public L()V
    .locals 0

    return-void
.end method

.method public final M(Lkotlinx/coroutines/b1;)V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/i1;

    invoke-direct {v0}, Lkotlinx/coroutines/i1;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/internal/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/n;->h(Lkotlinx/coroutines/internal/n;)V

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->j()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/f1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final N(Ljava/lang/Object;)I
    .locals 5

    instance-of v0, p1, Lkotlinx/coroutines/l0;

    const/4 v1, -0x1

    const/4 v2, 0x1

    sget-object v3, Lkotlinx/coroutines/f1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/l0;

    iget-boolean v0, v0, Lkotlinx/coroutines/l0;->a:Z

    if-eqz v0, :cond_0

    return v4

    :cond_0
    sget-object v0, Lkotlinx/coroutines/a0;->j:Lkotlinx/coroutines/l0;

    invoke-virtual {v3, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->L()V

    return v2

    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/u0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/u0;

    iget-object v0, v0, Lkotlinx/coroutines/u0;->a:Lkotlinx/coroutines/i1;

    invoke-virtual {v3, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->L()V

    return v2

    :cond_4
    return v4
.end method

.method public final P(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lkotlinx/coroutines/v0;

    if-nez v0, :cond_0

    sget-object p0, Lkotlinx/coroutines/a0;->d:Lkotlinx/coroutines/internal/z;

    return-object p0

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/l0;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/b1;

    if-eqz v0, :cond_5

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/l;

    if-nez v0, :cond_5

    instance-of v0, p2, Lkotlinx/coroutines/q;

    if-nez v0, :cond_5

    check-cast p1, Lkotlinx/coroutines/v0;

    sget-object v0, Lkotlinx/coroutines/f1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v2, p2, Lkotlinx/coroutines/v0;

    if-eqz v2, :cond_2

    new-instance v2, Lkotlinx/coroutines/w0;

    move-object v3, p2

    check-cast v3, Lkotlinx/coroutines/v0;

    invoke-direct {v2, v3}, Lkotlinx/coroutines/w0;-><init>(Lkotlinx/coroutines/v0;)V

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/f1;->K(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/f1;->r(Lkotlinx/coroutines/v0;Ljava/lang/Object;)V

    :goto_1
    if-eqz v1, :cond_4

    return-object p2

    :cond_4
    sget-object p0, Lkotlinx/coroutines/a0;->f:Lkotlinx/coroutines/internal/z;

    return-object p0

    :cond_5
    check-cast p1, Lkotlinx/coroutines/v0;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->x(Lkotlinx/coroutines/v0;)Lkotlinx/coroutines/i1;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object p0, Lkotlinx/coroutines/a0;->f:Lkotlinx/coroutines/internal/z;

    goto/16 :goto_8

    :cond_6
    instance-of v2, p1, Lkotlinx/coroutines/d1;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/d1;

    goto :goto_2

    :cond_7
    move-object v2, v3

    :goto_2
    if-nez v2, :cond_8

    new-instance v2, Lkotlinx/coroutines/d1;

    invoke-direct {v2, v0, v3}, Lkotlinx/coroutines/d1;-><init>(Lkotlinx/coroutines/i1;Ljava/lang/Throwable;)V

    :cond_8
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lkotlinx/coroutines/d1;->d()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object p0, Lkotlinx/coroutines/a0;->d:Lkotlinx/coroutines/internal/z;

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Lkotlinx/coroutines/d1;->h()V

    if-eq v2, p1, :cond_a

    sget-object v5, Lkotlinx/coroutines/f1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    sget-object p0, Lkotlinx/coroutines/a0;->f:Lkotlinx/coroutines/internal/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v2

    goto :goto_8

    :cond_a
    :try_start_1
    invoke-virtual {v2}, Lkotlinx/coroutines/d1;->c()Z

    move-result v5

    instance-of v6, p2, Lkotlinx/coroutines/q;

    if-eqz v6, :cond_b

    move-object v6, p2

    check-cast v6, Lkotlinx/coroutines/q;

    goto :goto_4

    :cond_b
    move-object v6, v3

    :goto_4
    if-eqz v6, :cond_c

    iget-object v6, v6, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    invoke-virtual {v2, v6}, Lkotlinx/coroutines/d1;->a(Ljava/lang/Throwable;)V

    :cond_c
    invoke-virtual {v2}, Lkotlinx/coroutines/d1;->b()Ljava/lang/Throwable;

    move-result-object v6

    xor-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    move-object v6, v3

    :goto_5
    iput-object v6, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    if-eqz v6, :cond_e

    invoke-virtual {p0, v0, v6}, Lkotlinx/coroutines/f1;->J(Lkotlinx/coroutines/i1;Ljava/lang/Throwable;)V

    :cond_e
    instance-of v0, p1, Lkotlinx/coroutines/l;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/l;

    goto :goto_6

    :cond_f
    move-object v0, v3

    :goto_6
    if-nez v0, :cond_10

    invoke-interface {p1}, Lkotlinx/coroutines/v0;->e()Lkotlinx/coroutines/i1;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-static {p1}, Lkotlinx/coroutines/f1;->I(Lkotlinx/coroutines/internal/n;)Lkotlinx/coroutines/l;

    move-result-object v3

    goto :goto_7

    :cond_10
    move-object v3, v0

    :cond_11
    :goto_7
    if-eqz v3, :cond_12

    invoke-virtual {p0, v2, v3, p2}, Lkotlinx/coroutines/f1;->Q(Lkotlinx/coroutines/d1;Lkotlinx/coroutines/l;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    sget-object p0, Lkotlinx/coroutines/a0;->e:Lkotlinx/coroutines/internal/z;

    goto :goto_8

    :cond_12
    invoke-virtual {p0, v2, p2}, Lkotlinx/coroutines/f1;->t(Lkotlinx/coroutines/d1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_8
    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final Q(Lkotlinx/coroutines/d1;Lkotlinx/coroutines/l;Ljava/lang/Object;)Z
    .locals 4

    :cond_0
    new-instance v0, Lkotlinx/coroutines/c1;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/c1;-><init>(Lkotlinx/coroutines/f1;Lkotlinx/coroutines/d1;Lkotlinx/coroutines/l;Ljava/lang/Object;)V

    iget-object v1, p2, Lkotlinx/coroutines/l;->e:Lkotlinx/coroutines/m;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lfc/e;->u(Lkotlinx/coroutines/y0;ZLkotlinx/coroutines/b1;I)Lkotlinx/coroutines/j0;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/j1;->a:Lkotlinx/coroutines/j1;

    if-eq v0, v1, :cond_1

    return v3

    :cond_1
    invoke-static {p2}, Lkotlinx/coroutines/f1;->I(Lkotlinx/coroutines/internal/n;)Lkotlinx/coroutines/l;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/y0;)V

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->n(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final fold(Ljava/lang/Object;Lvb/c;)Ljava/lang/Object;
    .locals 1

    const-string v0, "operation"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p0}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Li4/g;->n(Lkotlin/coroutines/g;Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lkotlin/coroutines/h;
    .locals 0

    sget-object p0, Lc3/l;->f:Lc3/l;

    return-object p0
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/v0;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/v0;

    invoke-interface {p0}, Lkotlinx/coroutines/v0;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;)Z
    .locals 8

    sget-object v0, Lkotlinx/coroutines/a0;->d:Lkotlinx/coroutines/internal/z;

    instance-of v1, p0, Lkotlinx/coroutines/a1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/v0;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lkotlinx/coroutines/d1;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/d1;

    invoke-virtual {v1}, Lkotlinx/coroutines/d1;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlinx/coroutines/q;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->s(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/f1;->P(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/a0;->f:Lkotlinx/coroutines/internal/z;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lkotlinx/coroutines/a0;->d:Lkotlinx/coroutines/internal/z;

    :goto_1
    sget-object v1, Lkotlinx/coroutines/a0;->e:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    sget-object v1, Lkotlinx/coroutines/a0;->d:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    move-object v1, v0

    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lkotlinx/coroutines/d1;

    if-eqz v5, :cond_8

    monitor-enter v4

    :try_start_0
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/d1;

    invoke-virtual {v5}, Lkotlinx/coroutines/d1;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object p1, Lkotlinx/coroutines/a0;->g:Lkotlinx/coroutines/internal/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto/16 :goto_5

    :cond_5
    :try_start_1
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/d1;

    invoke-virtual {v5}, Lkotlinx/coroutines/d1;->c()Z

    move-result v5

    if-nez v1, :cond_6

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->s(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_6
    move-object p1, v4

    check-cast p1, Lkotlinx/coroutines/d1;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/d1;->a(Ljava/lang/Throwable;)V

    move-object p1, v4

    check-cast p1, Lkotlinx/coroutines/d1;

    invoke-virtual {p1}, Lkotlinx/coroutines/d1;->b()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_7

    move-object v0, p1

    :cond_7
    monitor-exit v4

    if-eqz v0, :cond_c

    check-cast v4, Lkotlinx/coroutines/d1;

    iget-object p1, v4, Lkotlinx/coroutines/d1;->a:Lkotlinx/coroutines/i1;

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/f1;->J(Lkotlinx/coroutines/i1;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_8
    instance-of v5, v4, Lkotlinx/coroutines/v0;

    if-eqz v5, :cond_f

    if-nez v1, :cond_9

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->s(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_9
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/v0;

    invoke-interface {v5}, Lkotlinx/coroutines/v0;->isActive()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/f1;->x(Lkotlinx/coroutines/v0;)Lkotlinx/coroutines/i1;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_2

    :cond_a
    new-instance v6, Lkotlinx/coroutines/d1;

    invoke-direct {v6, v4, v1}, Lkotlinx/coroutines/d1;-><init>(Lkotlinx/coroutines/i1;Ljava/lang/Throwable;)V

    sget-object v7, Lkotlinx/coroutines/f1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, p0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :goto_2
    move v4, v2

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v4, v1}, Lkotlinx/coroutines/f1;->J(Lkotlinx/coroutines/i1;Ljava/lang/Throwable;)V

    move v4, v3

    :goto_3
    if-eqz v4, :cond_4

    :cond_c
    :goto_4
    sget-object p1, Lkotlinx/coroutines/a0;->d:Lkotlinx/coroutines/internal/z;

    goto :goto_5

    :cond_d
    new-instance v5, Lkotlinx/coroutines/q;

    invoke-direct {v5, v1, v2}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v4, v5}, Lkotlinx/coroutines/f1;->P(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/a0;->d:Lkotlinx/coroutines/internal/z;

    if-eq v5, v6, :cond_e

    sget-object v4, Lkotlinx/coroutines/a0;->f:Lkotlinx/coroutines/internal/z;

    if-eq v5, v4, :cond_4

    move-object v0, v5

    goto :goto_6

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot happen in "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    sget-object p1, Lkotlinx/coroutines/a0;->g:Lkotlinx/coroutines/internal/z;

    :goto_5
    move-object v0, p1

    :cond_10
    :goto_6
    sget-object p1, Lkotlinx/coroutines/a0;->d:Lkotlinx/coroutines/internal/z;

    if-ne v0, p1, :cond_11

    goto :goto_7

    :cond_11
    sget-object p1, Lkotlinx/coroutines/a0;->e:Lkotlinx/coroutines/internal/z;

    if-ne v0, p1, :cond_12

    goto :goto_7

    :cond_12
    sget-object p1, Lkotlinx/coroutines/a0;->g:Lkotlinx/coroutines/internal/z;

    if-ne v0, p1, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/f1;->k(Ljava/lang/Object;)V

    :goto_7
    move v2, v3

    :goto_8
    return v2
.end method

.method public final minusKey(Lkotlin/coroutines/h;)Lkotlin/coroutines/i;
    .locals 0

    invoke-static {p0, p1}, Li4/g;->t(Lkotlin/coroutines/g;Lkotlin/coroutines/h;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method

.method public n(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->m(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o(Ljava/lang/Throwable;)Z
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->E()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    iget-object p0, p0, Lkotlinx/coroutines/f1;->_parentHandle:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/k;

    if-eqz p0, :cond_4

    sget-object v2, Lkotlinx/coroutines/j1;->a:Lkotlinx/coroutines/j1;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/k;->d(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public final plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/coroutines/f;->a(Lkotlin/coroutines/i;Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    return-object p0
.end method

.method public q(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->m(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->w()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final r(Lkotlinx/coroutines/v0;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lkotlinx/coroutines/f1;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/j0;->dispose()V

    sget-object v0, Lkotlinx/coroutines/j1;->a:Lkotlinx/coroutines/j1;

    iput-object v0, p0, Lkotlinx/coroutines/f1;->_parentHandle:Ljava/lang/Object;

    :cond_0
    instance-of v0, p2, Lkotlinx/coroutines/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lkotlinx/coroutines/q;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, Lkotlinx/coroutines/b1;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/b1;

    invoke-virtual {v0, p2}, Lkotlinx/coroutines/b1;->s(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/f1;->B(Lkotlinx/coroutines/CompletionHandlerException;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/v0;->e()Lkotlinx/coroutines/i1;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/n;

    :goto_2
    invoke-static {v0, p1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, Lkotlinx/coroutines/b1;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/b1;

    :try_start_1
    invoke-virtual {v4, p2}, Lkotlinx/coroutines/b1;->s(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, Lkotlin/h;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->j()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/f1;->B(Lkotlinx/coroutines/CompletionHandlerException;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3

    instance-of p0, p1, Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_0
    check-cast p1, Lkotlinx/coroutines/l1;

    check-cast p1, Lkotlinx/coroutines/f1;

    invoke-virtual {p1}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/d1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/d1;

    invoke-virtual {v0}, Lkotlinx/coroutines/d1;->b()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lkotlinx/coroutines/q;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/q;

    iget-object v0, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lkotlinx/coroutines/v0;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/CancellationException;

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/f1;->O(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Parent job is "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/y0;)V

    :cond_4
    move-object p1, v1

    :goto_1
    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot be cancelling child in this state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(Lkotlinx/coroutines/d1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lkotlinx/coroutines/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/q;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    :cond_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/d1;->c()Z

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/d1;->g(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/f1;->v(Lkotlinx/coroutines/d1;Ljava/util/ArrayList;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eq v5, v2, :cond_3

    if-eq v5, v2, :cond_3

    instance-of v6, v5, Ljava/util/concurrent/CancellationException;

    if-nez v6, :cond_3

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2, v5}, Lkotlin/h;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit p1

    const/4 v0, 0x0

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    if-ne v2, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p2, Lkotlinx/coroutines/q;

    invoke-direct {p2, v2, v0}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    :goto_3
    if-eqz v2, :cond_a

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/f1;->o(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/f1;->A(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v0

    goto :goto_5

    :cond_8
    :goto_4
    move v1, v3

    :goto_5
    if-eqz v1, :cond_a

    if-eqz p2, :cond_9

    move-object v1, p2

    check-cast v1, Lkotlinx/coroutines/q;

    sget-object v2, Lkotlinx/coroutines/q;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_6
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/f1;->K(Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/f1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, Lkotlinx/coroutines/v0;

    if-eqz v1, :cond_b

    new-instance v1, Lkotlinx/coroutines/w0;

    move-object v2, p2

    check-cast v2, Lkotlinx/coroutines/v0;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/w0;-><init>(Lkotlinx/coroutines/v0;)V

    goto :goto_7

    :cond_b
    move-object v1, p2

    :goto_7
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/f1;->r(Lkotlinx/coroutines/v0;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/f1;->O(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/a0;->q(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/d1;

    const/4 v2, 0x0

    const-string v3, "Job is still new or active: "

    if-eqz v1, :cond_3

    check-cast v0, Lkotlinx/coroutines/d1;

    invoke-virtual {v0}, Lkotlinx/coroutines/d1;->b()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v2, :cond_6

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->p()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/y0;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v1, v0, Lkotlinx/coroutines/v0;

    if-nez v1, :cond_7

    instance-of v1, v0, Lkotlinx/coroutines/q;

    if-eqz v1, :cond_5

    check-cast v0, Lkotlinx/coroutines/q;

    iget-object v0, v0, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_4
    if-nez v2, :cond_6

    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/y0;)V

    move-object v2, v1

    goto :goto_0

    :cond_5
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/y0;)V

    move-object v2, v0

    :cond_6
    :goto_0
    return-object v2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v(Lkotlinx/coroutines/d1;Ljava/util/ArrayList;)Ljava/lang/Throwable;
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkotlinx/coroutines/d1;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->p()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/y0;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v2, v0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    if-eq v3, p1, :cond_6

    instance-of v3, v3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v3, :cond_6

    move v3, v0

    goto :goto_1

    :cond_6
    move v3, p0

    :goto_1
    if-eqz v3, :cond_5

    move-object v1, v2

    :cond_7
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    return-object p1
.end method

.method public w()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final x(Lkotlinx/coroutines/v0;)Lkotlinx/coroutines/i1;
    .locals 2

    invoke-interface {p1}, Lkotlinx/coroutines/v0;->e()Lkotlinx/coroutines/i1;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lkotlinx/coroutines/l0;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/i1;

    invoke-direct {v0}, Lkotlinx/coroutines/i1;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/b1;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/b1;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->M(Lkotlinx/coroutines/b1;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State should have list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final y()Lkotlinx/coroutines/k;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/f1;->_parentHandle:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/k;

    return-object p0
.end method

.method public final z()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/f1;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/u;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
