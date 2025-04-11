.class public final Lokhttp3/internal/connection/c;
.super Lkc/i;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:J

.field public final synthetic f:Lokhttp3/internal/connection/d;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/d;Lkc/t;J)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/connection/c;->f:Lokhttp3/internal/connection/d;

    invoke-direct {p0, p2}, Lkc/i;-><init>(Lkc/t;)V

    iput-wide p3, p0, Lokhttp3/internal/connection/c;->e:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lokhttp3/internal/connection/c;->b:Z

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/c;->a(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 4

    iget-boolean v0, p0, Lokhttp3/internal/connection/c;->c:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/c;->c:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/connection/c;->f:Lokhttp3/internal/connection/d;

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lokhttp3/internal/connection/c;->b:Z

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lokhttp3/internal/connection/c;->b:Z

    iget-object p0, v2, Lokhttp3/internal/connection/d;->d:Le9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "call"

    iget-object v3, v2, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/i;

    invoke-static {v3, p0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v0, v1, p1}, Lokhttp3/internal/connection/d;->a(ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lokhttp3/internal/connection/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/c;->d:Z

    :try_start_0
    invoke-super {p0}, Lkc/i;->close()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/c;->a(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/c;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final read(Lkc/e;J)J
    .locals 8

    const-string v0, "expected "

    const-string v1, "sink"

    invoke-static {p1, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lokhttp3/internal/connection/c;->d:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lkc/i;->delegate()Lkc/t;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide p1

    iget-boolean p3, p0, Lokhttp3/internal/connection/c;->b:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p0, Lokhttp3/internal/connection/c;->b:Z

    iget-object p3, p0, Lokhttp3/internal/connection/c;->f:Lokhttp3/internal/connection/d;

    iget-object v1, p3, Lokhttp3/internal/connection/d;->d:Le9/a;

    iget-object p3, p3, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "call"

    invoke-static {p3, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, -0x1

    cmp-long p3, p1, v1

    const/4 v3, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p0, v3}, Lokhttp3/internal/connection/c;->a(Ljava/io/IOException;)Ljava/io/IOException;

    return-wide v1

    :cond_1
    iget-wide v4, p0, Lokhttp3/internal/connection/c;->a:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v4, p1

    iget-wide v6, p0, Lokhttp3/internal/connection/c;->e:J

    cmp-long p3, v6, v1

    if-eqz p3, :cond_3

    cmp-long p3, v4, v6

    if-gtz p3, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iput-wide v4, p0, Lokhttp3/internal/connection/c;->a:J

    cmp-long p3, v4, v6

    if-nez p3, :cond_4

    invoke-virtual {p0, v3}, Lokhttp3/internal/connection/c;->a(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-wide p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/c;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
