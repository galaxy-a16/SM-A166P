.class public final Lkotlinx/coroutines/debug/internal/e;
.super Lkotlin/collections/h;
.source "SourceFile"


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _size:I

.field public final a:Ljava/lang/ref/ReferenceQueue;

.field volatile synthetic core:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/debug/internal/e;

    const-string v1, "_size"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/e;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lkotlin/collections/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/debug/internal/e;->_size:I

    new-instance v0, Lkotlinx/coroutines/debug/internal/b;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/debug/internal/b;-><init>(Lkotlinx/coroutines/debug/internal/e;I)V

    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/e;->core:Ljava/lang/Object;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/e;->a:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/debug/internal/d;

    sget-object v1, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$entries$1;->INSTANCE:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$entries$1;

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/debug/internal/d;-><init>(Lkotlinx/coroutines/debug/internal/e;Lvb/c;)V

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/debug/internal/d;

    sget-object v1, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$keys$1;->INSTANCE:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$keys$1;

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/debug/internal/d;-><init>(Lkotlinx/coroutines/debug/internal/e;Lvb/c;)V

    return-object v0
.end method

.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/e;->c()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/d;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/debug/internal/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/debug/internal/e;->_size:I

    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/e;->core:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/debug/internal/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x61c88647

    mul-int/2addr v1, v2

    iget v2, p0, Lkotlinx/coroutines/debug/internal/b;->b:I

    ushr-int/2addr v1, v2

    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/debug/internal/b;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/debug/internal/k;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lkotlinx/coroutines/debug/internal/l;

    if-eqz p1, :cond_2

    check-cast p0, Lkotlinx/coroutines/debug/internal/l;

    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/l;->a:Ljava/lang/Object;

    :cond_2
    move-object v0, p0

    :goto_1
    return-object v0

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/debug/internal/b;->c(I)V

    :cond_4
    if-nez v1, :cond_5

    iget v1, p0, Lkotlinx/coroutines/debug/internal/b;->a:I

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/e;->core:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/debug/internal/b;

    sget-object v1, Lkotlinx/coroutines/debug/internal/b;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lkotlinx/coroutines/debug/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/k;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lkotlinx/coroutines/debug/internal/f;->a:Lkotlinx/coroutines/internal/z;

    if-ne v0, v2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/e;->core:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/debug/internal/b;

    :goto_0
    sget-object v2, Lkotlinx/coroutines/debug/internal/b;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1, p2, v1}, Lkotlinx/coroutines/debug/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/k;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/debug/internal/f;->a:Lkotlinx/coroutines/internal/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_0

    monitor-exit p0

    move-object v0, v2

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/b;->b()Lkotlinx/coroutines/debug/internal/b;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/e;->core:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    sget-object p1, Lkotlinx/coroutines/debug/internal/e;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    :cond_2
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/e;->core:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/debug/internal/b;

    sget-object v2, Lkotlinx/coroutines/debug/internal/b;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p1, v0, v0}, Lkotlinx/coroutines/debug/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/k;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/debug/internal/f;->a:Lkotlinx/coroutines/internal/z;

    if-ne v1, v2, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/e;->core:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/debug/internal/b;

    :goto_0
    sget-object v2, Lkotlinx/coroutines/debug/internal/b;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p1, v0, v0}, Lkotlinx/coroutines/debug/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/k;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/debug/internal/f;->a:Lkotlinx/coroutines/internal/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_1

    monitor-exit p0

    move-object v1, v2

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lkotlinx/coroutines/debug/internal/b;->b()Lkotlinx/coroutines/debug/internal/b;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/debug/internal/e;->core:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    sget-object p1, Lkotlinx/coroutines/debug/internal/e;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_3
    return-object v1
.end method
