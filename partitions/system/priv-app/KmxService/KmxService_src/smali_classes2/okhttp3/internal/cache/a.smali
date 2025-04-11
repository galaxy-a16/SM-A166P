.class public final Lokhttp3/internal/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll4/e;

    invoke-direct {v0}, Ll4/e;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcc/f;)Lokhttp3/k0;
    .locals 17

    move-object/from16 v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, v0, Lcc/f;->f:Lokhttp3/e0;

    const-string v2, "request"

    invoke-static {v1, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lokhttp3/internal/cache/b;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lokhttp3/internal/cache/b;-><init>(Lokhttp3/e0;Lokhttp3/k0;)V

    iget-object v4, v1, Lokhttp3/e0;->a:Lokhttp3/c;

    if-nez v4, :cond_0

    sget v4, Lokhttp3/c;->n:I

    iget-object v4, v1, Lokhttp3/e0;->d:Lokhttp3/s;

    invoke-static {v4}, Lokhttp3/p;->g(Lokhttp3/s;)Lokhttp3/c;

    move-result-object v4

    iput-object v4, v1, Lokhttp3/e0;->a:Lokhttp3/c;

    :cond_0
    iget-boolean v4, v4, Lokhttp3/c;->j:Z

    if-eqz v4, :cond_1

    new-instance v2, Lokhttp3/internal/cache/b;

    invoke-direct {v2, v3, v3}, Lokhttp3/internal/cache/b;-><init>(Lokhttp3/e0;Lokhttp3/k0;)V

    :cond_1
    iget-object v4, v0, Lcc/f;->b:Lokhttp3/internal/connection/i;

    instance-of v5, v4, Lokhttp3/internal/connection/i;

    if-nez v5, :cond_2

    move-object v5, v3

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_3

    iget-object v5, v5, Lokhttp3/internal/connection/i;->b:Le9/a;

    :cond_3
    const-string v5, "call"

    iget-object v6, v2, Lokhttp3/internal/cache/b;->a:Lokhttp3/e0;

    iget-object v2, v2, Lokhttp3/internal/cache/b;->b:Lokhttp3/k0;

    if-nez v6, :cond_4

    if-nez v2, :cond_4

    new-instance v0, Lokhttp3/j0;

    invoke-direct {v0}, Lokhttp3/j0;-><init>()V

    iput-object v1, v0, Lokhttp3/j0;->a:Lokhttp3/e0;

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Lokhttp3/j0;->d(Lokhttp3/Protocol;)V

    const/16 v1, 0x1f8

    iput v1, v0, Lokhttp3/j0;->c:I

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    iput-object v1, v0, Lokhttp3/j0;->d:Ljava/lang/String;

    sget-object v1, Lac/c;->c:Lokhttp3/m0;

    iput-object v1, v0, Lokhttp3/j0;->g:Lokhttp3/o0;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lokhttp3/j0;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lokhttp3/j0;->l:J

    invoke-virtual {v0}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v0

    invoke-static {v4, v5}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string v1, "cacheResponse"

    if-nez v6, :cond_6

    if-eqz v2, :cond_5

    new-instance v0, Lokhttp3/j0;

    invoke-direct {v0, v2}, Lokhttp3/j0;-><init>(Lokhttp3/k0;)V

    invoke-static {v2}, Ll4/e;->a(Lokhttp3/k0;)Lokhttp3/k0;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/j0;->b(Ljava/lang/String;Lokhttp3/k0;)V

    iput-object v2, v0, Lokhttp3/j0;->i:Lokhttp3/k0;

    invoke-virtual {v0}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v0

    invoke-static {v4, v5}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_5
    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {v4, v5}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v6}, Lcc/f;->b(Lokhttp3/e0;)Lokhttp3/k0;

    move-result-object v0

    const-string v4, "networkResponse"

    if-eqz v2, :cond_15

    const/16 v5, 0x130

    iget v6, v0, Lokhttp3/k0;->d:I

    if-ne v6, v5, :cond_14

    new-instance v5, Lokhttp3/j0;

    invoke-direct {v5, v2}, Lokhttp3/j0;-><init>(Lokhttp3/k0;)V

    new-instance v6, Lokhttp3/r;

    invoke-direct {v6}, Lokhttp3/r;-><init>()V

    iget-object v7, v2, Lokhttp3/k0;->f:Lokhttp3/s;

    iget-object v8, v7, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    const/4 v10, 0x0

    :goto_1
    const-string v11, "Content-Type"

    const-string v12, "Content-Encoding"

    const-string v13, "Content-Length"

    iget-object v15, v0, Lokhttp3/k0;->f:Lokhttp3/s;

    if-ge v10, v8, :cond_e

    invoke-virtual {v7, v10}, Lokhttp3/s;->c(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v10}, Lokhttp3/s;->f(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "Warning"

    invoke-static {v9, v14}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "1"

    move-object/from16 v16, v7

    const/4 v7, 0x0

    invoke-static {v3, v9, v7}, Lkotlin/text/r;->N(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_8
    move-object/from16 v16, v7

    const/4 v7, 0x0

    :cond_9
    invoke-static {v13, v14}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v12, v14}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v11, v14}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_2

    :cond_a
    move v9, v7

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v9, 0x1

    :goto_3
    if-nez v9, :cond_c

    invoke-static {v14}, Ll4/e;->n(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v15, v14}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_d

    :cond_c
    invoke-virtual {v6, v14, v3}, Lokhttp3/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v16

    const/4 v3, 0x0

    goto :goto_1

    :cond_e
    const/4 v7, 0x0

    iget-object v3, v15, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    move v8, v7

    :goto_5
    if-ge v8, v3, :cond_12

    invoke-virtual {v15, v8}, Lokhttp3/s;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    invoke-static {v12, v9}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    invoke-static {v11, v9}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    goto :goto_6

    :cond_f
    move v10, v7

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v10, 0x1

    :goto_7
    if-nez v10, :cond_11

    invoke-static {v9}, Ll4/e;->n(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v15, v8}, Lokhttp3/s;->f(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lokhttp3/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_12
    invoke-virtual {v6}, Lokhttp3/r;->c()Lokhttp3/s;

    move-result-object v3

    invoke-virtual {v5, v3}, Lokhttp3/j0;->c(Lokhttp3/s;)V

    iget-wide v6, v0, Lokhttp3/k0;->k:J

    iput-wide v6, v5, Lokhttp3/j0;->k:J

    iget-wide v6, v0, Lokhttp3/k0;->l:J

    iput-wide v6, v5, Lokhttp3/j0;->l:J

    invoke-static {v2}, Ll4/e;->a(Lokhttp3/k0;)Lokhttp3/k0;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/j0;->b(Ljava/lang/String;Lokhttp3/k0;)V

    iput-object v2, v5, Lokhttp3/j0;->i:Lokhttp3/k0;

    invoke-static {v0}, Ll4/e;->a(Lokhttp3/k0;)Lokhttp3/k0;

    move-result-object v1

    invoke-static {v4, v1}, Lokhttp3/j0;->b(Ljava/lang/String;Lokhttp3/k0;)V

    iput-object v1, v5, Lokhttp3/j0;->h:Lokhttp3/k0;

    invoke-virtual {v5}, Lokhttp3/j0;->a()Lokhttp3/k0;

    iget-object v0, v0, Lokhttp3/k0;->g:Lokhttp3/o0;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lokhttp3/o0;->close()V

    invoke-static {}, Li4/f;->M()V

    const/4 v0, 0x0

    throw v0

    :cond_13
    const/4 v0, 0x0

    invoke-static {}, Li4/f;->M()V

    throw v0

    :cond_14
    iget-object v3, v2, Lokhttp3/k0;->g:Lokhttp3/o0;

    if-eqz v3, :cond_15

    invoke-static {v3}, Lac/c;->b(Ljava/io/Closeable;)V

    :cond_15
    new-instance v3, Lokhttp3/j0;

    invoke-direct {v3, v0}, Lokhttp3/j0;-><init>(Lokhttp3/k0;)V

    invoke-static {v2}, Ll4/e;->a(Lokhttp3/k0;)Lokhttp3/k0;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/j0;->b(Ljava/lang/String;Lokhttp3/k0;)V

    iput-object v2, v3, Lokhttp3/j0;->i:Lokhttp3/k0;

    invoke-static {v0}, Ll4/e;->a(Lokhttp3/k0;)Lokhttp3/k0;

    move-result-object v0

    invoke-static {v4, v0}, Lokhttp3/j0;->b(Ljava/lang/String;Lokhttp3/k0;)V

    iput-object v0, v3, Lokhttp3/j0;->h:Lokhttp3/k0;

    invoke-virtual {v3}, Lokhttp3/j0;->a()Lokhttp3/k0;

    move-result-object v0

    return-object v0
.end method
