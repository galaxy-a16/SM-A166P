.class public final Lec/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/r;


# instance fields
.field public final a:Lkc/e;

.field public b:Z

.field public final c:Z

.field public final synthetic d:Lec/z;


# direct methods
.method public constructor <init>(Lec/z;Z)V
    .locals 0

    iput-object p1, p0, Lec/x;->d:Lec/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lec/x;->c:Z

    new-instance p1, Lkc/e;

    invoke-direct {p1}, Lkc/e;-><init>()V

    iput-object p1, p0, Lec/x;->a:Lkc/e;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 12

    iget-object v0, p0, Lec/x;->d:Lec/z;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lec/x;->d:Lec/z;

    iget-object v1, v1, Lec/z;->j:Lokhttp3/internal/connection/h;

    invoke-virtual {v1}, Lkc/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :goto_0
    :try_start_1
    iget-object v1, p0, Lec/x;->d:Lec/z;

    iget-wide v2, v1, Lec/z;->c:J

    iget-wide v4, v1, Lec/z;->d:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lec/x;->c:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lec/x;->b:Z

    if-nez v2, :cond_0

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v1, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1

    if-nez v2, :cond_0

    iget-object v1, p0, Lec/x;->d:Lec/z;

    invoke-virtual {v1}, Lec/z;->j()V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_4
    iget-object v1, p0, Lec/x;->d:Lec/z;

    iget-object v1, v1, Lec/z;->j:Lokhttp3/internal/connection/h;

    invoke-virtual {v1}, Lokhttp3/internal/connection/h;->l()V

    iget-object v1, p0, Lec/x;->d:Lec/z;

    invoke-virtual {v1}, Lec/z;->b()V

    iget-object v1, p0, Lec/x;->d:Lec/z;

    iget-wide v2, v1, Lec/z;->d:J

    iget-wide v4, v1, Lec/z;->c:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lec/x;->a:Lkc/e;

    iget-wide v4, v1, Lkc/e;->b:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iget-object v1, p0, Lec/x;->d:Lec/z;

    iget-wide v2, v1, Lec/z;->c:J

    add-long/2addr v2, v10

    iput-wide v2, v1, Lec/z;->c:J

    if-eqz p1, :cond_1

    iget-object p1, p0, Lec/x;->a:Lkc/e;

    iget-wide v2, p1, Lkc/e;->b:J

    cmp-long p1, v10, v2

    if-nez p1, :cond_1

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    iget-object p1, v1, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move v8, p1

    monitor-exit v0

    iget-object p1, p0, Lec/x;->d:Lec/z;

    iget-object p1, p1, Lec/z;->j:Lokhttp3/internal/connection/h;

    invoke-virtual {p1}, Lkc/d;->h()V

    :try_start_7
    iget-object p1, p0, Lec/x;->d:Lec/z;

    iget-object v6, p1, Lec/z;->n:Lec/t;

    iget v7, p1, Lec/z;->m:I

    iget-object v9, p0, Lec/x;->a:Lkc/e;

    invoke-virtual/range {v6 .. v11}, Lec/t;->y(IZLkc/e;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object p0, p0, Lec/x;->d:Lec/z;

    iget-object p0, p0, Lec/z;->j:Lokhttp3/internal/connection/h;

    invoke-virtual {p0}, Lokhttp3/internal/connection/h;->l()V

    return-void

    :catchall_3
    move-exception p1

    iget-object p0, p0, Lec/x;->d:Lec/z;

    iget-object p0, p0, Lec/z;->j:Lokhttp3/internal/connection/h;

    invoke-virtual {p0}, Lokhttp3/internal/connection/h;->l()V

    throw p1

    :goto_2
    :try_start_8
    iget-object p0, p0, Lec/x;->d:Lec/z;

    iget-object p0, p0, Lec/z;->j:Lokhttp3/internal/connection/h;

    invoke-virtual {p0}, Lokhttp3/internal/connection/h;->l()V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final close()V
    .locals 14

    iget-object v0, p0, Lec/x;->d:Lec/z;

    sget-object v1, Lac/c;->a:[B

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lec/x;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lec/x;->d:Lec/z;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, v1, Lec/z;->k:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    monitor-exit v0

    iget-object v0, p0, Lec/x;->d:Lec/z;

    iget-object v4, v0, Lec/z;->h:Lec/x;

    iget-boolean v4, v4, Lec/x;->c:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lec/x;->a:Lkc/e;

    iget-wide v4, v4, Lkc/e;->b:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v1, v3

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    iget-object v0, p0, Lec/x;->a:Lkc/e;

    iget-wide v0, v0, Lkc/e;->b:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    invoke-virtual {p0, v3}, Lec/x;->a(Z)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v8, v0, Lec/z;->n:Lec/t;

    iget v9, v0, Lec/z;->m:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lec/t;->y(IZLkc/e;J)V

    :cond_4
    iget-object v0, p0, Lec/x;->d:Lec/z;

    monitor-enter v0

    :try_start_4
    iput-boolean v3, p0, Lec/x;->b:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lec/x;->d:Lec/z;

    iget-object v0, v0, Lec/z;->n:Lec/t;

    invoke-virtual {v0}, Lec/t;->flush()V

    iget-object p0, p0, Lec/x;->d:Lec/z;

    invoke-virtual {p0}, Lec/z;->a()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final f0(Lkc/e;J)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lac/c;->a:[B

    iget-object v0, p0, Lec/x;->a:Lkc/e;

    invoke-virtual {v0, p1, p2, p3}, Lkc/e;->f0(Lkc/e;J)V

    :goto_0
    iget-wide p1, v0, Lkc/e;->b:J

    const-wide/16 v1, 0x4000

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lec/x;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 4

    iget-object v0, p0, Lec/x;->d:Lec/z;

    sget-object v1, Lac/c;->a:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lec/x;->d:Lec/z;

    invoke-virtual {v1}, Lec/z;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    iget-object v0, p0, Lec/x;->a:Lkc/e;

    iget-wide v0, v0, Lkc/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lec/x;->a(Z)V

    iget-object v0, p0, Lec/x;->d:Lec/z;

    iget-object v0, v0, Lec/z;->n:Lec/t;

    invoke-virtual {v0}, Lec/t;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final timeout()Lkc/v;
    .locals 0

    iget-object p0, p0, Lec/x;->d:Lec/z;

    iget-object p0, p0, Lec/z;->j:Lokhttp3/internal/connection/h;

    return-object p0
.end method
