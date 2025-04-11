.class public final Ldc/e;
.super Ldc/b;
.source "SourceFile"


# instance fields
.field public d:J

.field public final synthetic e:Ldc/h;


# direct methods
.method public constructor <init>(Ldc/h;J)V
    .locals 2

    iput-object p1, p0, Ldc/e;->e:Ldc/h;

    invoke-direct {p0, p1}, Ldc/b;-><init>(Ldc/h;)V

    iput-wide p2, p0, Ldc/e;->d:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ldc/b;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-boolean v0, p0, Ldc/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Ldc/e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lac/c;->f(Lkc/t;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldc/e;->e:Ldc/h;

    iget-object v0, v0, Ldc/h;->d:Lokhttp3/internal/connection/k;

    invoke-virtual {v0}, Lokhttp3/internal/connection/k;->k()V

    invoke-virtual {p0}, Ldc/b;->a()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldc/b;->b:Z

    return-void
.end method

.method public final read(Lkc/e;J)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    iget-boolean v2, p0, Ldc/b;->b:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_4

    iget-wide v2, p0, Ldc/e;->d:J

    cmp-long v4, v2, v0

    const-wide/16 v5, -0x1

    if-nez v4, :cond_1

    return-wide v5

    :cond_1
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Ldc/b;->read(Lkc/e;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_3

    iget-wide v2, p0, Ldc/e;->d:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Ldc/e;->d:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_2

    invoke-virtual {p0}, Ldc/b;->a()V

    :cond_2
    return-wide p1

    :cond_3
    iget-object p1, p0, Ldc/e;->e:Ldc/h;

    iget-object p1, p1, Ldc/h;->d:Lokhttp3/internal/connection/k;

    invoke-virtual {p1}, Lokhttp3/internal/connection/k;->k()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldc/b;->a()V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p2, p3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
