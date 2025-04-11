.class public final Lkotlinx/coroutines/sync/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/sync/b;
.implements Lkotlinx/coroutines/selects/f;


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lkotlinx/coroutines/sync/h;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/h;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lp9/d;->l:Lkotlinx/coroutines/sync/a;

    goto :goto_0

    :cond_0
    sget-object p1, Lp9/d;->m:Lkotlinx/coroutines/sync/a;

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/sync/h;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 12

    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/sync/a;

    sget-object v2, Lp9/d;->l:Lkotlinx/coroutines/sync/a;

    sget-object v3, Lp9/d;->k:Lkotlinx/coroutines/internal/z;

    const-string v4, "Already locked by null"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "Illegal state "

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/a;

    iget-object v1, v1, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    if-eq v1, v3, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lkotlinx/coroutines/sync/h;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_3

    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/sync/f;

    if-eqz v1, :cond_12

    check-cast v0, Lkotlinx/coroutines/sync/f;

    iget-object v0, v0, Lkotlinx/coroutines/sync/f;->owner:Ljava/lang/Object;

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v6

    :goto_1
    if-eqz v0, :cond_11

    :goto_2
    move v0, v6

    :goto_3
    sget-object v1, Lkotlin/s;->a:Lkotlin/s;

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    invoke-static {p1}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    invoke-static {p1}, Ll9/b;->e0(Lkotlin/coroutines/d;)Lkotlinx/coroutines/h;

    move-result-object p1

    new-instance v0, Lkotlinx/coroutines/sync/c;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/sync/c;-><init>(Lkotlinx/coroutines/sync/h;Lkotlinx/coroutines/h;)V

    :cond_5
    :goto_4
    iget-object v8, p0, Lkotlinx/coroutines/sync/h;->_state:Ljava/lang/Object;

    instance-of v9, v8, Lkotlinx/coroutines/sync/a;

    if-eqz v9, :cond_7

    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/sync/a;

    iget-object v10, v9, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    if-eq v10, v3, :cond_6

    sget-object v10, Lkotlinx/coroutines/sync/h;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v11, Lkotlinx/coroutines/sync/f;

    iget-object v9, v9, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    invoke-direct {v11, v9}, Lkotlinx/coroutines/sync/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, p0, v8, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    sget-object v9, Lkotlinx/coroutines/sync/h;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v9, p0, v8, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;-><init>(Lkotlinx/coroutines/sync/h;Ljava/lang/Object;)V

    iget p0, p1, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {p1, v1, p0, v0}, Lkotlinx/coroutines/h;->t(Ljava/lang/Object;ILvb/b;)V

    goto :goto_7

    :cond_7
    instance-of v9, v8, Lkotlinx/coroutines/sync/f;

    if-eqz v9, :cond_f

    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/sync/f;

    iget-object v10, v9, Lkotlinx/coroutines/sync/f;->owner:Ljava/lang/Object;

    if-eqz v10, :cond_8

    move v10, v5

    goto :goto_5

    :cond_8
    move v10, v6

    :goto_5
    if-eqz v10, :cond_e

    :cond_9
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object v10

    invoke-virtual {v10, v0, v9}, Lkotlinx/coroutines/internal/n;->f(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/i;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v9, p0, Lkotlinx/coroutines/sync/h;->_state:Ljava/lang/Object;

    if-eq v9, v8, :cond_b

    sget-object v8, Lkotlinx/coroutines/sync/e;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v8, v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Lkotlinx/coroutines/sync/c;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/sync/c;-><init>(Lkotlinx/coroutines/sync/h;Lkotlinx/coroutines/h;)V

    goto :goto_4

    :cond_b
    :goto_6
    new-instance p0, Lkotlinx/coroutines/m1;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/m1;-><init>(Lkotlinx/coroutines/internal/n;)V

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/h;->p(Lvb/b;)V

    :goto_7
    invoke-virtual {p1}, Lkotlinx/coroutines/h;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_c

    goto :goto_8

    :cond_c
    move-object p0, v1

    :goto_8
    if-ne p0, p1, :cond_d

    return-object p0

    :cond_d
    return-object v1

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    instance-of v9, v8, Lkotlinx/coroutines/internal/u;

    if-eqz v9, :cond_10

    check-cast v8, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v8, p0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    instance-of v1, v0, Lkotlinx/coroutines/internal/u;

    if-eqz v1, :cond_13

    check-cast v0, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/sync/a;

    const-string v2, " but expected "

    const-string v3, "Mutex is locked by "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/a;

    if-nez p1, :cond_3

    iget-object v1, v1, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    sget-object v2, Lp9/d;->k:Lkotlinx/coroutines/internal/z;

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mutex is not locked"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v6, v1, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    if-ne v6, p1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    :goto_3
    sget-object v1, Lkotlinx/coroutines/sync/h;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lp9/d;->m:Lkotlinx/coroutines/sync/a;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/internal/u;

    if-eqz v1, :cond_7

    check-cast v0, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lkotlinx/coroutines/sync/f;

    if-eqz v1, :cond_f

    if-eqz p1, :cond_a

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/f;

    iget-object v6, v1, Lkotlinx/coroutines/sync/f;->owner:Ljava/lang/Object;

    if-ne v6, p1, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    :goto_4
    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lkotlinx/coroutines/sync/f;->owner:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_5
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/f;

    :goto_6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/n;

    if-ne v2, v1, :cond_b

    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->n()Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_7
    if-nez v2, :cond_c

    new-instance v2, Lkotlinx/coroutines/sync/g;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/sync/g;-><init>(Lkotlinx/coroutines/sync/f;)V

    sget-object v1, Lkotlinx/coroutines/sync/h;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/internal/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_c
    check-cast v2, Lkotlinx/coroutines/sync/e;

    invoke-virtual {v2}, Lkotlinx/coroutines/sync/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, v2, Lkotlinx/coroutines/sync/e;->d:Ljava/lang/Object;

    if-nez p0, :cond_d

    sget-object p0, Lp9/d;->j:Lkotlinx/coroutines/internal/z;

    :cond_d
    iput-object p0, v1, Lkotlinx/coroutines/sync/f;->owner:Ljava/lang/Object;

    invoke-virtual {v2}, Lkotlinx/coroutines/sync/e;->r()V

    return-void

    :cond_e
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/v;

    iget-object v2, v2, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->l()V

    goto :goto_6

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/sync/a;

    const/16 v2, 0x5d

    const-string v3, "Mutex["

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/sync/a;

    iget-object v0, v0, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/internal/u;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/u;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of p0, v0, Lkotlinx/coroutines/sync/f;

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/sync/f;

    iget-object v0, v0, Lkotlinx/coroutines/sync/f;->owner:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
