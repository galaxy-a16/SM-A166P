.class public final Lec/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/d;


# static fields
.field public static final g:Ljava/util/List;

.field public static final h:Ljava/util/List;


# instance fields
.field public volatile a:Lec/z;

.field public final b:Lokhttp3/Protocol;

.field public volatile c:Z

.field public final d:Lokhttp3/internal/connection/k;

.field public final e:Lcc/f;

.field public final f:Lec/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lac/c;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lec/u;->g:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lac/c;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lec/u;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/b0;Lokhttp3/internal/connection/k;Lcc/f;Lec/t;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lec/u;->d:Lokhttp3/internal/connection/k;

    iput-object p3, p0, Lec/u;->e:Lcc/f;

    iput-object p4, p0, Lec/u;->f:Lec/t;

    sget-object p2, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    iget-object p1, p1, Lokhttp3/b0;->u:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    :goto_0
    iput-object p2, p0, Lec/u;->b:Lokhttp3/Protocol;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lec/u;->a:Lec/z;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lec/z;->f()Lec/x;

    move-result-object p0

    invoke-virtual {p0}, Lec/x;->close()V

    return-void

    :cond_0
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Lokhttp3/e0;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lec/u;->a:Lec/z;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lokhttp3/e0;->e:Lokhttp3/i0;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v1, Lokhttp3/e0;->d:Lokhttp3/s;

    iget-object v7, v6, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length v7, v7

    div-int/lit8 v7, v7, 0x2

    const/4 v8, 0x4

    add-int/2addr v7, v8

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Lec/b;

    sget-object v9, Lec/b;->f:Lokio/ByteString;

    iget-object v10, v1, Lokhttp3/e0;->c:Ljava/lang/String;

    invoke-direct {v7, v10, v9}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lec/b;

    sget-object v9, Lec/b;->g:Lokio/ByteString;

    const-string v10, "url"

    iget-object v11, v1, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-static {v11, v10}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lokhttp3/u;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lokhttp3/u;->d()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3f

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_2
    invoke-direct {v7, v10, v9}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "Host"

    iget-object v1, v1, Lokhttp3/e0;->d:Lokhttp3/s;

    invoke-virtual {v1, v7}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v7, Lec/b;

    sget-object v9, Lec/b;->i:Lokio/ByteString;

    invoke-direct {v7, v1, v9}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Lec/b;

    sget-object v7, Lec/b;->h:Lokio/ByteString;

    iget-object v9, v11, Lokhttp3/u;->b:Ljava/lang/String;

    invoke-direct {v1, v9, v7}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_7

    invoke-virtual {v6, v7}, Lokhttp3/s;->c(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Locale.US"

    invoke-static {v10, v11}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_6

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v9, v10}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lec/u;->g:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "te"

    invoke-static {v9, v10}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v6, v7}, Lokhttp3/s;->f(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "trailers"

    invoke-static {v10, v11}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    new-instance v10, Lec/b;

    invoke-virtual {v6, v7}, Lokhttp3/s;->f(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v1, v0, Lec/u;->f:Lec/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 v6, v2, 0x1

    const/4 v13, 0x0

    iget-object v7, v1, Lec/t;->B:Lec/a0;

    monitor-enter v7

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget v9, v1, Lec/t;->f:I

    const v10, 0x3fffffff    # 1.9999999f

    if-le v9, v10, :cond_8

    sget-object v9, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v9}, Lec/t;->t(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_8
    iget-boolean v9, v1, Lec/t;->g:Z

    if-nez v9, :cond_16

    iget v15, v1, Lec/t;->f:I

    add-int/lit8 v9, v15, 0x2

    iput v9, v1, Lec/t;->f:I

    new-instance v14, Lec/z;

    const/16 v16, 0x0

    move-object v9, v14

    move v10, v15

    move-object v11, v1

    move v12, v6

    move-object v3, v14

    move-object/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Lec/z;-><init>(ILec/t;ZZLokhttp3/s;)V

    if-eqz v2, :cond_a

    iget-wide v9, v1, Lec/t;->y:J

    iget-wide v11, v1, Lec/t;->z:J

    cmp-long v2, v9, v11

    if-gez v2, :cond_a

    iget-wide v9, v3, Lec/z;->c:J

    iget-wide v11, v3, Lec/z;->d:J

    cmp-long v2, v9, v11

    if-ltz v2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    move v2, v4

    :goto_3
    invoke-virtual {v3}, Lec/z;->h()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v1, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_b
    :try_start_2
    monitor-exit v1

    iget-object v9, v1, Lec/t;->B:Lec/a0;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-boolean v10, v9, Lec/a0;->c:Z

    if-nez v10, :cond_15

    iget-object v10, v9, Lec/a0;->d:Lec/d;

    invoke-virtual {v10, v5}, Lec/d;->d(Ljava/util/ArrayList;)V

    iget-object v5, v9, Lec/a0;->a:Lkc/e;

    iget-wide v10, v5, Lkc/e;->b:J

    iget v5, v9, Lec/a0;->b:I

    int-to-long v12, v5

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-nez v5, :cond_c

    move/from16 v17, v8

    goto :goto_4

    :cond_c
    const/16 v17, 0x0

    :goto_4
    if-eqz v6, :cond_d

    or-int/lit8 v17, v17, 0x1

    :cond_d
    move/from16 v6, v17

    long-to-int v8, v12

    invoke-virtual {v9, v15, v8, v4, v6}, Lec/a0;->d(IIII)V

    iget-object v4, v9, Lec/a0;->e:Lkc/f;

    iget-object v6, v9, Lec/a0;->a:Lkc/e;

    invoke-interface {v4, v6, v12, v13}, Lkc/r;->f0(Lkc/e;J)V

    if-lez v5, :cond_e

    sub-long/2addr v10, v12

    invoke-virtual {v9, v15, v10, v11}, Lec/a0;->z(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_e
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v7

    if-eqz v2, :cond_10

    iget-object v1, v1, Lec/t;->B:Lec/a0;

    monitor-enter v1

    :try_start_5
    iget-boolean v2, v1, Lec/a0;->c:Z

    if-nez v2, :cond_f

    iget-object v2, v1, Lec/a0;->e:Lkc/f;

    invoke-interface {v2}, Lkc/f;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v1

    goto :goto_5

    :cond_f
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10
    :goto_5
    iput-object v3, v0, Lec/u;->a:Lec/z;

    iget-boolean v1, v0, Lec/u;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    iget-object v0, v0, Lec/u;->a:Lec/z;

    if-nez v0, :cond_11

    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_11
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lec/z;->e(Lokhttp3/internal/http2/ErrorCode;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, v0, Lec/u;->a:Lec/z;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lec/z;->i:Lokhttp3/internal/connection/h;

    iget-object v3, v0, Lec/u;->e:Lcc/f;

    iget v3, v3, Lcc/f;->h:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Lkc/v;->g(JLjava/util/concurrent/TimeUnit;)Lkc/v;

    iget-object v1, v0, Lec/u;->a:Lec/z;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lec/z;->j:Lokhttp3/internal/connection/h;

    iget-object v0, v0, Lec/u;->e:Lcc/f;

    iget v0, v0, Lcc/f;->i:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3, v5}, Lkc/v;->g(JLjava/util/concurrent/TimeUnit;)Lkc/v;

    return-void

    :cond_13
    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_14
    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_15
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v9

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_16
    :try_start_9
    new-instance v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lec/u;->f:Lec/t;

    invoke-virtual {p0}, Lec/t;->flush()V

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lec/u;->c:Z

    iget-object p0, p0, Lec/u;->a:Lec/z;

    if-eqz p0, :cond_0

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Lec/z;->e(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public final d(Lokhttp3/k0;)J
    .locals 0

    invoke-static {p1}, Lcc/e;->a(Lokhttp3/k0;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lac/c;->i(Lokhttp3/k0;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final e(Lokhttp3/k0;)Lkc/t;
    .locals 0

    iget-object p0, p0, Lec/u;->a:Lec/z;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lec/z;->g:Lec/y;

    return-object p0

    :cond_0
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Lokhttp3/e0;J)Lkc/r;
    .locals 0

    iget-object p0, p0, Lec/u;->a:Lec/z;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lec/z;->f()Lec/x;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Z)Lokhttp3/j0;
    .locals 10

    iget-object v0, p0, Lec/u;->a:Lec/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lec/z;->i:Lokhttp3/internal/connection/h;

    invoke-virtual {v2}, Lkc/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v2, v0, Lec/z;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lec/z;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v2, v0, Lec/z;->i:Lokhttp3/internal/connection/h;

    invoke-virtual {v2}, Lokhttp3/internal/connection/h;->l()V

    iget-object v2, v0, Lec/z;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    iget-object v2, v0, Lec/z;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "headersQueue.removeFirst()"

    invoke-static {v2, v3}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lokhttp3/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    iget-object p0, p0, Lec/u;->b:Lokhttp3/Protocol;

    const-string v0, "protocol"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v2, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    move-object v6, v1

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    invoke-virtual {v2, v5}, Lokhttp3/s;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5}, Lokhttp3/s;->f(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":status"

    invoke-static {v7, v9}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HTTP/1.1 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/reactivex/rxjava3/internal/functions/a;->a(Ljava/lang/String;)Lcc/h;

    move-result-object v6

    goto :goto_2

    :cond_1
    sget-object v9, Lec/u;->h:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "name"

    invoke-static {v7, v9}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "value"

    invoke-static {v8, v9}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lkotlin/text/s;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_6

    new-instance v2, Lokhttp3/j0;

    invoke-direct {v2}, Lokhttp3/j0;-><init>()V

    iput-object p0, v2, Lokhttp3/j0;->b:Lokhttp3/Protocol;

    iget p0, v6, Lcc/h;->b:I

    iput p0, v2, Lokhttp3/j0;->c:I

    iget-object p0, v6, Lcc/h;->c:Ljava/lang/String;

    const-string v3, "message"

    invoke-static {p0, v3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v2, Lokhttp3/j0;->d:Ljava/lang/String;

    new-array p0, v4, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    check-cast p0, [Ljava/lang/String;

    new-instance v0, Lokhttp3/s;

    invoke-direct {v0, p0}, Lokhttp3/s;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lokhttp3/j0;->c(Lokhttp3/s;)V

    if-eqz p1, :cond_4

    iget p0, v2, Lokhttp3/j0;->c:I

    const/16 p1, 0x64

    if-ne p0, p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    return-object v1

    :cond_5
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :try_start_3
    iget-object p0, v0, Lec/z;->l:Ljava/io/IOException;

    if-nez p0, :cond_9

    new-instance p0, Lokhttp3/internal/http2/StreamResetException;

    iget-object p1, v0, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez p1, :cond_8

    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_8
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_9
    throw p0

    :catchall_0
    move-exception p0

    iget-object p1, v0, Lec/z;->i:Lokhttp3/internal/connection/h;

    invoke-virtual {p1}, Lokhttp3/internal/connection/h;->l()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_a
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method

.method public final h()Lokhttp3/internal/connection/k;
    .locals 0

    iget-object p0, p0, Lec/u;->d:Lokhttp3/internal/connection/k;

    return-object p0
.end method
