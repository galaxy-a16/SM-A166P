.class public final Ldc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/r;


# instance fields
.field public final a:Lkc/j;

.field public b:Z

.field public final synthetic c:Ldc/h;


# direct methods
.method public constructor <init>(Ldc/h;)V
    .locals 1

    iput-object p1, p0, Ldc/c;->c:Ldc/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkc/j;

    iget-object p1, p1, Ldc/h;->f:Lkc/f;

    invoke-interface {p1}, Lkc/r;->timeout()Lkc/v;

    move-result-object p1

    invoke-direct {v0, p1}, Lkc/j;-><init>(Lkc/v;)V

    iput-object v0, p0, Ldc/c;->a:Lkc/j;

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldc/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ldc/c;->b:Z

    iget-object v0, p0, Ldc/c;->c:Ldc/h;

    iget-object v0, v0, Ldc/h;->f:Lkc/f;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    iget-object v0, p0, Ldc/c;->c:Ldc/h;

    iget-object v1, p0, Ldc/c;->a:Lkc/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lkc/j;->e:Lkc/v;

    sget-object v2, Lkc/v;->d:Lkc/u;

    iput-object v2, v1, Lkc/j;->e:Lkc/v;

    invoke-virtual {v0}, Lkc/v;->a()Lkc/v;

    invoke-virtual {v0}, Lkc/v;->b()Lkc/v;

    iget-object v0, p0, Ldc/c;->c:Ldc/h;

    const/4 v1, 0x3

    iput v1, v0, Ldc/h;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f0(Lkc/e;J)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ldc/c;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ldc/c;->c:Ldc/h;

    iget-object v0, p0, Ldc/h;->f:Lkc/f;

    invoke-interface {v0, p2, p3}, Lkc/f;->j(J)Lkc/f;

    iget-object v0, p0, Ldc/h;->f:Lkc/f;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    iget-object v0, p0, Ldc/h;->f:Lkc/f;

    invoke-interface {v0, p1, p2, p3}, Lkc/r;->f0(Lkc/e;J)V

    iget-object p0, p0, Ldc/h;->f:Lkc/f;

    invoke-interface {p0, v1}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldc/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ldc/c;->c:Ldc/h;

    iget-object v0, v0, Ldc/h;->f:Lkc/f;

    invoke-interface {v0}, Lkc/f;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final timeout()Lkc/v;
    .locals 0

    iget-object p0, p0, Ldc/c;->a:Lkc/j;

    return-object p0
.end method
