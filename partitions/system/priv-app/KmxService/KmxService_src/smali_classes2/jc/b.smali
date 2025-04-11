.class public final Ljc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# instance fields
.field public volatile a:Lkotlin/collections/EmptySet;

.field public volatile b:Lokhttp3/logging/HttpLoggingInterceptor$Level;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object v0, p0, Ljc/b;->a:Lkotlin/collections/EmptySet;

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Ljc/b;->b:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method


# virtual methods
.method public final a(Lcc/f;)Lokhttp3/k0;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljc/b;->b:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iget-object v3, v1, Lcc/f;->f:Lokhttp3/e0;

    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v2, v4, :cond_0

    invoke-virtual {v1, v3}, Lcc/f;->b(Lokhttp3/e0;)Lokhttp3/k0;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    iget-object v5, v3, Lokhttp3/e0;->e:Lokhttp3/i0;

    iget-object v6, v1, Lcc/f;->e:Lokhttp3/internal/connection/d;

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    iget-object v6, v6, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/k;

    goto :goto_3

    :cond_4
    move-object v6, v7

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "--> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lokhttp3/e0;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ""

    if-eqz v6, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lokhttp3/internal/connection/k;->e:Lokhttp3/Protocol;

    if-eqz v6, :cond_5

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    invoke-static {}, Li4/f;->M()V

    throw v7

    :cond_6
    move-object v6, v9

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "-byte body)"

    const-string v10, " ("

    if-nez v2, :cond_7

    if-eqz v5, :cond_7

    invoke-static {v6, v10}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lokhttp3/i0;->contentLength()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_7
    const-string v11, "message"

    invoke-static {v6, v11}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lfc/m;->a:Lfc/m;

    sget-object v12, Lfc/m;->a:Lfc/m;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x4

    invoke-static {v12, v6, v7}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v6, "identity"

    const-string v7, "gzip"

    const-string v12, "Content-Encoding"

    sget-object v13, Ljc/a;->e0:Ll4/e;

    const-string v14, "-byte body omitted)"

    const-string v15, "UTF_8"

    const-wide/16 v16, -0x1

    move/from16 v18, v2

    if-eqz v2, :cond_15

    iget-object v2, v3, Lokhttp3/e0;->d:Lokhttp3/s;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lokhttp3/i0;->contentType()Lokhttp3/w;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object/from16 v19, v14

    const-string v14, "Content-Type"

    invoke-virtual {v2, v14}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v8

    const-string v8, "Content-Type: "

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lfc/m;->a:Lfc/m;

    sget-object v8, Lfc/m;->a:Lfc/m;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x4

    const/4 v14, 0x0

    invoke-static {v8, v1, v14}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    move-object/from16 v20, v8

    goto :goto_5

    :cond_9
    move-object/from16 v20, v8

    move-object/from16 v19, v14

    :goto_5
    invoke-virtual {v5}, Lokhttp3/i0;->contentLength()J

    move-result-wide v21

    cmp-long v1, v21, v16

    if-eqz v1, :cond_b

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "Content-Length: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v14, v9

    invoke-virtual {v5}, Lokhttp3/i0;->contentLength()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lfc/m;->a:Lfc/m;

    sget-object v8, Lfc/m;->a:Lfc/m;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static {v8, v1, v9}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    move-object/from16 v20, v8

    move-object/from16 v19, v14

    :cond_b
    move-object v14, v9

    :goto_6
    iget-object v1, v2, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v1, :cond_c

    invoke-virtual {v0, v2, v8}, Ljc/b;->b(Lokhttp3/s;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    const-string v1, "--> END "

    if-eqz v4, :cond_14

    if-nez v5, :cond_d

    goto/16 :goto_b

    :cond_d
    iget-object v2, v3, Lokhttp3/e0;->d:Lokhttp3/s;

    invoke-virtual {v2, v12}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-static {v2, v6}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {v2, v7}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lokhttp3/e0;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (encoded body omitted)"

    goto :goto_9

    :cond_f
    invoke-virtual {v5}, Lokhttp3/i0;->isDuplex()Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lokhttp3/e0;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (duplex request body omitted)"

    goto :goto_9

    :cond_10
    invoke-virtual {v5}, Lokhttp3/i0;->isOneShot()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lokhttp3/e0;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (one-shot body omitted)"

    :goto_9
    move-object v9, v14

    move-object/from16 v21, v15

    move-object/from16 v5, v19

    move-object/from16 v8, v20

    goto/16 :goto_c

    :cond_11
    new-instance v2, Lkc/e;

    invoke-direct {v2}, Lkc/e;-><init>()V

    invoke-virtual {v5, v2}, Lokhttp3/i0;->writeTo(Lkc/f;)V

    invoke-virtual {v5}, Lokhttp3/i0;->contentType()Lokhttp3/w;

    move-result-object v8

    if-eqz v8, :cond_12

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Lokhttp3/w;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v8

    if-eqz v8, :cond_12

    goto :goto_a

    :cond_12
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v8, v15}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    move-object v9, v14

    invoke-virtual {v13, v9}, Ll4/e;->o(Ljava/lang/String;)V

    invoke-static {v2}, Lfc/e;->E(Lkc/e;)Z

    move-result v14

    move-object/from16 v21, v15

    if-eqz v14, :cond_13

    iget-wide v14, v2, Lkc/e;->b:J

    invoke-virtual {v2, v14, v15, v8}, Lkc/e;->z(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ll4/e;->o(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lokhttp3/e0;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lokhttp3/i0;->contentLength()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v8, v20

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    goto :goto_d

    :cond_13
    move-object/from16 v8, v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lokhttp3/e0;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (binary "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lokhttp3/i0;->contentLength()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_14
    :goto_b
    move-object v9, v14

    move-object/from16 v21, v15

    move-object/from16 v5, v19

    move-object/from16 v8, v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lokhttp3/e0;->c:Ljava/lang/String;

    :goto_c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ll4/e;->o(Ljava/lang/String;)V

    goto :goto_e

    :cond_15
    move-object v5, v14

    move-object/from16 v21, v15

    :goto_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    move-object/from16 v14, p1

    :try_start_0
    invoke-virtual {v14, v3}, Lcc/f;->b(Lokhttp3/e0;)Lokhttp3/k0;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    sub-long v1, v19, v1

    invoke-virtual {v14, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object v14, v3, Lokhttp3/k0;->g:Lokhttp3/o0;

    if-eqz v14, :cond_25

    move-object/from16 v20, v8

    move-object v15, v9

    invoke-virtual {v14}, Lokhttp3/o0;->contentLength()J

    move-result-wide v8

    cmp-long v16, v8, v16

    if-eqz v16, :cond_16

    move-object/from16 p1, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    const-string v13, "-byte"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_f

    :cond_16
    move-object/from16 v16, v13

    move-object/from16 p1, v15

    const-string v13, "unknown-length"

    :goto_f
    new-instance v15, Ljava/lang/StringBuilder;

    move-wide/from16 v22, v8

    const-string v8, "<-- "

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Lokhttp3/k0;->d:I

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lokhttp3/k0;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_17

    const/4 v8, 0x1

    goto :goto_10

    :cond_17
    const/4 v8, 0x0

    :goto_10
    if-eqz v8, :cond_18

    const/16 v8, 0x20

    move-object/from16 v19, v5

    move-object/from16 v5, p1

    goto :goto_11

    :cond_18
    iget-object v8, v3, Lokhttp3/k0;->c:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x20

    move-object/from16 v19, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v8, v17

    :goto_11
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lokhttp3/k0;->a:Lokhttp3/e0;

    iget-object v5, v5, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v18, :cond_19

    const-string v1, ", "

    const-string v2, " body"

    invoke-static {v1, v13, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_19
    move-object/from16 v1, p1

    :goto_12
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lfc/m;->a:Lfc/m;

    sget-object v2, Lfc/m;->a:Lfc/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-static {v2, v1, v5}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v18, :cond_24

    iget-object v1, v3, Lokhttp3/k0;->f:Lokhttp3/s;

    iget-object v2, v1, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v2, :cond_1a

    invoke-virtual {v0, v1, v5}, Ljc/b;->b(Lokhttp3/s;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_1a
    if-eqz v4, :cond_23

    invoke-static {v3}, Lcc/e;->a(Lokhttp3/k0;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_18

    :cond_1b
    iget-object v0, v3, Lokhttp3/k0;->f:Lokhttp3/s;

    invoke-virtual {v0, v12}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0, v6}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v0, v7}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_14

    :cond_1c
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1d

    const-string v0, "<-- END HTTP (encoded body omitted)"

    goto/16 :goto_19

    :cond_1d
    invoke-virtual {v14}, Lokhttp3/o0;->source()Lkc/g;

    move-result-object v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v0, v4, v5}, Lkc/g;->request(J)Z

    invoke-interface {v0}, Lkc/g;->c()Lkc/e;

    move-result-object v0

    invoke-virtual {v1, v12}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-wide v1, v0, Lkc/e;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lkc/k;

    invoke-virtual {v0}, Lkc/e;->b()Lkc/e;

    move-result-object v0

    invoke-direct {v2, v0}, Lkc/k;-><init>(Lkc/t;)V

    :try_start_1
    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    invoke-virtual {v0, v2}, Lkc/e;->F(Lkc/t;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_15

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Li4/f;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_1e
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v14}, Lokhttp3/o0;->contentType()Lokhttp3/w;

    move-result-object v2

    if-eqz v2, :cond_1f

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Lokhttp3/w;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_1f

    goto :goto_16

    :cond_1f
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v4, v21

    invoke-static {v2, v4}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_16
    invoke-static {v0}, Lfc/e;->E(Lkc/e;)Z

    move-result v4

    if-nez v4, :cond_20

    sget-object v1, Lfc/m;->a:Lfc/m;

    sget-object v1, Lfc/m;->a:Lfc/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-static {v1, v4, v2}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<-- END HTTP (binary "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lkc/e;->b:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lfc/m;->a:Lfc/m;

    sget-object v1, Lfc/m;->a:Lfc/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_20
    move-object/from16 v4, p1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmp-long v7, v22, v7

    if-eqz v7, :cond_21

    sget-object v7, Lfc/m;->a:Lfc/m;

    sget-object v7, Lfc/m;->a:Lfc/m;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v4, v6}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lkc/e;->b()Lkc/e;

    move-result-object v4

    iget-wide v5, v4, Lkc/e;->b:J

    invoke-virtual {v4, v5, v6, v2}, Lkc/e;->z(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lfc/m;->a:Lfc/m;

    sget-object v4, Lfc/m;->a:Lfc/m;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "<-- END HTTP ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_22

    iget-wide v4, v0, Lkc/e;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-byte, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "-gzipped-byte body)"

    goto :goto_17

    :cond_22
    iget-wide v0, v0, Lkc/e;->b:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v8, v20

    :goto_17
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_23
    :goto_18
    const-string v0, "<-- END HTTP"

    :goto_19
    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Ll4/e;->o(Ljava/lang/String;)V

    :cond_24
    return-object v3

    :cond_25
    invoke-static {}, Li4/f;->M()V

    const/4 v0, 0x0

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<-- HTTP FAILED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lfc/m;->a:Lfc/m;

    sget-object v2, Lfc/m;->a:Lfc/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Lokhttp3/s;I)V
    .locals 1

    iget-object p0, p0, Ljc/b;->a:Lkotlin/collections/EmptySet;

    invoke-virtual {p1, p2}, Lokhttp3/s;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u2588\u2588"

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lokhttp3/s;->f(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/s;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    invoke-static {p0, p1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lfc/m;->a:Lfc/m;

    sget-object p1, Lfc/m;->a:Lfc/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lfc/m;->g(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
