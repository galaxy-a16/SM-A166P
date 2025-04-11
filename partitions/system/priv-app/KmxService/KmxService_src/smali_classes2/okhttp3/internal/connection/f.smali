.class public final Lokhttp3/internal/connection/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public volatile a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Lokhttp3/f;

.field public final synthetic c:Lokhttp3/internal/connection/i;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/i;Lokhttp3/f;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/connection/f;->b:Lokhttp3/f;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lokhttp3/internal/connection/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "canceled due to "

    const-string v1, "Callback failure for "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OkHttp "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    iget-object v3, v3, Lokhttp3/internal/connection/i;->t:Lokhttp3/e0;

    iget-object v3, v3, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {v3}, Lokhttp3/u;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "currentThread"

    invoke-static {v3, v4}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    iget-object v2, v2, Lokhttp3/internal/connection/i;->c:Lokhttp3/internal/connection/h;

    invoke-virtual {v2}, Lkc/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x0

    :try_start_1
    iget-object v5, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    invoke-virtual {v5}, Lokhttp3/internal/connection/i;->f()Lokhttp3/k0;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x1

    :try_start_2
    iget-object v6, p0, Lokhttp3/internal/connection/f;->b:Lokhttp3/f;

    iget-object v7, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    invoke-interface {v6, v7, v2}, Lokhttp3/f;->onResponse(Lokhttp3/e;Lokhttp3/k0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    iget-object v0, v0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    :goto_0
    iget-object v0, v0, Lokhttp3/b0;->a:La5/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_0
    move-exception v1

    move v2, v5

    goto :goto_1

    :catch_0
    move-exception v0

    move v2, v5

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_1
    :try_start_4
    iget-object v5, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    invoke-virtual {v5}, Lokhttp3/internal/connection/i;->cancel()V

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lokhttp3/internal/connection/f;->b:Lokhttp3/f;

    iget-object v5, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    invoke-interface {v0, v5, v2}, Lokhttp3/f;->onFailure(Lokhttp3/e;Ljava/io/IOException;)V

    :cond_0
    throw v1

    :catch_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    sget-object v2, Lfc/m;->a:Lfc/m;

    sget-object v2, Lfc/m;->a:Lfc/m;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    invoke-static {v1}, Lokhttp3/internal/connection/i;->a(Lokhttp3/internal/connection/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-static {v2, v1, v0}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/f;->b:Lokhttp3/f;

    iget-object v2, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    invoke-interface {v1, v2, v0}, Lokhttp3/f;->onFailure(Lokhttp3/e;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    iget-object v0, v0, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    goto :goto_0

    :goto_4
    invoke-virtual {v0, p0}, La5/b;->e(Lokhttp3/internal/connection/f;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_5
    :try_start_6
    iget-object v1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/internal/connection/i;

    iget-object v1, v1, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    iget-object v1, v1, Lokhttp3/b0;->a:La5/b;

    invoke-virtual {v1, p0}, La5/b;->e(Lokhttp3/internal/connection/f;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw p0
.end method
