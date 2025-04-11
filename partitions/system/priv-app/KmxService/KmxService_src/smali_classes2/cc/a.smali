.class public final Lcc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# instance fields
.field public final a:Lokhttp3/l;


# direct methods
.method public constructor <init>(Lokhttp3/l;)V
    .locals 1

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/a;->a:Lokhttp3/l;

    return-void
.end method


# virtual methods
.method public final a(Lcc/f;)Lokhttp3/k0;
    .locals 17

    move-object/from16 v0, p1

    iget-object v1, v0, Lcc/f;->f:Lokhttp3/e0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lokhttp3/d0;

    invoke-direct {v2, v1}, Lokhttp3/d0;-><init>(Lokhttp3/e0;)V

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    iget-object v7, v1, Lokhttp3/e0;->e:Lokhttp3/i0;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lokhttp3/i0;->contentType()Lokhttp3/w;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, v8, Lokhttp3/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v8}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v7}, Lokhttp3/i0;->contentLength()J

    move-result-wide v7

    cmp-long v9, v7, v4

    const-string v10, "Transfer-Encoding"

    if-eqz v9, :cond_1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v2, Lokhttp3/d0;->c:Lokhttp3/r;

    invoke-virtual {v7, v10}, Lokhttp3/r;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "chunked"

    invoke-virtual {v2, v10, v7}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v2, Lokhttp3/d0;->c:Lokhttp3/r;

    invoke-virtual {v7, v6}, Lokhttp3/r;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v7, v1, Lokhttp3/e0;->d:Lokhttp3/s;

    const-string v8, "Host"

    invoke-virtual {v7, v8}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, v1, Lokhttp3/e0;->b:Lokhttp3/u;

    if-nez v9, :cond_3

    invoke-static {v11, v10}, Lac/c;->t(Lokhttp3/u;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v8, "Connection"

    invoke-virtual {v7, v8}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, "Keep-Alive"

    invoke-virtual {v2, v8, v9}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v8, "Accept-Encoding"

    invoke-virtual {v7, v8}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    const-string v13, "gzip"

    if-nez v9, :cond_5

    const-string v9, "Range"

    invoke-virtual {v7, v9}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-virtual {v2, v8, v13}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, p0

    move v9, v12

    goto :goto_1

    :cond_5
    move-object/from16 v8, p0

    move v9, v10

    :goto_1
    iget-object v8, v8, Lcc/a;->a:Lokhttp3/l;

    move-object v14, v8

    check-cast v14, Ll4/e;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v14, "url"

    invoke-static {v11, v14}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    xor-int/2addr v12, v15

    if-eqz v12, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v10, 0x1

    if-ltz v10, :cond_7

    check-cast v15, Lokhttp3/k;

    if-lez v10, :cond_6

    const-string v10, "; "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v10, v15, Lokhttp3/k;->a:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3d

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lokhttp3/k;->b:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v16

    goto :goto_2

    :cond_7
    invoke-static {}, Ll9/b;->I0()V

    const/4 v0, 0x0

    throw v0

    :cond_8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v10, v12}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "Cookie"

    invoke-virtual {v2, v12, v10}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v10, "User-Agent"

    invoke-virtual {v7, v10}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    const-string v7, "okhttp/4.8.0"

    invoke-virtual {v2, v10, v7}, Lokhttp3/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v2}, Lokhttp3/d0;->a()Lokhttp3/e0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcc/f;->b(Lokhttp3/e0;)Lokhttp3/k0;

    move-result-object v0

    iget-object v2, v0, Lokhttp3/k0;->f:Lokhttp3/s;

    invoke-static {v8, v11, v2}, Lcc/e;->b(Lokhttp3/l;Lokhttp3/u;Lokhttp3/s;)V

    new-instance v7, Lokhttp3/j0;

    invoke-direct {v7, v0}, Lokhttp3/j0;-><init>(Lokhttp3/k0;)V

    iput-object v1, v7, Lokhttp3/j0;->a:Lokhttp3/e0;

    if-eqz v9, :cond_b

    const-string v1, "Content-Encoding"

    invoke-static {v0, v1}, Lokhttp3/k0;->a(Lokhttp3/k0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v0}, Lcc/e;->a(Lokhttp3/k0;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lokhttp3/k0;->g:Lokhttp3/o0;

    if-eqz v8, :cond_b

    new-instance v9, Lkc/k;

    invoke-virtual {v8}, Lokhttp3/o0;->source()Lkc/g;

    move-result-object v8

    invoke-direct {v9, v8}, Lkc/k;-><init>(Lkc/t;)V

    invoke-virtual {v2}, Lokhttp3/s;->e()Lokhttp3/r;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/r;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lokhttp3/r;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lokhttp3/r;->c()Lokhttp3/s;

    move-result-object v1

    invoke-virtual {v7, v1}, Lokhttp3/j0;->c(Lokhttp3/s;)V

    invoke-static {v0, v3}, Lokhttp3/k0;->a(Lokhttp3/k0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokhttp3/m0;

    new-instance v2, Lkc/o;

    invoke-direct {v2, v9}, Lkc/o;-><init>(Lkc/t;)V

    invoke-direct {v1, v0, v4, v5, v2}, Lokhttp3/m0;-><init>(Ljava/lang/String;JLkc/o;)V

    iput-object v1, v7, Lokhttp3/j0;->g:Lokhttp3/o0;

    :cond_b
    invoke-virtual {v7}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v0

    return-object v0
.end method
