.class public final Lokhttp3/internal/connection/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/e;


# instance fields
.field public final a:Lokhttp3/internal/connection/m;

.field public final b:Le9/a;

.field public final c:Lokhttp3/internal/connection/h;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Ljava/lang/Throwable;

.field public f:Lokhttp3/internal/connection/e;

.field public g:Lokhttp3/internal/connection/k;

.field public h:Z

.field public i:Lokhttp3/internal/connection/d;

.field public j:Z

.field public k:Z

.field public l:Z

.field public volatile m:Z

.field public volatile n:Lokhttp3/internal/connection/d;

.field public volatile p:Lokhttp3/internal/connection/k;

.field public final q:Lokhttp3/b0;

.field public final t:Lokhttp3/e0;

.field public final u:Z


# direct methods
.method public constructor <init>(Lokhttp3/b0;Lokhttp3/e0;Z)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iput-object p2, p0, Lokhttp3/internal/connection/i;->t:Lokhttp3/e0;

    iput-boolean p3, p0, Lokhttp3/internal/connection/i;->u:Z

    iget-object p2, p1, Lokhttp3/b0;->b:Lxa/d;

    iget-object p2, p2, Lxa/d;->a:Ljava/lang/Object;

    check-cast p2, Lokhttp3/internal/connection/m;

    iput-object p2, p0, Lokhttp3/internal/connection/i;->a:Lokhttp3/internal/connection/m;

    iget-object p1, p1, Lokhttp3/b0;->e:Lac/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lac/a;->a:Le9/a;

    iput-object p1, p0, Lokhttp3/internal/connection/i;->b:Le9/a;

    new-instance p1, Lokhttp3/internal/connection/h;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lokhttp3/internal/connection/h;-><init>(Ljava/lang/Object;I)V

    int-to-long p2, p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lkc/v;->g(JLjava/util/concurrent/TimeUnit;)Lkc/v;

    iput-object p1, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/internal/connection/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lokhttp3/internal/connection/i;->l:Z

    return-void
.end method

.method public static final a(Lokhttp3/internal/connection/i;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lokhttp3/internal/connection/i;->m:Z

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/internal/connection/i;->u:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/internal/connection/i;->t:Lokhttp3/e0;

    iget-object p0, p0, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {p0}, Lokhttp3/u;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lokhttp3/internal/connection/k;)V
    .locals 2

    sget-object v0, Lac/c;->a:[B

    iget-object v0, p0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    iget-object p1, p1, Lokhttp3/internal/connection/k;->o:Ljava/util/ArrayList;

    new-instance v0, Lokhttp3/internal/connection/g;

    iget-object v1, p0, Lokhttp3/internal/connection/i;->e:Ljava/lang/Throwable;

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/connection/g;-><init>(Lokhttp3/internal/connection/i;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    sget-object v0, Lac/c;->a:[B

    iget-object v0, p0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    if-eqz v0, :cond_4

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/connection/i;->i()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lac/c;->c(Ljava/net/Socket;)V

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/i;->b:Le9/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "Check failed."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->h:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lokhttp3/internal/connection/i;->c:Lokhttp3/internal/connection/h;

    invoke-virtual {v0}, Lkc/d;->i()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    move-object v0, p1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_7
    :goto_3
    iget-object p0, p0, Lokhttp3/internal/connection/i;->b:Le9/a;

    if-eqz p1, :cond_9

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_9
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/i;->m:Z

    iget-object v0, p0, Lokhttp3/internal/connection/i;->n:Lokhttp3/internal/connection/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lokhttp3/internal/connection/d;->f:Lcc/d;

    invoke-interface {v0}, Lcc/d;->cancel()V

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/i;->p:Lokhttp3/internal/connection/k;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lac/c;->c(Ljava/net/Socket;)V

    :cond_2
    iget-object p0, p0, Lokhttp3/internal/connection/i;->b:Le9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lokhttp3/internal/connection/i;

    iget-boolean v1, p0, Lokhttp3/internal/connection/i;->u:Z

    iget-object v2, p0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object p0, p0, Lokhttp3/internal/connection/i;->t:Lokhttp3/e0;

    invoke-direct {v0, v2, p0, v1}, Lokhttp3/internal/connection/i;-><init>(Lokhttp3/b0;Lokhttp3/e0;Z)V

    return-object v0
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lfc/m;->a:Lfc/m;

    sget-object v0, Lfc/m;->a:Lfc/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lfc/m;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response.body().close()"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/connection/i;->e:Ljava/lang/Throwable;

    iget-object p0, p0, Lokhttp3/internal/connection/i;->b:Le9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final e(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lokhttp3/internal/connection/i;->n:Lokhttp3/internal/connection/d;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lokhttp3/internal/connection/d;->f:Lcc/d;

    invoke-interface {v1}, Lcc/d;->cancel()V

    const/4 v1, 0x1

    iget-object v2, p1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/i;

    invoke-virtual {v2, p1, v1, v1, v0}, Lokhttp3/internal/connection/i;->g(Lokhttp3/internal/connection/d;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_0
    iput-object v0, p0, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/d;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Lokhttp3/k0;
    .locals 10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object v0, v0, Lokhttp3/b0;->c:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/collections/q;->Q0(Ljava/util/Collection;Ljava/util/AbstractCollection;)V

    new-instance v0, Lcc/g;

    iget-object v1, p0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    invoke-direct {v0, v1}, Lcc/g;-><init>(Lokhttp3/b0;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcc/a;

    iget-object v1, p0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object v1, v1, Lokhttp3/b0;->j:Lokhttp3/l;

    invoke-direct {v0, v1}, Lcc/a;-><init>(Lokhttp3/l;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/cache/a;

    iget-object v1, p0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Lokhttp3/internal/cache/a;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lokhttp3/internal/connection/a;->a:Lokhttp3/internal/connection/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object v0, v0, Lokhttp3/b0;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/collections/q;->Q0(Ljava/util/Collection;Ljava/util/AbstractCollection;)V

    :cond_0
    new-instance v0, Lcc/b;

    iget-boolean v1, p0, Lokhttp3/internal/connection/i;->u:Z

    invoke-direct {v0, v1}, Lcc/b;-><init>(Z)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcc/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/connection/i;->t:Lokhttp3/e0;

    iget-object v0, p0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget v6, v0, Lokhttp3/b0;->y:I

    iget v7, v0, Lokhttp3/b0;->z:I

    iget v8, v0, Lokhttp3/b0;->A:I

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcc/f;-><init>(Lokhttp3/internal/connection/i;Ljava/util/List;ILokhttp3/internal/connection/d;Lokhttp3/e0;III)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/i;->t:Lokhttp3/e0;

    invoke-virtual {v9, v1}, Lcc/f;->b(Lokhttp3/e0;)Lokhttp3/k0;

    move-result-object v1

    iget-boolean v2, p0, Lokhttp3/internal/connection/i;->m:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/i;->h(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v1

    :cond_1
    :try_start_1
    invoke-static {v1}, Lac/c;->b(Ljava/io/Closeable;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {p0, v1}, Lokhttp3/internal/connection/i;->h(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/i;->h(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_3
    throw v1
.end method

.method public final g(Lokhttp3/internal/connection/d;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    const-string v0, "exchange"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/connection/i;->n:Lokhttp3/internal/connection/d;

    invoke-static {p1, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object p4

    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/i;->j:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, Lokhttp3/internal/connection/i;->k:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean p1, p0, Lokhttp3/internal/connection/i;->j:Z

    :cond_3
    if-eqz p3, :cond_4

    iput-boolean p1, p0, Lokhttp3/internal/connection/i;->k:Z

    :cond_4
    iget-boolean p2, p0, Lokhttp3/internal/connection/i;->j:Z

    if-nez p2, :cond_5

    iget-boolean p3, p0, Lokhttp3/internal/connection/i;->k:Z

    if-nez p3, :cond_5

    move p3, v0

    goto :goto_1

    :cond_5
    move p3, p1

    :goto_1
    if-nez p2, :cond_6

    iget-boolean p2, p0, Lokhttp3/internal/connection/i;->k:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lokhttp3/internal/connection/i;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    move p1, v0

    :cond_6
    move p2, p1

    move p1, p3

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    move p2, p1

    :goto_3
    monitor-exit p0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lokhttp3/internal/connection/i;->n:Lokhttp3/internal/connection/d;

    iget-object p1, p0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    if-eqz p1, :cond_8

    monitor-enter p1

    :try_start_1
    iget p3, p1, Lokhttp3/internal/connection/k;->l:I

    add-int/2addr p3, v0

    iput p3, p1, Lokhttp3/internal/connection/k;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {p0, p4}, Lokhttp3/internal/connection/i;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p4
.end method

.method public final h(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lokhttp3/internal/connection/i;->l:Z

    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/connection/i;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/i;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i()Ljava/net/Socket;
    .locals 8

    iget-object v0, p0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    sget-object v2, Lac/c;->a:[B

    iget-object v2, v0, Lokhttp3/internal/connection/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/internal/connection/i;

    invoke-static {v6, p0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_1
    const/4 v3, 0x1

    if-eq v5, v7, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    if-eqz v6, :cond_8

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v1, p0, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iput-wide v5, v0, Lokhttp3/internal/connection/k;->p:J

    iget-object p0, p0, Lokhttp3/internal/connection/i;->a:Lokhttp3/internal/connection/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lac/c;->a:[B

    iget-boolean v2, v0, Lokhttp3/internal/connection/k;->i:Z

    iget-object v5, p0, Lokhttp3/internal/connection/m;->b:Lbc/c;

    if-nez v2, :cond_4

    iget v2, p0, Lokhttp3/internal/connection/m;->e:I

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v2, 0x0

    iget-object p0, p0, Lokhttp3/internal/connection/m;->c:Lokhttp3/internal/connection/l;

    invoke-virtual {v5, p0, v2, v3}, Lbc/c;->c(Lbc/a;J)V

    goto :goto_4

    :cond_4
    :goto_3
    iput-boolean v3, v0, Lokhttp3/internal/connection/k;->i:Z

    iget-object p0, p0, Lokhttp3/internal/connection/m;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v5}, Lbc/c;->a()V

    :cond_5
    move v4, v3

    :goto_4
    if-eqz v4, :cond_7

    iget-object p0, v0, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    if-eqz p0, :cond_6

    return-object p0

    :cond_6
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_7
    return-object v1

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method
