.class public final Lokhttp3/internal/connection/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lbc/c;

.field public final c:Lokhttp3/internal/connection/l;

.field public final d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final e:I


# direct methods
.method public constructor <init>(Lbc/f;Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/connection/m;->e:I

    const-wide/16 v0, 0x5

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/connection/m;->a:J

    invoke-virtual {p1}, Lbc/f;->f()Lbc/c;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/m;->b:Lbc/c;

    new-instance p1, Lokhttp3/internal/connection/l;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lac/c;->g:Ljava/lang/String;

    const-string v1, " ConnectionPool"

    invoke-static {p2, v0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lokhttp3/internal/connection/l;-><init>(Lokhttp3/internal/connection/m;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/connection/m;->c:Lokhttp3/internal/connection/l;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/m;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/a;Lokhttp3/internal/connection/i;Ljava/util/List;Z)Z
    .locals 4

    const-string v0, "address"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/internal/connection/m;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/k;

    const-string v2, "connection"

    invoke-static {v0, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    :try_start_0
    iget-object v3, v0, Lokhttp3/internal/connection/k;->f:Lec/t;

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p3}, Lokhttp3/internal/connection/k;->h(Lokhttp3/a;Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :goto_1
    monitor-exit v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p2, v0}, Lokhttp3/internal/connection/i;->b(Lokhttp3/internal/connection/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    return v1
.end method

.method public final b(Lokhttp3/internal/connection/k;J)I
    .locals 6

    sget-object v0, Lac/c;->a:[B

    iget-object v0, p1, Lokhttp3/internal/connection/k;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v3, Lokhttp3/internal/connection/g;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "A connection to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v5, v5, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v5, v5, Lokhttp3/a;->a:Lokhttp3/u;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lfc/m;->a:Lfc/m;

    sget-object v5, Lfc/m;->a:Lfc/m;

    iget-object v3, v3, Lokhttp3/internal/connection/g;->a:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "message"

    invoke-static {v4, v5}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_2

    const-string v5, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const/4 v5, 0x5

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v5, v4, v3}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p1, Lokhttp3/internal/connection/k;->i:Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v2, p0, Lokhttp3/internal/connection/m;->a:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lokhttp3/internal/connection/k;->p:J

    return v1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
