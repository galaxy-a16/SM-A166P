.class public final Lec/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public final e:Ljava/util/ArrayDeque;

.field public f:Z

.field public final g:Lec/y;

.field public final h:Lec/x;

.field public final i:Lokhttp3/internal/connection/h;

.field public final j:Lokhttp3/internal/connection/h;

.field public k:Lokhttp3/internal/http2/ErrorCode;

.field public l:Ljava/io/IOException;

.field public final m:I

.field public final n:Lec/t;


# direct methods
.method public constructor <init>(ILec/t;ZZLokhttp3/s;)V
    .locals 3

    const-string v0, "connection"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lec/z;->m:I

    iput-object p2, p0, Lec/z;->n:Lec/t;

    iget-object p1, p2, Lec/t;->v:Lec/e0;

    invoke-virtual {p1}, Lec/e0;->a()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lec/z;->d:J

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lec/z;->e:Ljava/util/ArrayDeque;

    new-instance v0, Lec/y;

    iget-object p2, p2, Lec/t;->u:Lec/e0;

    invoke-virtual {p2}, Lec/e0;->a()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {v0, p0, v1, v2, p4}, Lec/y;-><init>(Lec/z;JZ)V

    iput-object v0, p0, Lec/z;->g:Lec/y;

    new-instance p2, Lec/x;

    invoke-direct {p2, p0, p3}, Lec/x;-><init>(Lec/z;Z)V

    iput-object p2, p0, Lec/z;->h:Lec/x;

    new-instance p2, Lokhttp3/internal/connection/h;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lokhttp3/internal/connection/h;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lec/z;->i:Lokhttp3/internal/connection/h;

    new-instance p2, Lokhttp3/internal/connection/h;

    invoke-direct {p2, p0, p3}, Lokhttp3/internal/connection/h;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lec/z;->j:Lokhttp3/internal/connection/h;

    invoke-virtual {p0}, Lec/z;->g()Z

    move-result p0

    if-eqz p5, :cond_1

    xor-int/2addr p0, p3

    if-eqz p0, :cond_0

    invoke-interface {p1, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "locally-initiated streams shouldn\'t have headers yet"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "remotely-initiated streams should have headers"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lac/c;->a:[B

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lec/z;->g:Lec/y;

    iget-boolean v1, v0, Lec/y;->e:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lec/y;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lec/z;->h:Lec/x;

    iget-boolean v1, v0, Lec/x;->c:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lec/x;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lec/z;->h()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_2

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lec/z;->c(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lec/z;->n:Lec/t;

    iget p0, p0, Lec/z;->m:I

    invoke-virtual {v0, p0}, Lec/t;->i(I)Lec/z;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lec/z;->h:Lec/x;

    iget-boolean v1, v0, Lec/x;->b:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lec/x;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lec/z;->l:Ljava/io/IOException;

    if-nez v0, :cond_1

    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object p0, p0, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez p0, :cond_0

    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_0
    invoke-direct {v0, p0}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_1
    throw v0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "rstStatusCode"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lec/z;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lec/z;->n:Lec/t;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lec/t;->B:Lec/a0;

    iget p0, p0, Lec/z;->m:I

    invoke-virtual {p2, p0, p1}, Lec/a0;->x(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public final d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z
    .locals 2

    sget-object v0, Lac/c;->a:[B

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lec/z;->g:Lec/y;

    iget-boolean v0, v0, Lec/y;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lec/z;->h:Lec/x;

    iget-boolean v0, v0, Lec/x;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iput-object p1, p0, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;

    iput-object p2, p0, Lec/z;->l:Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    iget-object p1, p0, Lec/z;->n:Lec/t;

    iget p0, p0, Lec/z;->m:I

    invoke-virtual {p1, p0}, Lec/t;->i(I)Lec/z;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lec/z;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lec/z;->n:Lec/t;

    iget p0, p0, Lec/z;->m:I

    invoke-virtual {v0, p0, p1}, Lec/t;->z(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public final f()Lec/x;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lec/z;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lec/z;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    monitor-exit p0

    iget-object p0, p0, Lec/z;->h:Lec/x;

    return-object p0

    :cond_2
    :try_start_1
    const-string v0, "reply before requesting the sink"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Z
    .locals 3

    iget v0, p0, Lec/z;->m:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lec/z;->n:Lec/t;

    iget-boolean p0, p0, Lec/t;->a:Z

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final declared-synchronized h()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lec/z;->g:Lec/y;

    iget-boolean v2, v0, Lec/y;->e:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lec/y;->c:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lec/z;->h:Lec/x;

    iget-boolean v2, v0, Lec/x;->c:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lec/x;->b:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lec/z;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i(Lokhttp3/s;Z)V
    .locals 2

    const-string v0, "headers"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lac/c;->a:[B

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lec/z;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lec/z;->g:Lec/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lec/z;->f:Z

    iget-object v0, p0, Lec/z;->e:Ljava/util/ArrayDeque;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lec/z;->g:Lec/y;

    iput-boolean v1, p1, Lec/y;->e:Z

    :cond_2
    invoke-virtual {p0}, Lec/z;->h()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_3

    iget-object p1, p0, Lec/z;->n:Lec/t;

    iget p0, p0, Lec/z;->m:I

    invoke-virtual {p1, p0}, Lec/t;->i(I)Lec/z;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method
