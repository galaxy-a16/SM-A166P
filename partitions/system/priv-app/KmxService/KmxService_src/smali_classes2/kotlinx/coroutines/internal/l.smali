.class public final Lkotlinx/coroutines/internal/l;
.super Lkotlinx/coroutines/internal/u;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/internal/n;

.field public final b:Lkotlinx/coroutines/internal/n;

.field public final c:Lkotlinx/coroutines/internal/j;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/j;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/l;->a:Lkotlinx/coroutines/internal/n;

    iput-object p2, p0, Lkotlinx/coroutines/internal/l;->b:Lkotlinx/coroutines/internal/n;

    iput-object p3, p0, Lkotlinx/coroutines/internal/l;->c:Lkotlinx/coroutines/internal/j;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/internal/b;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/l;->c:Lkotlinx/coroutines/internal/j;

    iget-object p0, p0, Lkotlinx/coroutines/internal/a;->a:Lkotlinx/coroutines/internal/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "atomicOp"

    invoke-static {p0}, Li4/f;->O(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    if-eqz p1, :cond_5

    check-cast p1, Lkotlinx/coroutines/internal/n;

    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->c:Lkotlinx/coroutines/internal/j;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/j;->f(Lkotlinx/coroutines/internal/l;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/internal/t;->g:Lkotlinx/coroutines/internal/z;

    iget-object v3, p0, Lkotlinx/coroutines/internal/l;->b:Lkotlinx/coroutines/internal/n;

    if-ne v1, v2, :cond_1

    sget-object v1, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/n;->p()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    sget-object v4, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/j;->g(Lkotlinx/coroutines/internal/n;)V

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/n;->g()Lkotlinx/coroutines/internal/n;

    :cond_0
    return-object v2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->a()Lkotlinx/coroutines/internal/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->a()Lkotlinx/coroutines/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->f()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    sget-object v1, Lkotlinx/coroutines/internal/t;->a:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->a()Lkotlinx/coroutines/internal/b;

    move-result-object v3

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    sget-object v0, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/n;->p()Lkotlinx/coroutines/internal/v;

    move-result-object v3

    :cond_4
    :goto_1
    sget-object v0, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->c:Lkotlinx/coroutines/internal/j;

    check-cast v0, Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/internal/m;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    iget-object v3, p0, Lkotlinx/coroutines/internal/l;->a:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v1, Lkotlinx/coroutines/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p0, p0, Lkotlinx/coroutines/internal/l;->b:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v1, v0, v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrepareOp(op="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->a()Lkotlinx/coroutines/internal/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
