.class public final Ldc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/d;


# instance fields
.field public a:I

.field public final b:Ldc/a;

.field public final c:Lokhttp3/b0;

.field public final d:Lokhttp3/internal/connection/k;

.field public final e:Lkc/g;

.field public final f:Lkc/f;


# direct methods
.method public constructor <init>(Lokhttp3/b0;Lokhttp3/internal/connection/k;Lkc/g;Lkc/f;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldc/h;->c:Lokhttp3/b0;

    iput-object p2, p0, Ldc/h;->d:Lokhttp3/internal/connection/k;

    iput-object p3, p0, Ldc/h;->e:Lkc/g;

    iput-object p4, p0, Ldc/h;->f:Lkc/f;

    new-instance p1, Ldc/a;

    invoke-direct {p1, p3}, Ldc/a;-><init>(Lkc/g;)V

    iput-object p1, p0, Ldc/h;->b:Ldc/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Ldc/h;->f:Lkc/f;

    invoke-interface {p0}, Lkc/f;->flush()V

    return-void
.end method

.method public final b(Lokhttp3/e0;)V
    .locals 4

    iget-object v0, p0, Ldc/h;->d:Lokhttp3/internal/connection/k;

    iget-object v0, v0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v0, v0, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    const-string v1, "connection.route().proxy.type()"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lokhttp3/e0;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lokhttp3/e0;->b:Lokhttp3/u;

    iget-boolean v3, v2, Lokhttp3/u;->a:Z

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lokhttp3/u;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/u;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lokhttp3/e0;->d:Lokhttp3/s;

    invoke-virtual {p0, p1, v0}, Ldc/h;->j(Lokhttp3/s;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Ldc/h;->f:Lkc/f;

    invoke-interface {p0}, Lkc/f;->flush()V

    return-void
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Ldc/h;->d:Lokhttp3/internal/connection/k;

    iget-object p0, p0, Lokhttp3/internal/connection/k;->b:Ljava/net/Socket;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lac/c;->c(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final d(Lokhttp3/k0;)J
    .locals 1

    invoke-static {p1}, Lcc/e;->a(Lokhttp3/k0;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "Transfer-Encoding"

    invoke-static {p1, p0}, Lokhttp3/k0;->a(Lokhttp3/k0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-static {v0, p0}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lac/c;->i(Lokhttp3/k0;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final e(Lokhttp3/k0;)Lkc/t;
    .locals 10

    invoke-static {p1}, Lcc/e;->a(Lokhttp3/k0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldc/h;->i(J)Ldc/e;

    move-result-object p0

    goto :goto_2

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-static {p1, v0}, Lokhttp3/k0;->a(Lokhttp3/k0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-static {v1, v0}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    const-string v2, "state: "

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v0, :cond_3

    iget-object p1, p1, Lokhttp3/k0;->a:Lokhttp3/e0;

    iget-object p1, p1, Lokhttp3/e0;->b:Lokhttp3/u;

    iget v0, p0, Ldc/h;->a:I

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    iput v1, p0, Ldc/h;->a:I

    new-instance v0, Ldc/d;

    invoke-direct {v0, p0, p1}, Ldc/d;-><init>(Ldc/h;Lokhttp3/u;)V

    move-object p0, v0

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ldc/h;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {p1}, Lac/c;->i(Lokhttp3/k0;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long p1, v6, v8

    if-eqz p1, :cond_4

    invoke-virtual {p0, v6, v7}, Ldc/h;->i(J)Ldc/e;

    move-result-object p0

    goto :goto_2

    :cond_4
    iget p1, p0, Ldc/h;->a:I

    if-ne p1, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    if-eqz v3, :cond_6

    iput v1, p0, Ldc/h;->a:I

    iget-object p1, p0, Ldc/h;->d:Lokhttp3/internal/connection/k;

    invoke-virtual {p1}, Lokhttp3/internal/connection/k;->k()V

    new-instance p1, Ldc/g;

    invoke-direct {p1, p0}, Ldc/g;-><init>(Ldc/h;)V

    move-object p0, p1

    :goto_2
    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ldc/h;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lokhttp3/e0;J)Lkc/r;
    .locals 6

    iget-object v0, p1, Lokhttp3/e0;->e:Lokhttp3/i0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/i0;->isDuplex()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Duplex connections are not supported for HTTP/1"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p1, Lokhttp3/e0;->d:Lokhttp3/s;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-static {v0, p1}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "state: "

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    iget p1, p0, Ldc/h;->a:I

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iput v1, p0, Ldc/h;->a:I

    new-instance p1, Ldc/c;

    invoke-direct {p1, p0}, Ldc/c;-><init>(Ldc/h;)V

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ldc/h;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-wide/16 v4, -0x1

    cmp-long p1, p2, v4

    if-eqz p1, :cond_7

    iget p1, p0, Ldc/h;->a:I

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    iput v1, p0, Ldc/h;->a:I

    new-instance p1, Ldc/f;

    invoke-direct {p1, p0}, Ldc/f;-><init>(Ldc/h;)V

    :goto_3
    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ldc/h;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Z)Lokhttp3/j0;
    .locals 7

    iget-object v0, p0, Ldc/h;->b:Ldc/a;

    iget v1, p0, Ldc/h;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    :try_start_0
    iget-object v1, v0, Ldc/a;->b:Lkc/g;

    iget-wide v3, v0, Ldc/a;->a:J

    invoke-interface {v1, v3, v4}, Lkc/g;->U(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v3, v0, Ldc/a;->a:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, v0, Ldc/a;->a:J

    invoke-static {v1}, Lio/reactivex/rxjava3/internal/functions/a;->a(Ljava/lang/String;)Lcc/h;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget v3, v1, Lcc/h;->b:I

    :try_start_1
    new-instance v4, Lokhttp3/j0;

    invoke-direct {v4}, Lokhttp3/j0;-><init>()V

    iget-object v5, v1, Lcc/h;->a:Lokhttp3/Protocol;

    invoke-virtual {v4, v5}, Lokhttp3/j0;->d(Lokhttp3/Protocol;)V

    iput v3, v4, Lokhttp3/j0;->c:I

    iget-object v1, v1, Lcc/h;->c:Ljava/lang/String;

    const-string v5, "message"

    invoke-static {v1, v5}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v4, Lokhttp3/j0;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ldc/a;->a()Lokhttp3/s;

    move-result-object v0

    invoke-virtual {v4, v0}, Lokhttp3/j0;->c(Lokhttp3/s;)V

    const/16 v0, 0x64

    if-eqz p1, :cond_2

    if-ne v3, v0, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    if-ne v3, v0, :cond_3

    iput v2, p0, Ldc/h;->a:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    iput p1, p0, Ldc/h;->a:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v4

    :catch_0
    move-exception p1

    iget-object p0, p0, Ldc/h;->d:Lokhttp3/internal/connection/k;

    iget-object p0, p0, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object p0, p0, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object p0, p0, Lokhttp3/a;->a:Lokhttp3/u;

    invoke-virtual {p0}, Lokhttp3/u;->f()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream on "

    invoke-static {v1, p0}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ldc/h;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Lokhttp3/internal/connection/k;
    .locals 0

    iget-object p0, p0, Ldc/h;->d:Lokhttp3/internal/connection/k;

    return-object p0
.end method

.method public final i(J)Ldc/e;
    .locals 2

    iget v0, p0, Ldc/h;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Ldc/h;->a:I

    new-instance v0, Ldc/e;

    invoke-direct {v0, p0, p1, p2}, Ldc/e;-><init>(Ldc/h;J)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ldc/h;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Lokhttp3/s;Ljava/lang/String;)V
    .locals 6

    const-string v0, "headers"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Ldc/h;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Ldc/h;->f:Lkc/f;

    invoke-interface {v0, p2}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    move-result-object p2

    const-string v3, "\r\n"

    invoke-interface {p2, v3}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    iget-object p2, p1, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length p2, p2

    div-int/lit8 p2, p2, 0x2

    :goto_1
    if-ge v1, p2, :cond_1

    invoke-virtual {p1, v1}, Lokhttp3/s;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    move-result-object v4

    const-string v5, ": "

    invoke-interface {v4, v5}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    move-result-object v4

    invoke-virtual {p1, v1}, Lokhttp3/s;->f(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    move-result-object v4

    invoke-interface {v4, v3}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Lkc/f;->k0(Ljava/lang/String;)Lkc/f;

    iput v2, p0, Ldc/h;->a:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ldc/h;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
