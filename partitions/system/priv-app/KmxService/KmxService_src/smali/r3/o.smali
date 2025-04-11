.class public final Lr3/o;
.super Lr3/h;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lz9/a;

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr3/h;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr3/o;->a:Ljava/lang/Object;

    new-instance v0, Lz9/a;

    invoke-direct {v0}, Lz9/a;-><init>()V

    iput-object v0, p0, Lr3/o;->b:Lz9/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lr3/d;)Lr3/o;
    .locals 1

    new-instance v0, Lr3/m;

    invoke-direct {v0, p1, p2}, Lr3/m;-><init>(Ljava/util/concurrent/Executor;Lr3/d;)V

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, v0}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {p0}, Lr3/o;->l()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Lr3/e;)Lr3/o;
    .locals 1

    new-instance v0, Lr3/m;

    invoke-direct {v0, p1, p2}, Lr3/m;-><init>(Ljava/util/concurrent/Executor;Lr3/e;)V

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, v0}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {p0}, Lr3/o;->l()V

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Lr3/f;)Lr3/o;
    .locals 1

    new-instance v0, Lr3/m;

    invoke-direct {v0, p1, p2}, Lr3/m;-><init>(Ljava/util/concurrent/Executor;Lr3/f;)V

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, v0}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {p0}, Lr3/o;->l()V

    return-object p0
.end method

.method public final d()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lr3/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lr3/o;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr3/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr3/o;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v2, v1}, Lva/n;->k(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lr3/o;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lr3/o;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object p0, p0, Lr3/o;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {p0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    iget-object v0, p0, Lr3/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr3/o;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lr3/o;->d:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lr3/o;->f:Ljava/lang/Exception;

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Ljava/util/concurrent/Executor;Lr3/b;)Lr3/o;
    .locals 3

    new-instance v0, Lr3/o;

    invoke-direct {v0}, Lr3/o;-><init>()V

    new-instance v1, Lr3/k;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v0, v2}, Lr3/k;-><init>(Ljava/util/concurrent/Executor;Lr3/b;Lr3/o;I)V

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, v1}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {p0}, Lr3/o;->l()V

    return-object v0
.end method

.method public final h(Ljava/util/concurrent/Executor;Lr3/b;)Lr3/o;
    .locals 3

    new-instance v0, Lr3/o;

    invoke-direct {v0}, Lr3/o;-><init>()V

    new-instance v1, Lr3/k;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v0, v2}, Lr3/k;-><init>(Ljava/util/concurrent/Executor;Lr3/b;Lr3/o;I)V

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, v1}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {p0}, Lr3/o;->l()V

    return-object v0
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    if-eqz p1, :cond_1

    iget-object v1, p0, Lr3/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lr3/o;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr3/o;->c:Z

    iput-object p1, p0, Lr3/o;->f:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, p0}, Lz9/a;->f(Lr3/h;)V

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->of(Lr3/h;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr3/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr3/o;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lr3/o;->c:Z

    iput-object p1, p0, Lr3/o;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, p0}, Lz9/a;->f(Lr3/h;)V

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->of(Lr3/h;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lr3/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr3/o;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lr3/o;->c:Z

    iput-boolean v1, p0, Lr3/o;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {v0, p0}, Lz9/a;->f(Lr3/h;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lr3/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr3/o;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {v0, p0}, Lz9/a;->f(Lr3/h;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
