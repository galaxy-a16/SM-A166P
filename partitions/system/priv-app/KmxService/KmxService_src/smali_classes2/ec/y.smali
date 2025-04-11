.class public final Lec/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/t;


# instance fields
.field public final a:Lkc/e;

.field public final b:Lkc/e;

.field public c:Z

.field public final d:J

.field public e:Z

.field public final synthetic f:Lec/z;


# direct methods
.method public constructor <init>(Lec/z;JZ)V
    .locals 0

    iput-object p1, p0, Lec/y;->f:Lec/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lec/y;->d:J

    iput-boolean p4, p0, Lec/y;->e:Z

    new-instance p1, Lkc/e;

    invoke-direct {p1}, Lkc/e;-><init>()V

    iput-object p1, p0, Lec/y;->a:Lkc/e;

    new-instance p1, Lkc/e;

    invoke-direct {p1}, Lkc/e;-><init>()V

    iput-object p1, p0, Lec/y;->b:Lkc/e;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    sget-object v0, Lac/c;->a:[B

    iget-object p0, p0, Lec/y;->f:Lec/z;

    iget-object p0, p0, Lec/z;->n:Lec/t;

    invoke-virtual {p0, p1, p2}, Lec/t;->x(J)V

    return-void
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Lec/y;->f:Lec/z;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lec/y;->c:Z

    iget-object v1, p0, Lec/y;->b:Lkc/e;

    iget-wide v2, v1, Lkc/e;->b:J

    invoke-virtual {v1}, Lkc/e;->a()V

    iget-object v1, p0, Lec/y;->f:Lec/z;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lec/y;->a(J)V

    :cond_0
    iget-object p0, p0, Lec/y;->f:Lec/z;

    invoke-virtual {p0}, Lec/z;->a()V

    return-void

    :cond_1
    :try_start_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final read(Lkc/e;J)J
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v0, v4}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_b

    :goto_1
    iget-object v6, v1, Lec/y;->f:Lec/z;

    monitor-enter v6

    :try_start_0
    iget-object v7, v1, Lec/y;->f:Lec/z;

    iget-object v7, v7, Lec/z;->i:Lokhttp3/internal/connection/h;

    invoke-virtual {v7}, Lkc/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v7, v1, Lec/y;->f:Lec/z;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v8, v7, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v7

    const/4 v7, 0x0

    if-eqz v8, :cond_3

    iget-object v8, v1, Lec/y;->f:Lec/z;

    iget-object v8, v8, Lec/z;->l:Ljava/io/IOException;

    if-eqz v8, :cond_1

    :goto_2
    move-object v7, v8

    goto :goto_3

    :cond_1
    new-instance v8, Lokhttp3/internal/http2/StreamResetException;

    iget-object v9, v1, Lec/y;->f:Lec/z;

    monitor-enter v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v10, v9, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v9

    if-eqz v10, :cond_2

    invoke-direct {v8, v10}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Li4/f;->M()V

    throw v7

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v9

    throw v2

    :cond_3
    :goto_3
    iget-boolean v8, v1, Lec/y;->c:Z

    if-nez v8, :cond_a

    iget-object v8, v1, Lec/y;->b:Lkc/e;

    iget-wide v9, v8, Lkc/e;->b:J

    cmp-long v4, v9, v4

    const-wide/16 v11, -0x1

    if-lez v4, :cond_4

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v8, v0, v4, v5}, Lkc/e;->read(Lkc/e;J)J

    move-result-wide v4

    iget-object v8, v1, Lec/y;->f:Lec/z;

    iget-wide v9, v8, Lec/z;->a:J

    add-long/2addr v9, v4

    iput-wide v9, v8, Lec/z;->a:J

    iget-wide v13, v8, Lec/z;->b:J

    sub-long/2addr v9, v13

    if-nez v7, :cond_6

    iget-object v8, v8, Lec/z;->n:Lec/t;

    iget-object v8, v8, Lec/t;->u:Lec/e0;

    invoke-virtual {v8}, Lec/e0;->a()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v13, v8

    cmp-long v8, v9, v13

    if-ltz v8, :cond_6

    iget-object v8, v1, Lec/y;->f:Lec/z;

    iget-object v13, v8, Lec/z;->n:Lec/t;

    iget v8, v8, Lec/z;->m:I

    invoke-virtual {v13, v8, v9, v10}, Lec/t;->H(IJ)V

    iget-object v8, v1, Lec/y;->f:Lec/z;

    iget-wide v9, v8, Lec/z;->a:J

    iput-wide v9, v8, Lec/z;->b:J

    goto :goto_4

    :cond_4
    iget-boolean v4, v1, Lec/y;->e:Z

    if-nez v4, :cond_5

    if-nez v7, :cond_5

    iget-object v4, v1, Lec/y;->f:Lec/z;

    invoke-virtual {v4}, Lec/z;->j()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v4, 0x1

    move-wide v8, v11

    goto :goto_5

    :cond_5
    move-wide v4, v11

    :cond_6
    :goto_4
    const/4 v8, 0x0

    move-wide v15, v4

    move v4, v8

    move-wide v8, v15

    :goto_5
    :try_start_6
    iget-object v5, v1, Lec/y;->f:Lec/z;

    iget-object v5, v5, Lec/z;->i:Lokhttp3/internal/connection/h;

    invoke-virtual {v5}, Lokhttp3/internal/connection/h;->l()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v6

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x0

    goto/16 :goto_1

    :cond_7
    cmp-long v0, v8, v11

    if-eqz v0, :cond_8

    invoke-virtual {v1, v8, v9}, Lec/y;->a(J)V

    return-wide v8

    :cond_8
    if-nez v7, :cond_9

    return-wide v11

    :cond_9
    throw v7

    :cond_a
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit v7

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_8
    iget-object v1, v1, Lec/y;->f:Lec/z;

    iget-object v1, v1, Lec/z;->i:Lokhttp3/internal/connection/h;

    invoke-virtual {v1}, Lokhttp3/internal/connection/h;->l()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_b
    const-string v0, "byteCount < 0: "

    invoke-static {v0, v2, v3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final timeout()Lkc/v;
    .locals 0

    iget-object p0, p0, Lec/y;->f:Lec/z;

    iget-object p0, p0, Lec/z;->i:Lokhttp3/internal/connection/h;

    return-object p0
.end method
