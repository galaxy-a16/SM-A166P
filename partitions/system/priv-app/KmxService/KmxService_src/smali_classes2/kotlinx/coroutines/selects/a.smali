.class public final Lkotlinx/coroutines/selects/a;
.super Lkotlinx/coroutines/internal/b;
.source "SourceFile"


# instance fields
.field public final b:Lkotlinx/coroutines/selects/c;

.field public final c:Lkotlinx/coroutines/internal/a;

.field public final d:J


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/c;Lkotlinx/coroutines/internal/a;)V
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/a;->b:Lkotlinx/coroutines/selects/c;

    iput-object p2, p0, Lkotlinx/coroutines/selects/a;->c:Lkotlinx/coroutines/internal/a;

    sget-object p1, Lkotlinx/coroutines/selects/h;->e:Lkotlinx/coroutines/selects/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/selects/i;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/selects/a;->d:J

    iput-object p0, p2, Lkotlinx/coroutines/internal/a;->a:Lkotlinx/coroutines/internal/b;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlinx/coroutines/selects/h;->a:Lkotlinx/coroutines/internal/z;

    :goto_1
    sget-object v1, Lkotlinx/coroutines/selects/c;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lkotlinx/coroutines/selects/a;->b:Lkotlinx/coroutines/selects/c;

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/selects/c;->s()V

    :cond_2
    iget-object p1, p0, Lkotlinx/coroutines/selects/a;->c:Lkotlinx/coroutines/internal/a;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/internal/a;->a(Lkotlinx/coroutines/internal/b;Ljava/lang/Object;)V

    return-void
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/selects/a;->d:J

    return-wide v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_4

    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->b:Lkotlinx/coroutines/selects/c;

    :cond_0
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/selects/c;->_state:Ljava/lang/Object;

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/internal/u;

    if-eqz v2, :cond_2

    check-cast v1, Lkotlinx/coroutines/internal/u;

    iget-object v2, p0, Lkotlinx/coroutines/selects/a;->b:Lkotlinx/coroutines/selects/c;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v2, Lkotlinx/coroutines/selects/h;->a:Lkotlinx/coroutines/internal/z;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lkotlinx/coroutines/selects/a;->b:Lkotlinx/coroutines/selects/c;

    sget-object v3, Lkotlinx/coroutines/selects/c;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v1, v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    sget-object v0, Lkotlinx/coroutines/selects/h;->b:Lkotlinx/coroutines/internal/z;

    :goto_2
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/a;->c:Lkotlinx/coroutines/internal/a;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/a;->b(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    if-nez p1, :cond_5

    sget-object p1, Lkotlinx/coroutines/selects/c;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lkotlinx/coroutines/selects/h;->a:Lkotlinx/coroutines/internal/z;

    iget-object v2, p0, Lkotlinx/coroutines/selects/a;->b:Lkotlinx/coroutines/selects/c;

    invoke-virtual {p1, v2, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AtomicSelectOp(sequence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lkotlinx/coroutines/selects/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
