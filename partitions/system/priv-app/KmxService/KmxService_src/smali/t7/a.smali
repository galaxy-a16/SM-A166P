.class public final Lt7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/d;
.implements Lvc/d;


# static fields
.field public static final f:Ljava/lang/Object;


# instance fields
.field public final a:Lvc/c;

.field public b:Lvc/d;

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lt7/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lvc/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lt7/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lt7/a;->a:Lvc/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lt7/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt7/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-object p1, p0, Lt7/a;->d:Ljava/lang/Object;

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lt7/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lh3/a;->G(Ljava/util/concurrent/atomic/AtomicLong;J)V

    iget-object p0, p0, Lt7/a;->a:Lvc/c;

    invoke-interface {p0, p1}, Lvc/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lt7/b;

    invoke-direct {v0, p1}, Lt7/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lt7/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lt7/a;->b:Lvc/d;

    invoke-interface {p0}, Lvc/d;->cancel()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt7/a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lt7/a;->f:Ljava/lang/Object;

    iput-object v0, p0, Lt7/a;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt7/a;->a:Lvc/c;

    invoke-interface {v0}, Lvc/c;->onComplete()V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt7/a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lt7/a;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt7/a;->a:Lvc/c;

    invoke-interface {v0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt7/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lvc/d;)V
    .locals 0

    iput-object p1, p0, Lt7/a;->b:Lvc/d;

    iget-object p1, p0, Lt7/a;->a:Lvc/c;

    invoke-interface {p1, p0}, Lvc/c;->onSubscribe(Lvc/d;)V

    return-void
.end method

.method public final request(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4

    iget-object v2, p0, Lt7/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2, p1, p2}, Lh3/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lt7/a;->d:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lt7/a;->d:Ljava/lang/Object;

    iget-object v4, p0, Lt7/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x1

    invoke-static {v4, v5, v6}, Lh3/a;->G(Ljava/util/concurrent/atomic/AtomicLong;J)V

    iget-object v4, p0, Lt7/a;->a:Lvc/c;

    invoke-interface {v4, v2}, Lvc/c;->onNext(Ljava/lang/Object;)V

    sub-long/2addr p1, v5

    iget-object v2, p0, Lt7/a;->e:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iput-object v3, p0, Lt7/a;->e:Ljava/lang/Object;

    instance-of p1, v2, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lt7/a;->a:Lvc/c;

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {p1, v2}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lt7/a;->a:Lvc/c;

    invoke-interface {p1}, Lvc/c;->onComplete()V

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lt7/a;->b:Lvc/d;

    invoke-interface {v0, p1, p2}, Lvc/d;->request(J)V

    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    iget-object p0, p0, Lt7/a;->b:Lvc/d;

    invoke-interface {p0, p1, p2}, Lvc/d;->request(J)V

    :cond_4
    :goto_1
    return-void
.end method
