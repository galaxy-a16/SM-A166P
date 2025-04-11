.class public abstract Lcc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokio/ByteString;->Companion:Lkc/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\"\\"

    invoke-static {v0}, Lkc/h;->b(Ljava/lang/String;)Lokio/ByteString;

    const-string v0, "\t ,="

    invoke-static {v0}, Lkc/h;->b(Ljava/lang/String;)Lokio/ByteString;

    return-void
.end method

.method public static final a(Lokhttp3/k0;)Z
    .locals 7

    iget-object v0, p0, Lokhttp3/k0;->a:Lokhttp3/e0;

    iget-object v0, v0, Lokhttp3/e0;->c:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-static {v0, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x64

    const/4 v2, 0x1

    iget v3, p0, Lokhttp3/k0;->d:I

    if-lt v3, v0, :cond_1

    const/16 v0, 0xc8

    if-lt v3, v0, :cond_2

    :cond_1
    const/16 v0, 0xcc

    if-eq v3, v0, :cond_2

    const/16 v0, 0x130

    if-eq v3, v0, :cond_2

    return v2

    :cond_2
    invoke-static {p0}, Lac/c;->i(Lokhttp3/k0;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    const-string v0, "Transfer-Encoding"

    invoke-static {p0, v0}, Lokhttp3/k0;->a(Lokhttp3/k0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-static {v0, p0}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public static final b(Lokhttp3/l;Lokhttp3/u;Lokhttp3/s;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$this$receiveHeaders"

    invoke-static {v0, v3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {v1, v3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "headers"

    invoke-static {v2, v3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lokhttp3/l;->j0:Ll4/e;

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    sget-object v0, Lokhttp3/k;->j:Ljava/util/regex/Pattern;

    iget-object v0, v2, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v3, 0x2

    div-int/2addr v0, v3

    const/4 v4, 0x0

    move v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v0, :cond_3

    invoke-virtual {v2, v6}, Lokhttp3/s;->c(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Set-Cookie"

    invoke-static {v9, v8}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-virtual {v2, v6}, Lokhttp3/s;->f(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v2, "Collections.unmodifiableList(result)"

    invoke-static {v0, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_1
    move-object v2, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v6, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v3, :cond_26

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const-string v0, "setCookie"

    invoke-static {v8, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v0, Lac/c;->a:[B

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v11, 0x3b

    invoke-static {v8, v11, v4, v0}, Lac/c;->e(Ljava/lang/String;CII)I

    move-result v0

    const/16 v12, 0x3d

    invoke-static {v8, v12, v4, v0}, Lac/c;->e(Ljava/lang/String;CII)I

    move-result v13

    if-ne v13, v0, :cond_6

    :cond_5
    :goto_3
    move-object/from16 v34, v2

    move v5, v4

    goto/16 :goto_10

    :cond_6
    invoke-static {v4, v13, v8}, Lac/c;->w(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v16, 0x1

    if-nez v14, :cond_7

    move/from16 v14, v16

    goto :goto_4

    :cond_7
    move v14, v4

    :goto_4
    if-nez v14, :cond_5

    invoke-static {v15}, Lac/c;->k(Ljava/lang/String;)I

    move-result v14

    const/4 v5, -0x1

    if-eq v14, v5, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v13, v13, 0x1

    invoke-static {v13, v0, v8}, Lac/c;->w(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lac/c;->k(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v5, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const-wide v17, 0xe677d21fdbffL

    const-wide/16 v19, -0x1

    move/from16 v21, v4

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v16

    move-wide/from16 v27, v17

    move-wide/from16 v25, v19

    const/4 v14, 0x0

    const/16 v29, 0x0

    :goto_5
    const-wide v30, 0x7fffffffffffffffL

    const-wide/high16 v32, -0x8000000000000000L

    if-ge v0, v5, :cond_16

    invoke-static {v8, v11, v0, v5}, Lac/c;->e(Ljava/lang/String;CII)I

    move-result v4

    invoke-static {v8, v12, v0, v4}, Lac/c;->e(Ljava/lang/String;CII)I

    move-result v11

    invoke-static {v0, v11, v8}, Lac/c;->w(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ge v11, v4, :cond_a

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11, v4, v8}, Lac/c;->w(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_a
    const-string v11, ""

    :goto_6
    const-string v12, "expires"

    invoke-static {v0, v12}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v11}, Lokhttp3/p;->h(ILjava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v34, v2

    move-wide/from16 v27, v11

    goto :goto_8

    :catch_0
    move-object/from16 v34, v2

    goto/16 :goto_9

    :cond_b
    const-string v12, "max-age"

    invoke-static {v0, v12}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    :try_start_1
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v25, 0x0

    cmp-long v0, v11, v25

    if-gtz v0, :cond_c

    goto :goto_7

    :cond_c
    move-wide/from16 v32, v11

    :goto_7
    move-object/from16 v34, v2

    move-wide/from16 v25, v32

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v12, v0

    :try_start_2
    new-instance v0, Lkotlin/text/Regex;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v34, v2

    :try_start_3
    const-string v2, "-?\\d+"

    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "-"

    const/4 v2, 0x0

    invoke-static {v11, v0, v2}, Lkotlin/text/r;->N(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    move-wide/from16 v30, v32

    :cond_d
    move-wide/from16 v25, v30

    :goto_8
    move/from16 v23, v16

    goto :goto_9

    :cond_e
    throw v12
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_f
    move-object/from16 v34, v2

    const-string v2, "domain"

    invoke-static {v0, v2}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :try_start_4
    const-string v0, "."

    invoke-static {v11, v0}, Lkotlin/text/r;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    invoke-static {v0, v11}, Lkotlin/text/s;->a0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li4/g;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    move-object v14, v0

    const/16 v24, 0x0

    goto :goto_9

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_12
    const-string v2, "path"

    invoke-static {v0, v2}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v29, v11

    goto :goto_9

    :cond_13
    const-string v2, "secure"

    invoke-static {v0, v2}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move/from16 v21, v16

    goto :goto_9

    :cond_14
    const-string v2, "httponly"

    invoke-static {v0, v2}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move/from16 v22, v16

    :catch_2
    :cond_15
    :goto_9
    add-int/lit8 v0, v4, 0x1

    move-object/from16 v2, v34

    const/4 v4, 0x0

    const/16 v11, 0x3b

    const/16 v12, 0x3d

    goto/16 :goto_5

    :cond_16
    move-object/from16 v34, v2

    cmp-long v0, v25, v32

    if-nez v0, :cond_17

    move-wide/from16 v17, v32

    goto :goto_a

    :cond_17
    cmp-long v0, v25, v19

    if-eqz v0, :cond_1a

    const-wide v4, 0x20c49ba5e353f7L

    cmp-long v0, v25, v4

    if-gtz v0, :cond_18

    const/16 v0, 0x3e8

    int-to-long v4, v0

    mul-long v30, v25, v4

    :cond_18
    add-long v30, v9, v30

    cmp-long v0, v30, v9

    if-ltz v0, :cond_1b

    cmp-long v0, v30, v17

    if-lez v0, :cond_19

    goto :goto_a

    :cond_19
    move-wide/from16 v17, v30

    goto :goto_a

    :cond_1a
    move-wide/from16 v17, v27

    :cond_1b
    :goto_a
    iget-object v0, v1, Lokhttp3/u;->e:Ljava/lang/String;

    if-nez v14, :cond_1c

    move-object v2, v0

    goto :goto_c

    :cond_1c
    invoke-static {v0, v14}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_b

    :cond_1d
    invoke-static {v0, v14}, Lkotlin/text/r;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_1e

    sget-object v2, Lac/c;->f:Lkotlin/text/Regex;

    invoke-virtual {v2, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_b

    :cond_1e
    const/16 v16, 0x0

    :goto_b
    if-nez v16, :cond_1f

    goto :goto_d

    :cond_1f
    move-object v2, v14

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_20

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v0, v2}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    :goto_d
    const/4 v5, 0x0

    goto :goto_10

    :cond_20
    const-string v0, "/"

    move-object/from16 v4, v29

    const/4 v5, 0x0

    if-eqz v4, :cond_22

    invoke-static {v4, v0, v5}, Lkotlin/text/r;->N(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_21

    goto :goto_e

    :cond_21
    move-object/from16 v20, v4

    goto :goto_f

    :cond_22
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lokhttp3/u;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x2f

    const/4 v9, 0x6

    invoke-static {v4, v8, v5, v9}, Lkotlin/text/s;->W(Ljava/lang/CharSequence;CII)I

    move-result v8

    if-eqz v8, :cond_23

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v4}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_23
    move-object/from16 v20, v0

    :goto_f
    new-instance v0, Lokhttp3/k;

    move-object v14, v0

    move-object/from16 v16, v13

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v24}, Lokhttp3/k;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_11

    :goto_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_25

    if-nez v7, :cond_24

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    :cond_24
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    move-object/from16 v2, v34

    goto/16 :goto_2

    :cond_26
    if-eqz v7, :cond_27

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Collections.unmodifiableList(cookies)"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12

    :cond_27
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    return-void
.end method
