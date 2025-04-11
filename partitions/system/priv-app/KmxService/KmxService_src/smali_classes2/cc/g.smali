.class public final Lcc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# instance fields
.field public final a:Lokhttp3/b0;


# direct methods
.method public constructor <init>(Lokhttp3/b0;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/g;->a:Lokhttp3/b0;

    return-void
.end method

.method public static d(Lokhttp3/k0;I)I
    .locals 1

    const-string v0, "Retry-After"

    invoke-static {p0, v0}, Lokhttp3/k0;->a(Lokhttp3/k0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lkotlin/text/Regex;

    const-string v0, "\\d+"

    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Integer.valueOf(header)"

    invoke-static {p0, p1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0

    :cond_1
    return p1
.end method


# virtual methods
.method public final a(Lcc/f;)Lokhttp3/k0;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcc/f;->f:Lokhttp3/e0;

    iget-object v3, v2, Lcc/f;->b:Lokhttp3/internal/connection/i;

    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v5, 0x1

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    move v0, v5

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "request"

    invoke-static {v4, v11}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v3, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/d;

    if-nez v11, :cond_0

    move v11, v5

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_13

    monitor-enter v3

    :try_start_0
    iget-boolean v11, v3, Lokhttp3/internal/connection/i;->k:Z

    xor-int/2addr v11, v5

    if-eqz v11, :cond_12

    iget-boolean v11, v3, Lokhttp3/internal/connection/i;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/2addr v11, v5

    if-eqz v11, :cond_11

    monitor-exit v3

    if-eqz v0, :cond_3

    new-instance v0, Lokhttp3/internal/connection/e;

    iget-object v11, v3, Lokhttp3/internal/connection/i;->a:Lokhttp3/internal/connection/m;

    iget-object v12, v4, Lokhttp3/e0;->b:Lokhttp3/u;

    iget-boolean v13, v12, Lokhttp3/u;->a:Z

    iget-object v14, v3, Lokhttp3/internal/connection/i;->q:Lokhttp3/b0;

    if-eqz v13, :cond_2

    iget-object v13, v14, Lokhttp3/b0;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v13, :cond_1

    iget-object v15, v14, Lokhttp3/b0;->v:Ljavax/net/ssl/HostnameVerifier;

    iget-object v7, v14, Lokhttp3/b0;->w:Lokhttp3/g;

    move-object/from16 v23, v7

    move-object/from16 v21, v13

    move-object/from16 v22, v15

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CLEARTEXT-only client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_2
    new-instance v7, Lokhttp3/a;

    iget-object v13, v12, Lokhttp3/u;->e:Ljava/lang/String;

    iget v12, v12, Lokhttp3/u;->f:I

    iget-object v15, v14, Lokhttp3/b0;->k:Lokhttp3/m;

    iget-object v5, v14, Lokhttp3/b0;->n:Ljavax/net/SocketFactory;

    iget-object v6, v14, Lokhttp3/b0;->m:Lokhttp3/b;

    move-object/from16 v28, v8

    iget-object v8, v14, Lokhttp3/b0;->u:Ljava/util/List;

    move/from16 v29, v9

    iget-object v9, v14, Lokhttp3/b0;->t:Ljava/util/List;

    iget-object v14, v14, Lokhttp3/b0;->l:Ljava/net/ProxySelector;

    move-object/from16 v16, v7

    move-object/from16 v17, v13

    move/from16 v18, v12

    move-object/from16 v19, v15

    move-object/from16 v20, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v14

    invoke-direct/range {v16 .. v27}, Lokhttp3/a;-><init>(Ljava/lang/String;ILokhttp3/m;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/g;Lokhttp3/b;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    iget-object v5, v3, Lokhttp3/internal/connection/i;->b:Le9/a;

    invoke-direct {v0, v11, v7, v3, v5}, Lokhttp3/internal/connection/e;-><init>(Lokhttp3/internal/connection/m;Lokhttp3/a;Lokhttp3/internal/connection/i;Le9/a;)V

    iput-object v0, v3, Lokhttp3/internal/connection/i;->f:Lokhttp3/internal/connection/e;

    goto :goto_3

    :cond_3
    move-object/from16 v28, v8

    move/from16 v29, v9

    :goto_3
    :try_start_1
    iget-boolean v0, v3, Lokhttp3/internal/connection/i;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_10

    :try_start_2
    invoke-virtual {v2, v4}, Lcc/f;->b(Lokhttp3/e0;)Lokhttp3/k0;

    move-result-object v0
    :try_end_2
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_6

    :try_start_3
    new-instance v4, Lokhttp3/j0;

    invoke-direct {v4, v0}, Lokhttp3/j0;-><init>(Lokhttp3/k0;)V

    new-instance v0, Lokhttp3/j0;

    invoke-direct {v0, v10}, Lokhttp3/j0;-><init>(Lokhttp3/k0;)V

    const/4 v5, 0x0

    iput-object v5, v0, Lokhttp3/j0;->g:Lokhttp3/o0;

    invoke-virtual {v0}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v0

    iget-object v6, v0, Lokhttp3/k0;->g:Lokhttp3/o0;

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_5

    iput-object v0, v4, Lokhttp3/j0;->j:Lokhttp3/k0;

    invoke-virtual {v4}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v0

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v5, 0x0

    :goto_5
    move-object v10, v0

    iget-object v0, v3, Lokhttp3/internal/connection/i;->i:Lokhttp3/internal/connection/d;

    invoke-virtual {v1, v10, v0}, Lcc/g;->b(Lokhttp3/k0;Lokhttp3/internal/connection/d;)Lokhttp3/e0;

    move-result-object v4

    if-nez v4, :cond_9

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lokhttp3/internal/connection/d;->a:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v3, Lokhttp3/internal/connection/i;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_7

    iput-boolean v1, v3, Lokhttp3/internal/connection/i;->h:Z

    iget-object v0, v3, Lokhttp3/internal/connection/i;->c:Lokhttp3/internal/connection/h;

    invoke-virtual {v0}, Lkc/d;->i()Z

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :goto_6
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lokhttp3/internal/connection/i;->e(Z)V

    return-object v10

    :cond_9
    const/4 v6, 0x0

    :try_start_4
    iget-object v0, v4, Lokhttp3/e0;->e:Lokhttp3/i0;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp3/i0;->isOneShot()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_a

    invoke-virtual {v3, v6}, Lokhttp3/internal/connection/i;->e(Z)V

    return-object v10

    :cond_a
    :try_start_5
    iget-object v0, v10, Lokhttp3/k0;->g:Lokhttp3/o0;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lac/c;->b(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    add-int/lit8 v9, v29, 0x1

    const/16 v0, 0x14

    if-gt v9, v0, :cond_c

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lokhttp3/internal/connection/i;->e(Z)V

    move-object/from16 v8, v28

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_c
    :try_start_6
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    move-object v6, v0

    instance-of v0, v6, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v6, v3, v4, v0}, Lcc/g;->c(Ljava/io/IOException;Lokhttp3/internal/connection/i;Lokhttp3/e0;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "<this>"

    move-object/from16 v7, v28

    invoke-static {v7, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v3, v9}, Lokhttp3/internal/connection/i;->e(Z)V

    move-object v8, v0

    move v5, v9

    move/from16 v9, v29

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v7, v28

    :try_start_7
    invoke-static {v6, v7}, Lac/c;->x(Ljava/io/IOException;Ljava/util/List;)V

    throw v6

    :catch_1
    move-exception v0

    move-object/from16 v7, v28

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v1, v0, v3, v4, v8}, Lcc/g;->c(Ljava/io/IOException;Lokhttp3/internal/connection/i;Lokhttp3/e0;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v0

    const-string v6, "<this>"

    invoke-static {v7, v6}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v11, 0x1

    add-int/2addr v9, v11

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v3, v11}, Lokhttp3/internal/connection/i;->e(Z)V

    move v0, v8

    move v5, v11

    move/from16 v9, v29

    move-object v8, v6

    goto/16 :goto_0

    :cond_f
    :try_start_8
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-static {v0, v7}, Lac/c;->x(Ljava/io/IOException;Ljava/util/List;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lokhttp3/internal/connection/i;->e(Z)V

    throw v0

    :cond_11
    :try_start_9
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_13
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Lokhttp3/k0;Lokhttp3/internal/connection/d;)Lokhttp3/e0;
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/k;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget v2, p1, Lokhttp3/k0;->d:I

    iget-object v3, p1, Lokhttp3/k0;->a:Lokhttp3/e0;

    iget-object v4, v3, Lokhttp3/e0;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x134

    const/16 v7, 0x133

    const/4 v8, 0x1

    if-eq v2, v7, :cond_11

    if-eq v2, v6, :cond_11

    const/16 v9, 0x191

    if-eq v2, v9, :cond_10

    const/16 v9, 0x1a5

    if-eq v2, v9, :cond_c

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_9

    const/16 p2, 0x197

    if-eq v2, p2, :cond_6

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v0

    :cond_1
    iget-object p0, p0, Lcc/g;->a:Lokhttp3/b0;

    iget-boolean p0, p0, Lokhttp3/b0;->f:Z

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, v3, Lokhttp3/e0;->e:Lokhttp3/i0;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lokhttp3/i0;->isOneShot()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    iget-object p0, p1, Lokhttp3/k0;->j:Lokhttp3/k0;

    if-eqz p0, :cond_4

    iget p0, p0, Lokhttp3/k0;->d:I

    if-ne p0, p2, :cond_4

    return-object v0

    :cond_4
    invoke-static {p1, v5}, Lcc/g;->d(Lokhttp3/k0;I)I

    move-result p0

    if-lez p0, :cond_5

    return-object v0

    :cond_5
    iget-object p0, p1, Lokhttp3/k0;->a:Lokhttp3/e0;

    return-object p0

    :cond_6
    if-eqz v1, :cond_8

    iget-object p1, v1, Lokhttp3/p0;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_7

    iget-object p0, p0, Lcc/g;->a:Lokhttp3/b0;

    iget-object p0, p0, Lokhttp3/b0;->m:Lokhttp3/b;

    :goto_1
    check-cast p0, Le9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_7
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {}, Li4/f;->M()V

    throw v0

    :cond_9
    iget-object p0, p1, Lokhttp3/k0;->j:Lokhttp3/k0;

    if-eqz p0, :cond_a

    iget p0, p0, Lokhttp3/k0;->d:I

    if-ne p0, p2, :cond_a

    return-object v0

    :cond_a
    const p0, 0x7fffffff

    invoke-static {p1, p0}, Lcc/g;->d(Lokhttp3/k0;I)I

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, p1, Lokhttp3/k0;->a:Lokhttp3/e0;

    return-object p0

    :cond_b
    return-object v0

    :cond_c
    iget-object p0, v3, Lokhttp3/e0;->e:Lokhttp3/i0;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lokhttp3/i0;->isOneShot()Z

    move-result p0

    if-eqz p0, :cond_d

    return-object v0

    :cond_d
    if-eqz p2, :cond_f

    iget-object p0, p2, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/e;

    iget-object p0, p0, Lokhttp3/internal/connection/e;->h:Lokhttp3/a;

    iget-object p0, p0, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object p0, p0, Lokhttp3/u;->e:Ljava/lang/String;

    iget-object v1, p2, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/k;

    iget-object v1, v1, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object v1, v1, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object v1, v1, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v1, v1, Lokhttp3/u;->e:Ljava/lang/String;

    invoke-static {p0, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v8

    if-nez p0, :cond_e

    goto :goto_2

    :cond_e
    iget-object p0, p2, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/k;

    monitor-enter p0

    :try_start_0
    iput-boolean v8, p0, Lokhttp3/internal/connection/k;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object p0, p1, Lokhttp3/k0;->a:Lokhttp3/e0;

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_f
    :goto_2
    return-object v0

    :cond_10
    iget-object p0, p0, Lcc/g;->a:Lokhttp3/b0;

    iget-object p0, p0, Lokhttp3/b0;->g:Lokhttp3/b;

    goto :goto_1

    :cond_11
    :pswitch_0
    iget-object p0, p0, Lcc/g;->a:Lokhttp3/b0;

    iget-boolean p2, p0, Lokhttp3/b0;->h:Z

    if-nez p2, :cond_12

    goto/16 :goto_6

    :cond_12
    const-string p2, "Location"

    invoke-static {p1, p2}, Lokhttp3/k0;->a(Lokhttp3/k0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1b

    iget-object v1, p1, Lokhttp3/k0;->a:Lokhttp3/e0;

    iget-object v2, v1, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v3, Lokhttp3/t;

    invoke-direct {v3}, Lokhttp3/t;-><init>()V

    invoke-virtual {v3, v2, p2}, Lokhttp3/t;->d(Lokhttp3/u;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lokhttp3/t;->a()Lokhttp3/u;

    move-result-object p2

    goto :goto_4

    :cond_13
    move-object p2, v0

    :goto_4
    if-eqz p2, :cond_1b

    iget-object v2, v1, Lokhttp3/e0;->b:Lokhttp3/u;

    iget-object v2, v2, Lokhttp3/u;->b:Ljava/lang/String;

    iget-object v3, p2, Lokhttp3/u;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-boolean p0, p0, Lokhttp3/b0;->i:Z

    if-nez p0, :cond_14

    goto :goto_6

    :cond_14
    new-instance p0, Lokhttp3/d0;

    invoke-direct {p0, v1}, Lokhttp3/d0;-><init>(Lokhttp3/e0;)V

    invoke-static {v4}, Lcom/fasterxml/jackson/annotation/i0;->B(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "PROPFIND"

    invoke-static {v4, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget p1, p1, Lokhttp3/k0;->d:I

    if-nez v3, :cond_15

    if-eq p1, v6, :cond_15

    if-ne p1, v7, :cond_16

    :cond_15
    move v5, v8

    :cond_16
    invoke-static {v4, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v8

    if-eqz v2, :cond_17

    if-eq p1, v6, :cond_17

    if-eq p1, v7, :cond_17

    const-string v4, "GET"

    goto :goto_5

    :cond_17
    if-eqz v5, :cond_18

    iget-object v0, v1, Lokhttp3/e0;->e:Lokhttp3/i0;

    :cond_18
    :goto_5
    invoke-virtual {p0, v4, v0}, Lokhttp3/d0;->c(Ljava/lang/String;Lokhttp3/i0;)V

    if-nez v5, :cond_19

    const-string p1, "Transfer-Encoding"

    iget-object v0, p0, Lokhttp3/d0;->c:Lokhttp3/r;

    invoke-virtual {v0, p1}, Lokhttp3/r;->d(Ljava/lang/String;)V

    const-string p1, "Content-Length"

    iget-object v0, p0, Lokhttp3/d0;->c:Lokhttp3/r;

    invoke-virtual {v0, p1}, Lokhttp3/r;->d(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    iget-object v0, p0, Lokhttp3/d0;->c:Lokhttp3/r;

    invoke-virtual {v0, p1}, Lokhttp3/r;->d(Ljava/lang/String;)V

    :cond_19
    iget-object p1, v1, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-static {p1, p2}, Lac/c;->a(Lokhttp3/u;Lokhttp3/u;)Z

    move-result p1

    if-nez p1, :cond_1a

    const-string p1, "Authorization"

    iget-object v0, p0, Lokhttp3/d0;->c:Lokhttp3/r;

    invoke-virtual {v0, p1}, Lokhttp3/r;->d(Ljava/lang/String;)V

    :cond_1a
    iput-object p2, p0, Lokhttp3/d0;->a:Lokhttp3/u;

    invoke-virtual {p0}, Lokhttp3/d0;->a()Lokhttp3/e0;

    move-result-object v0

    :cond_1b
    :goto_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/io/IOException;Lokhttp3/internal/connection/i;Lokhttp3/e0;Z)Z
    .locals 2

    iget-object p0, p0, Lcc/g;->a:Lokhttp3/b0;

    iget-boolean p0, p0, Lokhttp3/b0;->f:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    if-eqz p4, :cond_4

    iget-object p3, p3, Lokhttp3/e0;->e:Lokhttp3/i0;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lokhttp3/i0;->isOneShot()Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    instance-of p3, p1, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_3

    :cond_2
    move p3, p0

    goto :goto_0

    :cond_3
    move p3, v0

    :goto_0
    if-eqz p3, :cond_4

    return v0

    :cond_4
    instance-of p3, p1, Ljava/net/ProtocolException;

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    if-eqz p3, :cond_6

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_8

    if-nez p4, :cond_8

    goto :goto_2

    :cond_6
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_7

    goto :goto_1

    :cond_7
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_9

    :cond_8
    :goto_1
    move p1, v0

    goto :goto_3

    :cond_9
    :goto_2
    move p1, p0

    :goto_3
    if-nez p1, :cond_a

    return v0

    :cond_a
    iget-object p1, p2, Lokhttp3/internal/connection/i;->f:Lokhttp3/internal/connection/e;

    const/4 p2, 0x0

    if-eqz p1, :cond_15

    iget p3, p1, Lokhttp3/internal/connection/e;->c:I

    if-nez p3, :cond_b

    iget p4, p1, Lokhttp3/internal/connection/e;->d:I

    if-nez p4, :cond_b

    iget p4, p1, Lokhttp3/internal/connection/e;->e:I

    if-nez p4, :cond_b

    move p1, v0

    goto :goto_7

    :cond_b
    iget-object p4, p1, Lokhttp3/internal/connection/e;->f:Lokhttp3/p0;

    if-eqz p4, :cond_c

    goto :goto_6

    :cond_c
    if-gt p3, p0, :cond_10

    iget p3, p1, Lokhttp3/internal/connection/e;->d:I

    if-gt p3, p0, :cond_10

    iget p3, p1, Lokhttp3/internal/connection/e;->e:I

    if-lez p3, :cond_d

    goto :goto_5

    :cond_d
    iget-object p3, p1, Lokhttp3/internal/connection/e;->i:Lokhttp3/internal/connection/i;

    iget-object p3, p3, Lokhttp3/internal/connection/i;->g:Lokhttp3/internal/connection/k;

    if-eqz p3, :cond_10

    monitor-enter p3

    :try_start_0
    iget p4, p3, Lokhttp3/internal/connection/k;->k:I

    if-eqz p4, :cond_e

    goto :goto_4

    :cond_e
    iget-object p4, p3, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;

    iget-object p4, p4, Lokhttp3/p0;->a:Lokhttp3/a;

    iget-object p4, p4, Lokhttp3/a;->a:Lokhttp3/u;

    iget-object v1, p1, Lokhttp3/internal/connection/e;->h:Lokhttp3/a;

    iget-object v1, v1, Lokhttp3/a;->a:Lokhttp3/u;

    invoke-static {p4, v1}, Lac/c;->a(Lokhttp3/u;Lokhttp3/u;)Z

    move-result p4

    if-nez p4, :cond_f

    goto :goto_4

    :cond_f
    iget-object p2, p3, Lokhttp3/internal/connection/k;->q:Lokhttp3/p0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit p3

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p3

    throw p0

    :cond_10
    :goto_5
    if-eqz p2, :cond_11

    iput-object p2, p1, Lokhttp3/internal/connection/e;->f:Lokhttp3/p0;

    goto :goto_6

    :cond_11
    iget-object p2, p1, Lokhttp3/internal/connection/e;->a:Ld/m;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ld/m;->b()Z

    move-result p2

    if-ne p2, p0, :cond_12

    goto :goto_6

    :cond_12
    iget-object p1, p1, Lokhttp3/internal/connection/e;->b:Lokhttp3/internal/connection/n;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lokhttp3/internal/connection/n;->a()Z

    move-result p1

    goto :goto_7

    :cond_13
    :goto_6
    move p1, p0

    :goto_7
    if-nez p1, :cond_14

    return v0

    :cond_14
    return p0

    :cond_15
    invoke-static {}, Li4/f;->M()V

    throw p2
.end method
