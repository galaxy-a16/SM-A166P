.class public final Lokhttp3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lokhttp3/t;->b:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/t;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lokhttp3/t;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lokhttp3/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/u;
    .locals 14

    iget-object v1, p0, Lokhttp3/t;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lokhttp3/t;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v0, v2, v2, v2, v3}, Lh5/d;->v(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lokhttp3/t;->c:Ljava/lang/String;

    invoke-static {v0, v2, v2, v2, v3}, Lh5/d;->v(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/t;->d:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lokhttp3/t;->b()I

    move-result v7

    iget-object v0, p0, Lokhttp3/t;->f:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v9, v0}, Lkotlin/collections/o;->P0(ILjava/lang/Iterable;)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, v2, v2, v2, v3}, Lh5/d;->v(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v9, v0}, Lkotlin/collections/o;->P0(ILjava/lang/Iterable;)I

    move-result v9

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_1

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-static {v9, v2, v2, v12, v13}, Lh5/d;->v(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_1
    move-object v9, v10

    :goto_2
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v11, v10

    :cond_3
    iget-object v0, p0, Lokhttp3/t;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0, v2, v2, v2, v3}, Lh5/d;->v(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :cond_4
    invoke-virtual {p0}, Lokhttp3/t;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance p0, Lokhttp3/u;

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move-object v6, v8

    move-object v7, v11

    move-object v8, v10

    invoke-direct/range {v0 .. v9}, Lokhttp3/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "host == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "scheme == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()I
    .locals 3

    iget v0, p0, Lokhttp3/t;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lokhttp3/t;->a:Ljava/lang/String;

    if-eqz p0, :cond_4

    const-string v0, "scheme"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, 0x310888    # 4.503E-39f

    if-eq v0, v2, :cond_2

    const v2, 0x5f008eb

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x1bb

    goto :goto_0

    :cond_2
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x50

    :goto_0
    move v0, p0

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    return v0

    :cond_4
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xd3

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh5/d;->A(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public final d(Lokhttp3/u;Ljava/lang/String;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    const-string v2, "input"

    invoke-static {v10, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lac/c;->a:[B

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v11, 0x0

    invoke-static {v11, v2, v10}, Lac/c;->l(IILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v10}, Lac/c;->m(IILjava/lang/String;)I

    move-result v12

    sub-int v3, v12, v2

    const/4 v4, 0x2

    const/16 v13, 0x3a

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-ge v3, v4, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5a

    const/16 v6, 0x7a

    const/16 v7, 0x41

    const/16 v8, 0x61

    if-lt v3, v8, :cond_1

    if-le v3, v6, :cond_2

    :cond_1
    if-lt v3, v7, :cond_c

    if-le v3, v5, :cond_2

    goto :goto_5

    :cond_2
    move v3, v2

    :goto_0
    add-int/2addr v3, v15

    if-ge v3, v12, :cond_c

    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-le v8, v9, :cond_3

    goto :goto_1

    :cond_3
    if-lt v6, v9, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    if-le v7, v9, :cond_5

    goto :goto_2

    :cond_5
    if-lt v5, v9, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    const/16 v5, 0x30

    if-le v5, v9, :cond_7

    goto :goto_3

    :cond_7
    const/16 v5, 0x39

    if-lt v5, v9, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v5, 0x2b

    if-ne v9, v5, :cond_9

    goto :goto_4

    :cond_9
    const/16 v5, 0x2d

    if-ne v9, v5, :cond_a

    goto :goto_4

    :cond_a
    const/16 v5, 0x2e

    if-ne v9, v5, :cond_b

    :goto_4
    const/16 v5, 0x5a

    goto :goto_0

    :cond_b
    if-ne v9, v13, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    move v3, v14

    :goto_6
    const-string v9, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v3, v14, :cond_f

    const-string v5, "https:"

    invoke-static {v10, v5, v2, v15}, Lkotlin/text/r;->M(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v3, "https"

    iput-object v3, v0, Lokhttp3/t;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x6

    goto :goto_7

    :cond_d
    const-string v5, "http:"

    invoke-static {v10, v5, v2, v15}, Lkotlin/text/r;->M(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v3, "http"

    iput-object v3, v0, Lokhttp3/t;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x5

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-eqz v1, :cond_3b

    iget-object v3, v1, Lokhttp3/u;->b:Ljava/lang/String;

    iput-object v3, v0, Lokhttp3/t;->a:Ljava/lang/String;

    :goto_7
    move v3, v2

    move v5, v11

    :goto_8
    const/16 v8, 0x5c

    const/16 v7, 0x2f

    if-ge v3, v12, :cond_11

    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_10

    if-ne v6, v7, :cond_11

    :cond_10
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_11
    iget-object v6, v0, Lokhttp3/t;->f:Ljava/util/ArrayList;

    const/16 v3, 0x3f

    const/16 v11, 0x23

    if-ge v5, v4, :cond_15

    if-eqz v1, :cond_15

    iget-object v4, v0, Lokhttp3/t;->a:Ljava/lang/String;

    iget-object v13, v1, Lokhttp3/u;->b:Ljava/lang/String;

    invoke-static {v13, v4}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v15

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lokhttp3/u;->e()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lokhttp3/t;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/u;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lokhttp3/t;->c:Ljava/lang/String;

    iget-object v4, v1, Lokhttp3/u;->e:Ljava/lang/String;

    iput-object v4, v0, Lokhttp3/t;->d:Ljava/lang/String;

    iget v4, v1, Lokhttp3/u;->f:I

    iput v4, v0, Lokhttp3/t;->e:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Lokhttp3/u;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v2, v12, :cond_13

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v11, :cond_14

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lokhttp3/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/t;->c(Ljava/lang/String;)V

    :cond_14
    move-object/from16 v21, v6

    const/4 v11, 0x0

    goto/16 :goto_16

    :cond_15
    :goto_9
    add-int/2addr v2, v5

    move v13, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_a
    const-string v1, "@/\\?#"

    invoke-static {v13, v12, v10, v1}, Lac/c;->d(IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_16

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b

    :cond_16
    move v1, v14

    :goto_b
    if-eq v1, v14, :cond_1b

    if-eq v1, v11, :cond_1b

    if-eq v1, v7, :cond_1b

    if-eq v1, v8, :cond_1b

    if-eq v1, v3, :cond_1b

    const/16 v2, 0x40

    if-eq v1, v2, :cond_17

    move v11, v3

    move-object/from16 v21, v6

    move-object/from16 v26, v9

    goto/16 :goto_d

    :cond_17
    const-string v4, "%40"

    if-nez v18, :cond_1a

    const/16 v1, 0x3a

    invoke-static {v10, v1, v13, v5}, Lac/c;->e(Ljava/lang/String;CII)I

    move-result v2

    const-string v20, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xf0

    move-object/from16 v1, p2

    move/from16 p1, v2

    move v2, v13

    move v13, v3

    move/from16 v3, p1

    move-object v11, v4

    move-object/from16 v4, v20

    move v14, v5

    move/from16 v5, v21

    move-object/from16 v21, v6

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v26, v9

    move/from16 v9, v25

    invoke-static/range {v1 .. v9}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    if-eqz v19, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lokhttp3/t;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_18
    iput-object v1, v0, Lokhttp3/t;->b:Ljava/lang/String;

    move/from16 v1, p1

    if-eq v1, v14, :cond_19

    add-int/lit8 v2, v1, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf0

    move-object/from16 v1, p2

    move v3, v14

    invoke-static/range {v1 .. v9}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/t;->c:Ljava/lang/String;

    move/from16 v18, v15

    :cond_19
    move v11, v13

    move/from16 v19, v15

    goto :goto_c

    :cond_1a
    move-object v11, v4

    move v14, v5

    move-object/from16 v21, v6

    move-object/from16 v26, v9

    move v9, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lokhttp3/t;->c:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v22, 0xf0

    move-object/from16 v1, p2

    move v2, v13

    move v3, v14

    move-object v13, v8

    move v8, v11

    move v11, v9

    move/from16 v9, v22

    invoke-static/range {v1 .. v9}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/t;->c:Ljava/lang/String;

    :goto_c
    add-int/lit8 v13, v14, 0x1

    :goto_d
    move v3, v11

    move-object/from16 v6, v21

    move-object/from16 v9, v26

    const/16 v7, 0x2f

    const/16 v8, 0x5c

    const/16 v11, 0x23

    const/4 v14, -0x1

    goto/16 :goto_a

    :cond_1b
    move v11, v3

    move v14, v5

    move-object/from16 v21, v6

    move-object/from16 v26, v9

    move v5, v13

    :goto_e
    if-ge v5, v14, :cond_1f

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1e

    const/16 v3, 0x5b

    if-eq v1, v3, :cond_1c

    goto :goto_f

    :cond_1c
    add-int/2addr v5, v15

    if-ge v5, v14, :cond_1d

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_1c

    :cond_1d
    :goto_f
    add-int/2addr v5, v15

    goto :goto_e

    :cond_1e
    move v9, v5

    goto :goto_10

    :cond_1f
    move v9, v14

    :goto_10
    add-int/lit8 v8, v9, 0x1

    const/16 v7, 0x22

    const/4 v1, 0x4

    if-ge v8, v14, :cond_24

    const/4 v2, 0x0

    invoke-static {v10, v13, v9, v2, v1}, Lh5/d;->v(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li4/g;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/t;->d:Ljava/lang/String;

    :try_start_0
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xf8

    move-object/from16 v1, p2

    move v2, v8

    move v3, v14

    move v11, v7

    move/from16 v7, v17

    move v11, v8

    move/from16 v8, v18

    move/from16 v27, v9

    move/from16 v9, v19

    :try_start_1
    invoke-static/range {v1 .. v9}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-le v15, v1, :cond_20

    goto :goto_11

    :cond_20
    const v2, 0xffff

    if-lt v2, v1, :cond_21

    goto :goto_12

    :catch_0
    move v11, v8

    move/from16 v27, v9

    :catch_1
    :cond_21
    :goto_11
    const/4 v1, -0x1

    :goto_12
    iput v1, v0, Lokhttp3/t;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    move v2, v15

    goto :goto_13

    :cond_22
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_23

    move-object/from16 v2, v26

    move/from16 v5, v27

    const/4 v11, 0x0

    goto :goto_14

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid URL port: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v26

    invoke-static {v1, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    move v5, v9

    move-object/from16 v2, v26

    const/4 v11, 0x0

    invoke-static {v10, v13, v5, v11, v1}, Lh5/d;->v(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li4/g;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/t;->d:Ljava/lang/String;

    iget-object v1, v0, Lokhttp3/t;->a:Ljava/lang/String;

    if-eqz v1, :cond_3a

    invoke-static {v1}, Lh5/d;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lokhttp3/t;->e:I

    :goto_14
    iget-object v1, v0, Lokhttp3/t;->d:Ljava/lang/String;

    if-eqz v1, :cond_25

    move v1, v15

    goto :goto_15

    :cond_25
    move v1, v11

    :goto_15
    if-eqz v1, :cond_39

    move v2, v14

    :goto_16
    const-string v1, "?#"

    invoke-static {v2, v12, v10, v1}, Lac/c;->d(IILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-ne v2, v13, :cond_26

    goto/16 :goto_22

    :cond_26
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v14, ""

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_28

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_27

    goto :goto_17

    :cond_27
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v15

    move-object/from16 v9, v21

    invoke-virtual {v9, v1, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_28
    :goto_17
    move-object/from16 v9, v21

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    :goto_18
    if-ge v2, v13, :cond_36

    const-string v1, "/\\"

    invoke-static {v2, v13, v10, v1}, Lac/c;->d(IILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ge v8, v13, :cond_29

    move/from16 v16, v15

    goto :goto_19

    :cond_29
    move/from16 v16, v11

    :goto_19
    const/4 v5, 0x1

    const-string v4, " \"<>^`{}|/\\?#"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xf0

    move-object/from16 v1, p2

    move v3, v8

    move/from16 v19, v8

    move/from16 v8, v17

    move-object/from16 v21, v9

    move/from16 v9, v18

    invoke-static/range {v1 .. v9}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-static {v1, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "%2e"

    invoke-static {v1, v2}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_1a

    :cond_2a
    move v2, v11

    goto :goto_1b

    :cond_2b
    :goto_1a
    move v2, v15

    :goto_1b
    if-eqz v2, :cond_2c

    move-object/from16 v2, v21

    goto/16 :goto_21

    :cond_2c
    const-string v2, ".."

    invoke-static {v1, v2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "%2e."

    invoke-static {v1, v2}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, ".%2e"

    invoke-static {v1, v2}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "%2e%2e"

    invoke-static {v1, v2}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_1c

    :cond_2d
    move v2, v11

    goto :goto_1d

    :cond_2e
    :goto_1c
    move v2, v15

    :goto_1d
    if-eqz v2, :cond_31

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2f

    move v1, v15

    goto :goto_1e

    :cond_2f
    move v1, v11

    :goto_1e
    if-eqz v1, :cond_30

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v15

    if-eqz v1, :cond_30

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-virtual {v2, v1, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_30
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_31
    move-object/from16 v2, v21

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v15

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_32

    move v3, v15

    goto :goto_1f

    :cond_32
    move v3, v11

    :goto_1f
    if-eqz v3, :cond_33

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v15

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    if-eqz v16, :cond_34

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_21
    if-eqz v16, :cond_35

    add-int/lit8 v8, v19, 0x1

    move/from16 v19, v8

    :cond_35
    move-object v9, v2

    move/from16 v2, v19

    goto/16 :goto_18

    :cond_36
    :goto_22
    if-ge v13, v12, :cond_37

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_37

    const/16 v1, 0x23

    invoke-static {v10, v1, v13, v12}, Lac/c;->e(Ljava/lang/String;CII)I

    move-result v11

    add-int/lit8 v2, v13, 0x1

    const-string v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0xd0

    move-object/from16 v1, p2

    move v3, v11

    invoke-static/range {v1 .. v9}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lh5/d;->A(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    move v13, v11

    :cond_37
    if-ge v13, v12, :cond_38

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_38

    add-int/lit8 v2, v13, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xb0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/t;->h:Ljava/lang/String;

    :cond_38
    return-void

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid URL host: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    invoke-static {}, Li4/f;->M()V

    const/4 v0, 0x0

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/t;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    goto :goto_0

    :cond_0
    const-string v1, "//"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/t;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/16 v4, 0x3a

    if-nez v1, :cond_3

    iget-object v1, p0, Lokhttp3/t;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    :cond_3
    iget-object v1, p0, Lokhttp3/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/t;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lokhttp3/t;->d:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {v1, v4}, Lkotlin/text/s;->O(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lokhttp3/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_4
    iget v1, p0, Lokhttp3/t;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lokhttp3/t;->a:Ljava/lang/String;

    if-eqz v1, :cond_e

    :cond_9
    invoke-virtual {p0}, Lokhttp3/t;->b()I

    move-result v1

    iget-object v5, p0, Lokhttp3/t;->a:Ljava/lang/String;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x310888    # 4.503E-39f

    if-eq v6, v7, :cond_b

    const v7, 0x5f008eb

    if-eq v6, v7, :cond_a

    goto :goto_5

    :cond_a
    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v3, 0x1bb

    goto :goto_5

    :cond_b
    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v3, 0x50

    :cond_c
    :goto_5
    if-eq v1, v3, :cond_e

    :cond_d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Lokhttp3/t;->f:Ljava/util/ArrayList;

    const-string v3, "$this$toPathString"

    invoke-static {v1, v3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_6
    if-ge v4, v3, :cond_f

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    iget-object v1, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Lp9/d;->v0(II)Lxb/f;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lp9/d;->r0(Lxb/d;I)Lxb/d;

    move-result-object v2

    iget v3, v2, Lxb/d;->a:I

    iget v4, v2, Lxb/d;->b:I

    iget v2, v2, Lxb/d;->c:I

    if-ltz v2, :cond_10

    if-gt v3, v4, :cond_14

    goto :goto_7

    :cond_10
    if-lt v3, v4, :cond_14

    :goto_7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v3, :cond_11

    const/16 v7, 0x26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_12

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-eq v3, v4, :cond_14

    add-int/2addr v3, v2

    goto :goto_7

    :cond_13
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_14
    iget-object v1, p0, Lokhttp3/t;->h:Ljava/lang/String;

    if-eqz v1, :cond_15

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/t;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
