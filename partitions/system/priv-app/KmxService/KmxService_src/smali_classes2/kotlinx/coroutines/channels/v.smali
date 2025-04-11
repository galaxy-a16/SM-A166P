.class public final Lkotlinx/coroutines/channels/v;
.super Lkotlinx/coroutines/channels/j;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lvb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/j;-><init>(Lvb/b;)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/v;->d:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p1, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/internal/z;

    iput-object p1, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/channels/v;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/internal/z;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->m()Lkotlinx/coroutines/channels/u;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :cond_1
    :try_start_1
    iput-object v2, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final B(Lkotlinx/coroutines/selects/g;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/channels/v;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/internal/z;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->m()Lkotlinx/coroutines/channels/u;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_1
    :try_start_1
    check-cast p1, Lkotlinx/coroutines/selects/c;

    invoke-virtual {p1}, Lkotlinx/coroutines/selects/c;->x()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p0, Lkotlinx/coroutines/selects/h;->b:Lkotlinx/coroutines/internal/z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_2
    :try_start_2
    iget-object p1, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;

    iput-object v2, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    const-string v0, "(value="

    iget-object v1, p0, Lkotlinx/coroutines/channels/v;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final p()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/channels/v;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->m()Lkotlinx/coroutines/channels/u;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/internal/z;

    if-ne v1, v2, :cond_4

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/j;->r()Lkotlinx/coroutines/channels/b0;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    instance-of v3, v1, Lkotlinx/coroutines/channels/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_3
    :try_start_3
    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/b0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/z;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/b0;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/channels/b0;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    :try_start_4
    iget-object v1, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    if-eqz v2, :cond_6

    invoke-static {v2, v1, v3}, Lkotlinx/coroutines/internal/t;->b(Lvb/b;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v3

    :cond_6
    :goto_1
    iput-object p1, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;

    if-nez v3, :cond_7

    sget-object p0, Lkotlinx/coroutines/channels/t;->b:Lkotlinx/coroutines/internal/z;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_7
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final u(Lkotlinx/coroutines/channels/z;)Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/v;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/j;->u(Lkotlinx/coroutines/channels/z;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final v()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/v;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/internal/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final y(Z)V
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/channels/v;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v1, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/internal/z;

    iget-object v2, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    if-eqz v4, :cond_1

    invoke-static {v4, v2, v3}, Lkotlinx/coroutines/internal/t;->b(Lvb/b;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v3

    :cond_1
    :goto_0
    iput-object v1, p0, Lkotlinx/coroutines/channels/v;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/j;->y(Z)V

    if-nez v3, :cond_2

    return-void

    :cond_2
    throw v3

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
