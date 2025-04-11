.class public final Ldc/d;
.super Ldc/b;
.source "SourceFile"


# instance fields
.field public d:J

.field public e:Z

.field public final f:Lokhttp3/u;

.field public final synthetic g:Ldc/h;


# direct methods
.method public constructor <init>(Ldc/h;Lokhttp3/u;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldc/d;->g:Ldc/h;

    invoke-direct {p0, p1}, Ldc/b;-><init>(Ldc/h;)V

    iput-object p2, p0, Ldc/d;->f:Lokhttp3/u;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ldc/d;->d:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldc/d;->e:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Ldc/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ldc/d;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lac/c;->f(Lkc/t;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldc/d;->g:Ldc/h;

    iget-object v0, v0, Ldc/h;->d:Lokhttp3/internal/connection/k;

    invoke-virtual {v0}, Lokhttp3/internal/connection/k;->k()V

    invoke-virtual {p0}, Ldc/b;->a()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldc/b;->b:Z

    return-void
.end method

.method public final read(Lkc/e;J)J
    .locals 12

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_d

    iget-boolean v2, p0, Ldc/b;->b:Z

    xor-int/2addr v2, v4

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Ldc/d;->e:Z

    const-wide/16 v5, -0x1

    if-nez v2, :cond_1

    return-wide v5

    :cond_1
    iget-wide v7, p0, Ldc/d;->d:J

    cmp-long v2, v7, v0

    iget-object v9, p0, Ldc/d;->g:Ldc/h;

    if-eqz v2, :cond_2

    cmp-long v2, v7, v5

    if-nez v2, :cond_8

    :cond_2
    const-string v2, "expected chunk size and optional extensions but was \""

    cmp-long v7, v7, v5

    if-eqz v7, :cond_3

    iget-object v7, v9, Ldc/h;->e:Lkc/g;

    invoke-interface {v7}, Lkc/g;->B()Ljava/lang/String;

    :cond_3
    :try_start_0
    iget-object v7, v9, Ldc/h;->e:Lkc/g;

    invoke-interface {v7}, Lkc/g;->s0()J

    move-result-wide v7

    iput-wide v7, p0, Ldc/d;->d:J

    iget-object v7, v9, Ldc/h;->e:Lkc/g;

    invoke-interface {v7}, Lkc/g;->B()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-static {v7}, Lkotlin/text/s;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-wide v10, p0, Ldc/d;->d:J

    cmp-long v8, v10, v0

    if-ltz v8, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-eqz v4, :cond_5

    const-string v4, ";"

    invoke-static {v7, v4, v3}, Lkotlin/text/r;->N(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_a

    :cond_5
    iget-wide v7, p0, Ldc/d;->d:J

    cmp-long v0, v7, v0

    if-nez v0, :cond_7

    iput-boolean v3, p0, Ldc/d;->e:Z

    iget-object v0, v9, Ldc/h;->b:Ldc/a;

    invoke-virtual {v0}, Ldc/a;->a()Lokhttp3/s;

    move-result-object v0

    iget-object v1, v9, Ldc/h;->c:Lokhttp3/b0;

    if-eqz v1, :cond_6

    iget-object v2, p0, Ldc/d;->f:Lokhttp3/u;

    iget-object v1, v1, Lokhttp3/b0;->j:Lokhttp3/l;

    invoke-static {v1, v2, v0}, Lcc/e;->b(Lokhttp3/l;Lokhttp3/u;Lokhttp3/s;)V

    invoke-virtual {p0}, Ldc/b;->a()V

    goto :goto_2

    :cond_6
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_7
    :goto_2
    iget-boolean v0, p0, Ldc/d;->e:Z

    if-nez v0, :cond_8

    return-wide v5

    :cond_8
    iget-wide v0, p0, Ldc/d;->d:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Ldc/b;->read(Lkc/e;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_9

    iget-wide v0, p0, Ldc/d;->d:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Ldc/d;->d:J

    return-wide p1

    :cond_9
    iget-object p1, v9, Ldc/h;->d:Lokhttp3/internal/connection/k;

    invoke-virtual {p1}, Lokhttp3/internal/connection/k;->k()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldc/b;->a()V

    throw p1

    :cond_a
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Ldc/d;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/net/ProtocolException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p2, p3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
