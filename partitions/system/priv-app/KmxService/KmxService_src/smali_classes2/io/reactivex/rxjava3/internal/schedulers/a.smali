.class public final Lio/reactivex/rxjava3/internal/schedulers/a;
.super Ljb/p;
.source "SourceFile"


# instance fields
.field public final a:Lmb/a;

.field public final b:Lio/reactivex/rxjava3/disposables/a;

.field public final c:Lmb/a;

.field public final d:Lio/reactivex/rxjava3/internal/schedulers/c;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/schedulers/c;)V
    .locals 2

    invoke-direct {p0}, Ljb/p;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->d:Lio/reactivex/rxjava3/internal/schedulers/c;

    new-instance p1, Lmb/a;

    invoke-direct {p1}, Lmb/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->a:Lmb/a;

    new-instance v0, Lio/reactivex/rxjava3/disposables/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->b:Lio/reactivex/rxjava3/disposables/a;

    new-instance v1, Lmb/a;

    invoke-direct {v1}, Lmb/a;-><init>()V

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->c:Lmb/a;

    invoke-virtual {v1, p1}, Lmb/a;->c(Lio/reactivex/rxjava3/disposables/b;)Z

    invoke-virtual {v1, v0}, Lmb/a;->c(Lio/reactivex/rxjava3/disposables/b;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/b;
    .locals 6

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->e:Z

    if-eqz v0, :cond_0

    sget-object p0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->d:Lio/reactivex/rxjava3/internal/schedulers/c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->a:Lmb/a;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/schedulers/k;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/disposables/c;)Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;
    .locals 6

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->e:Z

    if-eqz v0, :cond_0

    sget-object p0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->d:Lio/reactivex/rxjava3/internal/schedulers/c;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->b:Lio/reactivex/rxjava3/disposables/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/schedulers/k;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/disposables/c;)Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    move-result-object p0

    return-object p0
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->e:Z

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->c:Lmb/a;

    invoke-virtual {p0}, Lmb/a;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/rxjava3/internal/schedulers/a;->e:Z

    return p0
.end method
