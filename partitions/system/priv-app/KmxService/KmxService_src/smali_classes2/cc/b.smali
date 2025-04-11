.class public final Lcc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcc/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcc/f;)Lokhttp3/k0;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "call"

    const/4 v2, 0x0

    iget-object v3, v0, Lcc/f;->e:Lokhttp3/internal/connection/d;

    if-eqz v3, :cond_14

    iget-object v4, v3, Lokhttp3/internal/connection/d;->f:Lcc/d;

    iget-object v5, v3, Lokhttp3/internal/connection/d;->d:Le9/a;

    iget-object v6, v3, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/i;

    iget-object v0, v0, Lcc/f;->f:Lokhttp3/e0;

    iget-object v7, v0, Lokhttp3/e0;->e:Lokhttp3/i0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Lcc/d;->b(Lokhttp3/e0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    iget-object v10, v0, Lokhttp3/e0;->c:Ljava/lang/String;

    invoke-static {v10}, Lcom/fasterxml/jackson/annotation/i0;->B(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v13, v3, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/k;

    if-eqz v10, :cond_5

    if-eqz v7, :cond_5

    iget-object v10, v0, Lokhttp3/e0;->d:Lokhttp3/s;

    const-string v14, "Expect"

    invoke-virtual {v10, v14}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "100-continue"

    invoke-static {v14, v10}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    :try_start_1
    invoke-interface {v4}, Lcc/d;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v3, v11}, Lokhttp3/internal/connection/d;->c(Z)Lokhttp3/j0;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    move v14, v12

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lokhttp3/internal/connection/d;->d(Ljava/io/IOException;)V

    throw v2

    :cond_0
    move-object v10, v2

    move v14, v11

    :goto_0
    if-nez v10, :cond_2

    invoke-virtual {v7}, Lokhttp3/i0;->isDuplex()Z

    move-result v15

    if-eqz v15, :cond_1

    :try_start_2
    invoke-interface {v4}, Lcc/d;->c()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v3, v0, v11}, Lokhttp3/internal/connection/d;->b(Lokhttp3/e0;Z)Lokhttp3/internal/connection/b;

    move-result-object v11

    new-instance v15, Lkc/n;

    invoke-direct {v15, v11}, Lkc/n;-><init>(Lkc/r;)V

    invoke-virtual {v7, v15}, Lokhttp3/i0;->writeTo(Lkc/f;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lokhttp3/internal/connection/d;->d(Ljava/io/IOException;)V

    throw v2

    :cond_1
    invoke-virtual {v3, v0, v12}, Lokhttp3/internal/connection/d;->b(Lokhttp3/e0;Z)Lokhttp3/internal/connection/b;

    move-result-object v11

    new-instance v15, Lkc/n;

    invoke-direct {v15, v11}, Lkc/n;-><init>(Lkc/r;)V

    invoke-virtual {v7, v15}, Lokhttp3/i0;->writeTo(Lkc/f;)V

    invoke-virtual {v15}, Lkc/n;->close()V

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v3, v11, v12, v2}, Lokhttp3/internal/connection/i;->g(Lokhttp3/internal/connection/d;ZZLjava/io/IOException;)Ljava/io/IOException;

    iget-object v15, v13, Lokhttp3/internal/connection/k;->f:Lec/t;

    if-eqz v15, :cond_3

    goto :goto_1

    :cond_3
    move v11, v12

    :goto_1
    if-nez v11, :cond_4

    invoke-interface {v4}, Lcc/d;->h()Lokhttp3/internal/connection/k;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/internal/connection/k;->k()V

    :cond_4
    :goto_2
    move v11, v14

    goto :goto_3

    :cond_5
    invoke-virtual {v6, v3, v11, v12, v2}, Lokhttp3/internal/connection/i;->g(Lokhttp3/internal/connection/d;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-object v10, v2

    :goto_3
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lokhttp3/i0;->isDuplex()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    :try_start_3
    invoke-interface {v4}, Lcc/d;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    if-nez v10, :cond_9

    invoke-virtual {v3, v12}, Lokhttp3/internal/connection/d;->c(Z)Lokhttp3/j0;

    move-result-object v10

    if-eqz v10, :cond_8

    if-eqz v11, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    move v11, v12

    goto :goto_4

    :cond_8
    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_9
    :goto_4
    iput-object v0, v10, Lokhttp3/j0;->a:Lokhttp3/e0;

    iget-object v7, v13, Lokhttp3/internal/connection/k;->d:Lokhttp3/q;

    iput-object v7, v10, Lokhttp3/j0;->e:Lokhttp3/q;

    iput-wide v8, v10, Lokhttp3/j0;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v10, Lokhttp3/j0;->l:J

    invoke-virtual {v10}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v7

    const/16 v10, 0x64

    iget v14, v7, Lokhttp3/k0;->d:I

    if-ne v14, v10, :cond_c

    invoke-virtual {v3, v12}, Lokhttp3/internal/connection/d;->c(Z)Lokhttp3/j0;

    move-result-object v7

    if-eqz v7, :cond_b

    if-eqz v11, :cond_a

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    iput-object v0, v7, Lokhttp3/j0;->a:Lokhttp3/e0;

    iget-object v0, v13, Lokhttp3/internal/connection/k;->d:Lokhttp3/q;

    iput-object v0, v7, Lokhttp3/j0;->e:Lokhttp3/q;

    iput-wide v8, v7, Lokhttp3/j0;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lokhttp3/j0;->l:J

    invoke-virtual {v7}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v7

    iget v14, v7, Lokhttp3/k0;->d:I

    goto :goto_5

    :cond_b
    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_c
    :goto_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcc/b;->a:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x65

    if-ne v14, v0, :cond_d

    new-instance v0, Lokhttp3/j0;

    invoke-direct {v0, v7}, Lokhttp3/j0;-><init>(Lokhttp3/k0;)V

    sget-object v1, Lac/c;->c:Lokhttp3/m0;

    iput-object v1, v0, Lokhttp3/j0;->g:Lokhttp3/o0;

    goto :goto_6

    :cond_d
    new-instance v0, Lokhttp3/j0;

    invoke-direct {v0, v7}, Lokhttp3/j0;-><init>(Lokhttp3/k0;)V

    :try_start_4
    const-string v1, "Content-Type"

    invoke-static {v7, v1}, Lokhttp3/k0;->a(Lokhttp3/k0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v7}, Lcc/d;->d(Lokhttp3/k0;)J

    move-result-wide v5

    invoke-interface {v4, v7}, Lcc/d;->e(Lokhttp3/k0;)Lkc/t;

    move-result-object v7

    new-instance v8, Lokhttp3/internal/connection/c;

    invoke-direct {v8, v3, v7, v5, v6}, Lokhttp3/internal/connection/c;-><init>(Lokhttp3/internal/connection/d;Lkc/t;J)V

    new-instance v7, Lokhttp3/m0;

    new-instance v9, Lkc/o;

    invoke-direct {v9, v8}, Lkc/o;-><init>(Lkc/t;)V

    invoke-direct {v7, v1, v5, v6, v9}, Lokhttp3/m0;-><init>(Ljava/lang/String;JLkc/o;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    iput-object v7, v0, Lokhttp3/j0;->g:Lokhttp3/o0;

    :goto_6
    invoke-virtual {v0}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v0

    iget-object v1, v0, Lokhttp3/k0;->a:Lokhttp3/e0;

    iget-object v1, v1, Lokhttp3/e0;->d:Lokhttp3/s;

    const-string v3, "Connection"

    invoke-virtual {v1, v3}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "close"

    invoke-static {v5, v1}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0, v3}, Lokhttp3/k0;->a(Lokhttp3/k0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    invoke-interface {v4}, Lcc/d;->h()Lokhttp3/internal/connection/k;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/k;->k()V

    :cond_f
    const/16 v1, 0xcc

    if-eq v14, v1, :cond_10

    const/16 v1, 0xcd

    if-ne v14, v1, :cond_13

    :cond_10
    iget-object v1, v0, Lokhttp3/k0;->g:Lokhttp3/o0;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lokhttp3/o0;->contentLength()J

    move-result-wide v3

    goto :goto_7

    :cond_11
    const-wide/16 v3, -0x1

    :goto_7
    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_13

    new-instance v0, Ljava/net/ProtocolException;

    const-string v3, "HTTP "

    const-string v4, " had non-zero Content-Length: "

    invoke-static {v3, v14, v4}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lokhttp3/o0;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_12
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual {v3, v0}, Lokhttp3/internal/connection/d;->d(Ljava/io/IOException;)V

    throw v0

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lokhttp3/internal/connection/d;->d(Ljava/io/IOException;)V

    throw v2

    :catch_4
    move-exception v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lokhttp3/internal/connection/d;->d(Ljava/io/IOException;)V

    throw v0

    :cond_14
    invoke-static {}, Li4/f;->M()V

    throw v2
.end method
