.class public final Lio/reactivex/rxjava3/internal/schedulers/i;
.super Ljb/q;
.source "SourceFile"


# static fields
.field public static final d:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

.field public static final e:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

.field public static final f:J

.field public static final g:Ljava/util/concurrent/TimeUnit;

.field public static final h:Lio/reactivex/rxjava3/internal/schedulers/h;

.field public static final i:Z

.field public static final j:Lio/reactivex/rxjava3/internal/schedulers/f;


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/i;->g:Ljava/util/concurrent/TimeUnit;

    const-string v0, "rx3.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lio/reactivex/rxjava3/internal/schedulers/i;->f:J

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/h;

    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/h;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/i;->h:Lio/reactivex/rxjava3/internal/schedulers/h;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/k;->dispose()V

    const-string v0, "rx3.io-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v3, "RxCachedThreadScheduler"

    invoke-direct {v2, v3, v0}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/reactivex/rxjava3/internal/schedulers/i;->d:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    new-instance v3, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v4, "RxCachedWorkerPoolEvictor"

    invoke-direct {v3, v4, v0}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/reactivex/rxjava3/internal/schedulers/i;->e:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v0, "rx3.io-scheduled-release"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/reactivex/rxjava3/internal/schedulers/i;->i:Z

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/f;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v2}, Lio/reactivex/rxjava3/internal/schedulers/f;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/i;->j:Lio/reactivex/rxjava3/internal/schedulers/f;

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/schedulers/f;->c:Lio/reactivex/rxjava3/disposables/a;

    invoke-virtual {v2}, Lio/reactivex/rxjava3/disposables/a;->dispose()V

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/schedulers/f;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/schedulers/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljb/q;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/i;->j:Lio/reactivex/rxjava3/internal/schedulers/f;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/i;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p0, Lio/reactivex/rxjava3/internal/schedulers/f;

    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/i;->g:Ljava/util/concurrent/TimeUnit;

    sget-wide v3, Lio/reactivex/rxjava3/internal/schedulers/i;->f:J

    sget-object v5, Lio/reactivex/rxjava3/internal/schedulers/i;->d:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v3, v4, v2, v5}, Lio/reactivex/rxjava3/internal/schedulers/f;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/f;->c:Lio/reactivex/rxjava3/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/a;->dispose()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/f;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public final b()Ljb/p;
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/g;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/i;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/schedulers/f;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/schedulers/g;-><init>(Lio/reactivex/rxjava3/internal/schedulers/f;)V

    return-object v0
.end method
