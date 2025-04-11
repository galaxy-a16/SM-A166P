.class public final Lokhttp3/internal/connection/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Lokhttp3/internal/connection/k;

.field public final c:Lokhttp3/internal/connection/i;

.field public final d:Le9/a;

.field public final e:Lokhttp3/internal/connection/e;

.field public final f:Lcc/d;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/i;Le9/a;Lokhttp3/internal/connection/e;Lcc/d;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/i;

    iput-object p2, p0, Lokhttp3/internal/connection/d;->d:Le9/a;

    iput-object p3, p0, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/e;

    iput-object p4, p0, Lokhttp3/internal/connection/d;->f:Lcc/d;

    invoke-interface {p4}, Lcc/d;->h()Lokhttp3/internal/connection/k;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/k;

    return-void
.end method


# virtual methods
.method public final a(ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lokhttp3/internal/connection/d;->d(Ljava/io/IOException;)V

    :cond_0
    const-string v0, "call"

    iget-object v1, p0, Lokhttp3/internal/connection/d;->d:Le9/a;

    iget-object v2, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/i;

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_1

    invoke-static {v2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {v2, p0, p2, p1, p3}, Lokhttp3/internal/connection/i;->g(Lokhttp3/internal/connection/d;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lokhttp3/e0;Z)Lokhttp3/internal/connection/b;
    .locals 3

    iput-boolean p2, p0, Lokhttp3/internal/connection/d;->a:Z

    iget-object p2, p1, Lokhttp3/e0;->e:Lokhttp3/i0;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lokhttp3/i0;->contentLength()J

    move-result-wide v0

    iget-object p2, p0, Lokhttp3/internal/connection/d;->d:Le9/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "call"

    iget-object v2, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/i;

    invoke-static {v2, p2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lokhttp3/internal/connection/d;->f:Lcc/d;

    invoke-interface {p2, p1, v0, v1}, Lcc/d;->f(Lokhttp3/e0;J)Lkc/r;

    move-result-object p1

    new-instance p2, Lokhttp3/internal/connection/b;

    invoke-direct {p2, p0, p1, v0, v1}, Lokhttp3/internal/connection/b;-><init>(Lokhttp3/internal/connection/d;Lkc/r;J)V

    return-object p2

    :cond_0
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Z)Lokhttp3/j0;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lcc/d;

    invoke-interface {v0, p1}, Lcc/d;->g(Z)Lokhttp3/j0;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p0, p1, Lokhttp3/j0;->m:Lokhttp3/internal/connection/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lokhttp3/internal/connection/d;->d:Le9/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "call"

    iget-object v1, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/i;

    invoke-static {v1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/d;->d(Ljava/io/IOException;)V

    throw p1
.end method

.method public final d(Ljava/io/IOException;)V
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/e;->c(Ljava/io/IOException;)V

    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lcc/d;

    invoke-interface {v0}, Lcc/d;->h()Lokhttp3/internal/connection/k;

    move-result-object v0

    iget-object p0, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/i;

    monitor-enter v0

    :try_start_0
    const-string v1, "call"

    invoke-static {p0, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lokhttp3/internal/http2/StreamResetException;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, v1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v1, v3, :cond_1

    iget p0, v0, Lokhttp3/internal/connection/k;->m:I

    add-int/2addr p0, v2

    iput p0, v0, Lokhttp3/internal/connection/k;->m:I

    if-le p0, v2, :cond_5

    :cond_0
    iput-boolean v2, v0, Lokhttp3/internal/connection/k;->i:Z

    goto :goto_1

    :cond_1
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    iget-object p1, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    if-ne p1, v1, :cond_0

    iget-boolean p0, p0, Lokhttp3/internal/connection/i;->m:Z

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lokhttp3/internal/connection/k;->f:Lec/t;

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    instance-of v1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_5

    :cond_4
    iput-boolean v2, v0, Lokhttp3/internal/connection/k;->i:Z

    iget v1, v0, Lokhttp3/internal/connection/k;->l:I

    if-nez v1, :cond_5

    iget-object p0, p0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object v1, v0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    invoke-static {p0, v1, p1}, Lokhttp3/internal/connection/k;->d(Lokhttp3/b0;Lokhttp3/p0;Ljava/io/IOException;)V

    :goto_1
    iget p0, v0, Lokhttp3/internal/connection/k;->k:I

    add-int/2addr p0, v2

    iput p0, v0, Lokhttp3/internal/connection/k;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
