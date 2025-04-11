.class public final Lokhttp3/internal/connection/l;
.super Lbc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lokhttp3/internal/connection/m;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/connection/l;->e:Lokhttp3/internal/connection/m;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lbc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 13

    iget-object p0, p0, Lokhttp3/internal/connection/l;->e:Lokhttp3/internal/connection/m;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lokhttp3/internal/connection/m;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/high16 v5, -0x8000000000000000L

    move-object v8, v3

    move-wide v6, v5

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokhttp3/internal/connection/k;

    const-string v10, "connection"

    invoke-static {v9, v10}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v9

    :try_start_0
    invoke-virtual {p0, v9, v0, v1}, Lokhttp3/internal/connection/m;->b(Lokhttp3/internal/connection/k;J)I

    move-result v10

    if-lez v10, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    iget-wide v10, v9, Lokhttp3/internal/connection/k;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v10, v0, v10

    cmp-long v12, v10, v6

    if-lez v12, :cond_1

    move-object v8, v9

    move-wide v6, v10

    :cond_1
    :goto_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v9

    throw p0

    :cond_2
    iget-wide v9, p0, Lokhttp3/internal/connection/m;->a:J

    cmp-long v2, v6, v9

    if-gez v2, :cond_6

    iget v2, p0, Lokhttp3/internal/connection/m;->e:I

    if-le v4, v2, :cond_3

    goto :goto_2

    :cond_3
    if-lez v4, :cond_4

    sub-long/2addr v9, v6

    goto :goto_5

    :cond_4
    if-lez v5, :cond_5

    goto :goto_5

    :cond_5
    const-wide/16 v9, -0x1

    goto :goto_5

    :cond_6
    :goto_2
    if-eqz v8, :cond_b

    monitor-enter v8

    :try_start_1
    iget-object v2, v8, Lokhttp3/internal/connection/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    iget-wide v9, v8, Lokhttp3/internal/connection/k;->p:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-long/2addr v9, v6

    cmp-long v0, v9, v0

    if-eqz v0, :cond_8

    :goto_3
    monitor-exit v8

    goto :goto_4

    :cond_8
    :try_start_2
    iput-boolean v4, v8, Lokhttp3/internal/connection/k;->i:Z

    iget-object v0, p0, Lokhttp3/internal/connection/m;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    iget-object v0, v8, Lokhttp3/internal/connection/k;->c:Ljava/net/Socket;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lac/c;->c(Ljava/net/Socket;)V

    iget-object v0, p0, Lokhttp3/internal/connection/m;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lokhttp3/internal/connection/m;->b:Lbc/c;

    invoke-virtual {p0}, Lbc/c;->a()V

    :cond_9
    :goto_4
    const-wide/16 v9, 0x0

    :goto_5
    return-wide v9

    :cond_a
    invoke-static {}, Li4/f;->M()V

    throw v3

    :catchall_1
    move-exception p0

    monitor-exit v8

    throw p0

    :cond_b
    invoke-static {}, Li4/f;->M()V

    throw v3
.end method
