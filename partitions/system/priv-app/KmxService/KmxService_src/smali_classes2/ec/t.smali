.class public final Lec/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final F:Lec/e0;


# instance fields
.field public final A:Ljava/net/Socket;

.field public final B:Lec/a0;

.field public final C:Lec/o;

.field public final E:Ljava/util/LinkedHashSet;

.field public final a:Z

.field public final b:Lec/j;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Lbc/f;

.field public final i:Lbc/c;

.field public final j:Lbc/c;

.field public final k:Lbc/c;

.field public final l:Ll4/e;

.field public m:J

.field public n:J

.field public p:J

.field public q:J

.field public t:J

.field public final u:Lec/e0;

.field public v:Lec/e0;

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lec/e0;

    invoke-direct {v0}, Lec/e0;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Lec/e0;->b(II)V

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lec/e0;->b(II)V

    sput-object v0, Lec/t;->F:Lec/e0;

    return-void
.end method

.method public constructor <init>(Lec/h;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lec/h;->h:Z

    iput-boolean v0, p0, Lec/t;->a:Z

    iget-object v1, p1, Lec/h;->e:Lec/j;

    iput-object v1, p0, Lec/t;->b:Lec/j;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lec/t;->c:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lec/h;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iput-object v1, p0, Lec/t;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    iput v3, p0, Lec/t;->f:I

    iget-object v3, p1, Lec/h;->i:Lbc/f;

    iput-object v3, p0, Lec/t;->h:Lbc/f;

    invoke-virtual {v3}, Lbc/f;->f()Lbc/c;

    move-result-object v4

    iput-object v4, p0, Lec/t;->i:Lbc/c;

    invoke-virtual {v3}, Lbc/f;->f()Lbc/c;

    move-result-object v5

    iput-object v5, p0, Lec/t;->j:Lbc/c;

    invoke-virtual {v3}, Lbc/f;->f()Lbc/c;

    move-result-object v3

    iput-object v3, p0, Lec/t;->k:Lbc/c;

    iget-object v3, p1, Lec/h;->f:Ll4/e;

    iput-object v3, p0, Lec/t;->l:Ll4/e;

    new-instance v3, Lec/e0;

    invoke-direct {v3}, Lec/e0;-><init>()V

    if-eqz v0, :cond_1

    const/4 v5, 0x7

    const/high16 v6, 0x1000000

    invoke-virtual {v3, v5, v6}, Lec/e0;->b(II)V

    :cond_1
    iput-object v3, p0, Lec/t;->u:Lec/e0;

    sget-object v3, Lec/t;->F:Lec/e0;

    iput-object v3, p0, Lec/t;->v:Lec/e0;

    invoke-virtual {v3}, Lec/e0;->a()I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, p0, Lec/t;->z:J

    iget-object v3, p1, Lec/h;->a:Ljava/net/Socket;

    if-eqz v3, :cond_5

    iput-object v3, p0, Lec/t;->A:Ljava/net/Socket;

    new-instance v3, Lec/a0;

    iget-object v5, p1, Lec/h;->d:Lkc/f;

    if-eqz v5, :cond_4

    invoke-direct {v3, v5, v0}, Lec/a0;-><init>(Lkc/f;Z)V

    iput-object v3, p0, Lec/t;->B:Lec/a0;

    new-instance v3, Lec/o;

    new-instance v5, Lec/w;

    iget-object v6, p1, Lec/h;->c:Lkc/g;

    if-eqz v6, :cond_3

    invoke-direct {v5, v6, v0}, Lec/w;-><init>(Lkc/g;Z)V

    invoke-direct {v3, p0, v5}, Lec/o;-><init>(Lec/t;Lec/w;)V

    iput-object v3, p0, Lec/t;->C:Lec/o;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lec/t;->E:Ljava/util/LinkedHashSet;

    iget p1, p1, Lec/h;->g:I

    if-eqz p1, :cond_2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    const-string p1, " ping"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lec/g;

    invoke-direct {v0, p1, p0, v2, v3}, Lec/g;-><init>(Ljava/lang/String;Lec/t;J)V

    invoke-virtual {v4, v0, v2, v3}, Lbc/c;->c(Lbc/a;J)V

    :cond_2
    return-void

    :cond_3
    const-string p0, "source"

    invoke-static {p0}, Li4/f;->O(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p0, "sink"

    invoke-static {p0}, Li4/f;->O(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p0, "socket"

    invoke-static {p0}, Li4/f;->O(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p0, "connectionName"

    invoke-static {p0}, Li4/f;->O(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final H(IJ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lec/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] windowUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lec/s;

    move-object v2, v0

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lec/s;-><init>(Ljava/lang/String;Lec/t;IJ)V

    iget-object p0, p0, Lec/t;->i:Lbc/c;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lbc/c;->c(Lbc/a;J)V

    return-void
.end method

.method public final a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lac/c;->a:[B

    :try_start_0
    invoke-virtual {p0, p1}, Lec/t;->t(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v1, v0, [Lec/z;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, [Lec/z;

    iget-object v1, p0, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    if-eqz p1, :cond_2

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    :try_start_2
    invoke-virtual {v2, p2, p3}, Lec/z;->c(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object p1, p0, Lec/t;->B:Lec/a0;

    invoke-virtual {p1}, Lec/a0;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    iget-object p1, p0, Lec/t;->A:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object p1, p0, Lec/t;->i:Lbc/c;

    invoke-virtual {p1}, Lbc/c;->e()V

    iget-object p1, p0, Lec/t;->j:Lbc/c;

    invoke-virtual {p1}, Lbc/c;->e()V

    iget-object p0, p0, Lec/t;->k:Lbc/c;

    invoke-virtual {p0}, Lbc/c;->e()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/io/IOException;)V
    .locals 1

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v0, p1}, Lec/t;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public final close()V
    .locals 3

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lec/t;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public final declared-synchronized d(I)Lec/z;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lec/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final flush()V
    .locals 2

    iget-object p0, p0, Lec/t;->B:Lec/a0;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lec/a0;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lec/a0;->e:Lkc/f;

    invoke-interface {v0}, Lkc/f;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i(I)Lec/z;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lec/z;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final t(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 3

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lec/t;->B:Lec/a0;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lec/t;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lec/t;->g:Z

    iget v1, p0, Lec/t;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    iget-object p0, p0, Lec/t;->B:Lec/a0;

    sget-object v2, Lac/c;->a:[B

    invoke-virtual {p0, v1, p1, v2}, Lec/a0;->i(ILokhttp3/internal/http2/ErrorCode;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final declared-synchronized x(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lec/t;->w:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lec/t;->w:J

    iget-wide p1, p0, Lec/t;->x:J

    sub-long/2addr v0, p1

    iget-object p1, p0, Lec/t;->u:Lec/e0;

    invoke-virtual {p1}, Lec/e0;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lec/t;->H(IJ)V

    iget-wide p1, p0, Lec/t;->x:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lec/t;->x:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final y(IZLkc/e;J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p0, p0, Lec/t;->B:Lec/a0;

    invoke-virtual {p0, p2, p1, p3, v3}, Lec/a0;->b(ZILkc/e;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Lec/t;->y:J

    iget-wide v6, p0, Lec/t;->z:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    iget-object v4, p0, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v6, v4

    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v5, p0, Lec/t;->B:Lec/a0;

    iget v5, v5, Lec/a0;->b:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-wide v5, p0, Lec/t;->y:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lec/t;->y:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sub-long/2addr p4, v7

    iget-object v2, p0, Lec/t;->B:Lec/a0;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v2, v5, p1, p3, v4}, Lec/a0;->b(ZILkc/e;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final z(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 8

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lec/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] writeSynReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lec/r;

    const/4 v7, 0x1

    move-object v2, v0

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lec/r;-><init>(Ljava/lang/String;Lec/t;ILjava/lang/Object;I)V

    iget-object p0, p0, Lec/t;->i:Lbc/c;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lbc/c;->c(Lbc/a;J)V

    return-void
.end method
