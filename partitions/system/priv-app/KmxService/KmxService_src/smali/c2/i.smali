.class public final Lc2/i;
.super Lx1/b;
.source "SourceFile"


# static fields
.field public static final A0:I

.field public static final B0:I

.field public static final C0:[I

.field public static final D0:[I

.field public static final u0:I

.field public static final v0:I

.field public static final w0:I

.field public static final x0:I

.field public static final y0:I

.field public static final z0:I


# instance fields
.field public final Z:Lcom/fasterxml/jackson/core/j;

.field public final l0:Le2/b;

.field public m0:[I

.field public n0:Z

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:Ljava/io/InputStream;

.field public s0:[B

.field public final t0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/i;->u0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/i;->v0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/i;->w0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/i;->x0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/i;->y0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/i;->z0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/i;->A0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lc2/i;->B0:I

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->f:[I

    sput-object v0, Lc2/i;->C0:[I

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->e:[I

    sput-object v0, Lc2/i;->D0:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/InputStream;Lcom/fasterxml/jackson/core/j;Le2/b;[BIIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/b;-><init>(Lcom/fasterxml/jackson/core/io/d;I)V

    const/16 p1, 0x10

    new-array p1, p1, [I

    iput-object p1, p0, Lc2/i;->m0:[I

    iput-object p3, p0, Lc2/i;->r0:Ljava/io/InputStream;

    iput-object p4, p0, Lc2/i;->Z:Lcom/fasterxml/jackson/core/j;

    iput-object p5, p0, Lc2/i;->l0:Le2/b;

    iput-object p6, p0, Lc2/i;->s0:[B

    iput p7, p0, Lx1/b;->p:I

    iput p8, p0, Lx1/b;->q:I

    sub-int p1, p7, p9

    iput p1, p0, Lx1/b;->v:I

    neg-int p1, p7

    add-int/2addr p1, p9

    int-to-long p1, p1

    iput-wide p1, p0, Lx1/b;->t:J

    iput-boolean p10, p0, Lc2/i;->t0:Z

    return-void
.end method

.method public static final A2(II)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x3

    const/4 v0, -0x1

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public final B1()I
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lx1/c;->B1()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lx1/b;->S1()I

    move-result p0

    return p0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lx1/b;->Y1()V

    :cond_3
    iget p0, p0, Lx1/b;->I:I

    return p0
.end method

.method public final B2([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    const/16 v3, 0x2e

    const/16 v4, 0x39

    const/16 v5, 0x30

    iget-object v6, v0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v1, v3, :cond_7

    move-object/from16 v3, p1

    array-length v9, v3

    move/from16 v10, p2

    if-lt v10, v9, :cond_0

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    move v10, v8

    :cond_0
    add-int/lit8 v9, v10, 0x1

    int-to-char v11, v1

    aput-char v11, v3, v10

    move v10, v8

    :goto_0
    iget v11, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-lt v11, v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lc2/i;->r2()Z

    move-result v11

    if-nez v11, :cond_1

    move v11, v7

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lc2/i;->s0:[B

    iget v11, v0, Lx1/b;->p:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lx1/b;->p:I

    aget-byte v1, v1, v11

    and-int/lit16 v1, v1, 0xff

    if-lt v1, v5, :cond_4

    if-le v1, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    array-length v11, v3

    if-lt v9, v11, :cond_3

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    move v9, v8

    :cond_3
    add-int/lit8 v11, v9, 0x1

    int-to-char v12, v1

    aput-char v12, v3, v9

    move v9, v11

    goto :goto_0

    :cond_4
    :goto_1
    move v11, v8

    :goto_2
    if-nez v10, :cond_6

    sget-object v12, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_TRAILING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, "Decimal point not followed by a digit"

    invoke-virtual {v0, v1, v3}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2

    :cond_6
    :goto_3
    move v15, v10

    move v10, v9

    move v9, v15

    goto :goto_4

    :cond_7
    move-object/from16 v3, p1

    move/from16 v10, p2

    move v9, v8

    move v11, v9

    :goto_4
    const/16 v12, 0x65

    if-eq v1, v12, :cond_8

    const/16 v12, 0x45

    if-ne v1, v12, :cond_12

    :cond_8
    array-length v12, v3

    if-lt v10, v12, :cond_9

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    move v10, v8

    :cond_9
    add-int/lit8 v12, v10, 0x1

    int-to-char v1, v1

    aput-char v1, v3, v10

    iget v1, v0, Lx1/b;->p:I

    iget v10, v0, Lx1/b;->q:I

    if-lt v1, v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Lc2/i;->s2()V

    :cond_a
    iget-object v1, v0, Lc2/i;->s0:[B

    iget v10, v0, Lx1/b;->p:I

    add-int/lit8 v13, v10, 0x1

    iput v13, v0, Lx1/b;->p:I

    aget-byte v1, v1, v10

    and-int/lit16 v1, v1, 0xff

    const/16 v10, 0x2d

    if-eq v1, v10, :cond_b

    const/16 v10, 0x2b

    if-ne v1, v10, :cond_e

    :cond_b
    array-length v10, v3

    if-lt v12, v10, :cond_c

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    move v12, v8

    :cond_c
    add-int/lit8 v10, v12, 0x1

    int-to-char v1, v1

    aput-char v1, v3, v12

    iget v1, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-lt v1, v12, :cond_d

    invoke-virtual/range {p0 .. p0}, Lc2/i;->s2()V

    :cond_d
    iget-object v1, v0, Lc2/i;->s0:[B

    iget v12, v0, Lx1/b;->p:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lx1/b;->p:I

    aget-byte v1, v1, v12

    and-int/lit16 v1, v1, 0xff

    move v12, v10

    :cond_e
    move v10, v8

    :goto_5
    if-lt v1, v5, :cond_11

    if-gt v1, v4, :cond_11

    add-int/lit8 v10, v10, 0x1

    array-length v13, v3

    if-lt v12, v13, :cond_f

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v3

    move v12, v8

    :cond_f
    add-int/lit8 v13, v12, 0x1

    int-to-char v14, v1

    aput-char v14, v3, v12

    iget v12, v0, Lx1/b;->p:I

    iget v14, v0, Lx1/b;->q:I

    if-lt v12, v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Lc2/i;->r2()Z

    move-result v12

    if-nez v12, :cond_10

    move v11, v7

    move v8, v10

    move v10, v13

    goto :goto_6

    :cond_10
    iget-object v1, v0, Lc2/i;->s0:[B

    iget v12, v0, Lx1/b;->p:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v0, Lx1/b;->p:I

    aget-byte v1, v1, v12

    and-int/lit16 v1, v1, 0xff

    move v12, v13

    goto :goto_5

    :cond_11
    move v8, v10

    move v10, v12

    :goto_6
    if-eqz v8, :cond_14

    :cond_12
    if-nez v11, :cond_13

    iget v2, v0, Lx1/b;->p:I

    sub-int/2addr v2, v7

    iput v2, v0, Lx1/b;->p:I

    iget-object v2, v0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v1}, Lc2/i;->c3(I)V

    :cond_13
    iput v10, v6, Lcom/fasterxml/jackson/core/util/j;->i:I

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v2, v9, v8, v1}, Lx1/b;->c2(IIIZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_14
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {v0, v1, v3}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2
.end method

.method public final C1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lc2/i;->n0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/i;->n0:Z

    invoke-virtual {p0}, Lc2/i;->m2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lx1/b;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0}, Lx1/c;->C1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final C2(Z)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7

    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Lc2/i;->q2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x2d

    aput-char v1, v2, v0

    const/4 v0, 0x1

    :cond_1
    move v3, v0

    const/16 v4, 0x2e

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lc2/i;->B2([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final D2(I)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    sget-object v3, Lc2/i;->D0:[I

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/16 v8, 0x22

    if-eq v1, v8, :cond_1c

    const/16 v9, 0x27

    const-string v10, " in field name"

    iget-object v11, v0, Lc2/i;->l0:Le2/b;

    if-ne v1, v9, :cond_12

    iget v12, v0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v13, Lc2/i;->y0:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_12

    iget v1, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-lt v1, v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lc2/i;->r2()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ": was expecting closing \'\'\' for field name"

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1, v3}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v1, v0, Lc2/i;->s0:[B

    iget v12, v0, Lx1/b;->p:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lx1/b;->p:I

    aget-byte v1, v1, v12

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v9, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-object v4, v0, Lc2/i;->m0:[I

    move v12, v5

    move v13, v12

    move v14, v13

    :goto_1
    if-ne v1, v9, :cond_6

    if-lez v12, :cond_4

    array-length v1, v4

    if-lt v13, v1, :cond_3

    array-length v1, v4

    invoke-static {v4, v1}, Lx1/b;->Z1([II)[I

    move-result-object v1

    iput-object v1, v0, Lc2/i;->m0:[I

    move-object v4, v1

    :cond_3
    add-int/lit8 v1, v13, 0x1

    invoke-static {v14, v12}, Lc2/i;->A2(II)I

    move-result v2

    aput v2, v4, v13

    move v13, v1

    :cond_4
    invoke-virtual {v11, v4, v13}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v13, v12, v4}, Lc2/i;->d3(II[I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    :cond_5
    move-object v4, v1

    goto/16 :goto_9

    :cond_6
    aget v15, v3, v1

    if-eqz v15, :cond_d

    if-eq v1, v8, :cond_d

    const/16 v15, 0x5c

    if-eq v1, v15, :cond_7

    const-string v15, "name"

    invoke-virtual {v0, v1, v15}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lc2/i;->N1()C

    move-result v1

    :goto_2
    const/16 v15, 0x7f

    if-le v1, v15, :cond_d

    if-lt v12, v6, :cond_9

    array-length v12, v4

    if-lt v13, v12, :cond_8

    array-length v12, v4

    invoke-static {v4, v12}, Lx1/b;->Z1([II)[I

    move-result-object v4

    iput-object v4, v0, Lc2/i;->m0:[I

    :cond_8
    add-int/lit8 v12, v13, 0x1

    aput v14, v4, v13

    move v14, v5

    move v13, v12

    move v12, v14

    :cond_9
    shl-int/lit8 v14, v14, 0x8

    const/16 v15, 0x800

    if-ge v1, v15, :cond_a

    shr-int/lit8 v15, v1, 0x6

    or-int/lit16 v15, v15, 0xc0

    or-int/2addr v14, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_a
    shr-int/lit8 v15, v1, 0xc

    or-int/lit16 v15, v15, 0xe0

    or-int/2addr v14, v15

    add-int/lit8 v12, v12, 0x1

    if-lt v12, v6, :cond_c

    array-length v12, v4

    if-lt v13, v12, :cond_b

    array-length v12, v4

    invoke-static {v4, v12}, Lx1/b;->Z1([II)[I

    move-result-object v4

    iput-object v4, v0, Lc2/i;->m0:[I

    :cond_b
    add-int/lit8 v12, v13, 0x1

    aput v14, v4, v13

    move v14, v5

    move v13, v12

    move v12, v14

    :cond_c
    shl-int/lit8 v14, v14, 0x8

    shr-int/lit8 v15, v1, 0x6

    and-int/lit8 v15, v15, 0x3f

    or-int/lit16 v15, v15, 0x80

    or-int/2addr v14, v15

    add-int/2addr v12, v7

    :goto_3
    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    :cond_d
    if-ge v12, v6, :cond_e

    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v1, v14

    move v14, v1

    goto :goto_4

    :cond_e
    array-length v12, v4

    if-lt v13, v12, :cond_f

    array-length v12, v4

    invoke-static {v4, v12}, Lx1/b;->Z1([II)[I

    move-result-object v4

    iput-object v4, v0, Lc2/i;->m0:[I

    :cond_f
    add-int/lit8 v12, v13, 0x1

    aput v14, v4, v13

    move v14, v1

    move v13, v12

    move v12, v7

    :goto_4
    iget v1, v0, Lx1/b;->p:I

    iget v15, v0, Lx1/b;->q:I

    if-lt v1, v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lc2/i;->r2()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v10, v1}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_11
    :goto_5
    iget-object v1, v0, Lc2/i;->s0:[B

    iget v15, v0, Lx1/b;->p:I

    add-int/lit8 v9, v15, 0x1

    iput v9, v0, Lx1/b;->p:I

    aget-byte v1, v1, v15

    and-int/lit16 v1, v1, 0xff

    const/16 v9, 0x27

    goto/16 :goto_1

    :cond_12
    iget v3, v0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v4, Lc2/i;->z0:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/fasterxml/jackson/core/io/b;->h:[I

    aget v4, v3, v1

    if-nez v4, :cond_1a

    iget-object v4, v0, Lc2/i;->m0:[I

    move v8, v5

    move v9, v8

    :goto_6
    if-ge v5, v6, :cond_13

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v1, v9

    move v9, v1

    goto :goto_7

    :cond_13
    array-length v5, v4

    if-lt v8, v5, :cond_14

    array-length v5, v4

    invoke-static {v4, v5}, Lx1/b;->Z1([II)[I

    move-result-object v4

    iput-object v4, v0, Lc2/i;->m0:[I

    :cond_14
    add-int/lit8 v5, v8, 0x1

    aput v9, v4, v8

    move v9, v1

    move v8, v5

    move v5, v7

    :goto_7
    iget v1, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-lt v1, v12, :cond_16

    invoke-virtual/range {p0 .. p0}, Lc2/i;->r2()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_8

    :cond_15
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v10, v1}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_16
    :goto_8
    iget-object v1, v0, Lc2/i;->s0:[B

    iget v12, v0, Lx1/b;->p:I

    aget-byte v1, v1, v12

    and-int/lit16 v1, v1, 0xff

    aget v13, v3, v1

    if-eqz v13, :cond_19

    if-lez v5, :cond_18

    array-length v1, v4

    if-lt v8, v1, :cond_17

    array-length v1, v4

    invoke-static {v4, v1}, Lx1/b;->Z1([II)[I

    move-result-object v1

    iput-object v1, v0, Lc2/i;->m0:[I

    move-object v4, v1

    :cond_17
    add-int/lit8 v1, v8, 0x1

    aput v9, v4, v8

    move v8, v1

    :cond_18
    invoke-virtual {v11, v4, v8}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v8, v5, v4}, Lc2/i;->d3(II[I)Ljava/lang/String;

    move-result-object v4

    :goto_9
    return-object v4

    :cond_19
    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lx1/b;->p:I

    goto :goto_6

    :cond_1a
    const-string v3, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {v0, v1, v3}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2

    :cond_1b
    invoke-virtual/range {p0 .. p1}, Lc2/i;->h2(I)I

    move-result v1

    int-to-char v1, v1

    const-string v3, "was expecting double-quote to start field name"

    invoke-virtual {v0, v1, v3}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2

    :cond_1c
    iget v1, v0, Lx1/b;->p:I

    add-int/lit8 v9, v1, 0xd

    iget v10, v0, Lx1/b;->q:I

    if-le v9, v10, :cond_20

    if-lt v1, v10, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lc2/i;->r2()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_a

    :cond_1d
    const-string v1, ": was expecting closing \'\"\' for name"

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1, v3}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_1e
    :goto_a
    iget-object v1, v0, Lc2/i;->s0:[B

    iget v2, v0, Lx1/b;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lx1/b;->p:I

    aget-byte v1, v1, v2

    and-int/lit16 v3, v1, 0xff

    if-ne v3, v8, :cond_1f

    goto :goto_b

    :cond_1f
    iget-object v5, v0, Lc2/i;->m0:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lc2/i;->j3(IIII[I)Ljava/lang/String;

    move-result-object v4

    :goto_b
    return-object v4

    :cond_20
    iget-object v2, v0, Lc2/i;->s0:[B

    add-int/lit8 v9, v1, 0x1

    iput v9, v0, Lx1/b;->p:I

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    aget v10, v3, v1

    if-nez v10, :cond_43

    add-int/lit8 v4, v9, 0x1

    iput v4, v0, Lx1/b;->p:I

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    aget v10, v3, v9

    if-nez v10, :cond_41

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v9

    add-int/lit8 v9, v4, 0x1

    iput v9, v0, Lx1/b;->p:I

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    aget v10, v3, v4

    const/4 v11, 0x2

    if-nez v10, :cond_3f

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v4

    add-int/lit8 v4, v9, 0x1

    iput v4, v0, Lx1/b;->p:I

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    aget v10, v3, v9

    const/4 v12, 0x3

    if-nez v10, :cond_3d

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v9

    add-int/lit8 v9, v4, 0x1

    iput v9, v0, Lx1/b;->p:I

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    aget v10, v3, v4

    if-nez v10, :cond_3b

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lx1/b;->p:I

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    aget v13, v3, v9

    if-eqz v13, :cond_22

    if-ne v9, v8, :cond_21

    invoke-virtual {v0, v1, v4, v7}, Lc2/i;->f3(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_21
    invoke-virtual {v0, v1, v4, v9, v7}, Lc2/i;->l3(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_22
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v9

    add-int/lit8 v9, v10, 0x1

    iput v9, v0, Lx1/b;->p:I

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    aget v13, v3, v10

    if-eqz v13, :cond_24

    if-ne v10, v8, :cond_23

    invoke-virtual {v0, v1, v4, v11}, Lc2/i;->f3(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_23
    invoke-virtual {v0, v1, v4, v10, v11}, Lc2/i;->l3(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_24
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v10

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lx1/b;->p:I

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    aget v13, v3, v9

    if-eqz v13, :cond_26

    if-ne v9, v8, :cond_25

    invoke-virtual {v0, v1, v4, v12}, Lc2/i;->f3(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_25
    invoke-virtual {v0, v1, v4, v9, v12}, Lc2/i;->l3(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_26
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v9

    add-int/lit8 v9, v10, 0x1

    iput v9, v0, Lx1/b;->p:I

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    aget v13, v3, v10

    if-eqz v13, :cond_28

    if-ne v10, v8, :cond_27

    invoke-virtual {v0, v1, v4, v6}, Lc2/i;->f3(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_27
    invoke-virtual {v0, v1, v4, v10, v6}, Lc2/i;->l3(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_28
    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lx1/b;->p:I

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    aget v14, v3, v9

    if-eqz v14, :cond_2a

    if-ne v9, v8, :cond_29

    invoke-virtual {v0, v1, v4, v10, v7}, Lc2/i;->g3(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_29
    move v6, v7

    move v3, v9

    move v2, v10

    goto :goto_d

    :cond_2a
    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v13, 0x1

    iput v10, v0, Lx1/b;->p:I

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    aget v14, v3, v13

    if-eqz v14, :cond_2c

    if-ne v13, v8, :cond_2b

    invoke-virtual {v0, v1, v4, v9, v11}, Lc2/i;->g3(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_2b
    move v2, v9

    move v6, v11

    move v3, v13

    goto :goto_d

    :cond_2c
    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v13

    add-int/lit8 v13, v10, 0x1

    iput v13, v0, Lx1/b;->p:I

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    aget v14, v3, v10

    if-eqz v14, :cond_2e

    if-ne v10, v8, :cond_2d

    invoke-virtual {v0, v1, v4, v9, v12}, Lc2/i;->g3(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_2d
    move v6, v12

    goto :goto_c

    :cond_2e
    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v13, 0x1

    iput v10, v0, Lx1/b;->p:I

    aget-byte v10, v2, v13

    and-int/lit16 v10, v10, 0xff

    aget v13, v3, v10

    if-eqz v13, :cond_30

    if-ne v10, v8, :cond_2f

    invoke-virtual {v0, v1, v4, v9, v6}, Lc2/i;->g3(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_2f
    :goto_c
    move v2, v9

    move v3, v10

    :goto_d
    iget-object v8, v0, Lc2/i;->m0:[I

    aput v1, v8, v5

    aput v4, v8, v7

    const/4 v1, 0x2

    move-object/from16 v0, p0

    move v4, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lc2/i;->j3(IIII[I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_30
    iget-object v13, v0, Lc2/i;->m0:[I

    aput v1, v13, v5

    aput v4, v13, v7

    aput v9, v13, v11

    move v1, v12

    :goto_e
    iget v4, v0, Lx1/b;->p:I

    add-int/lit8 v5, v4, 0x4

    iget v9, v0, Lx1/b;->q:I

    if-gt v5, v9, :cond_3a

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lx1/b;->p:I

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    aget v9, v3, v4

    if-eqz v9, :cond_32

    if-ne v4, v8, :cond_31

    iget-object v2, v0, Lc2/i;->m0:[I

    invoke-virtual {v0, v1, v10, v2, v7}, Lc2/i;->h3(II[II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_31
    iget-object v5, v0, Lc2/i;->m0:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v2, v10

    move v3, v4

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lc2/i;->j3(IIII[I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_32
    shl-int/lit8 v9, v10, 0x8

    or-int/2addr v4, v9

    add-int/lit8 v9, v5, 0x1

    iput v9, v0, Lx1/b;->p:I

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    aget v10, v3, v5

    if-eqz v10, :cond_34

    if-ne v5, v8, :cond_33

    iget-object v2, v0, Lc2/i;->m0:[I

    invoke-virtual {v0, v1, v4, v2, v11}, Lc2/i;->h3(II[II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_33
    iget-object v6, v0, Lc2/i;->m0:[I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move v2, v4

    move v3, v5

    move v4, v7

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lc2/i;->j3(IIII[I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_34
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v9, 0x1

    iput v5, v0, Lx1/b;->p:I

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    aget v10, v3, v9

    if-eqz v10, :cond_36

    if-ne v9, v8, :cond_35

    iget-object v2, v0, Lc2/i;->m0:[I

    invoke-virtual {v0, v1, v4, v2, v12}, Lc2/i;->h3(II[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_35
    iget-object v5, v0, Lc2/i;->m0:[I

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v2, v4

    move v3, v9

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lc2/i;->j3(IIII[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_36
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v9

    add-int/lit8 v9, v5, 0x1

    iput v9, v0, Lx1/b;->p:I

    aget-byte v5, v2, v5

    and-int/lit16 v10, v5, 0xff

    aget v5, v3, v10

    if-eqz v5, :cond_38

    if-ne v10, v8, :cond_37

    iget-object v2, v0, Lc2/i;->m0:[I

    invoke-virtual {v0, v1, v4, v2, v6}, Lc2/i;->h3(II[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_37
    iget-object v5, v0, Lc2/i;->m0:[I

    const/4 v6, 0x4

    move-object/from16 v0, p0

    move v2, v4

    move v3, v10

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lc2/i;->j3(IIII[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_38
    iget-object v5, v0, Lc2/i;->m0:[I

    array-length v9, v5

    if-lt v1, v9, :cond_39

    invoke-static {v5, v1}, Lx1/b;->Z1([II)[I

    move-result-object v5

    iput-object v5, v0, Lc2/i;->m0:[I

    :cond_39
    iget-object v5, v0, Lc2/i;->m0:[I

    add-int/lit8 v9, v1, 0x1

    aput v4, v5, v1

    move v1, v9

    goto/16 :goto_e

    :cond_3a
    iget-object v5, v0, Lc2/i;->m0:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lc2/i;->j3(IIII[I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_3b
    if-ne v4, v8, :cond_3c

    invoke-virtual {v0, v1, v6}, Lc2/i;->e3(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3c
    invoke-virtual {v0, v1, v4, v6}, Lc2/i;->k3(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3d
    if-ne v9, v8, :cond_3e

    invoke-virtual {v0, v1, v12}, Lc2/i;->e3(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3e
    invoke-virtual {v0, v1, v9, v12}, Lc2/i;->k3(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3f
    if-ne v4, v8, :cond_40

    invoke-virtual {v0, v1, v11}, Lc2/i;->e3(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_40
    invoke-virtual {v0, v1, v4, v11}, Lc2/i;->k3(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_41
    if-ne v9, v8, :cond_42

    invoke-virtual {v0, v1, v7}, Lc2/i;->e3(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_42
    invoke-virtual {v0, v1, v9, v7}, Lc2/i;->k3(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_43
    if-ne v1, v8, :cond_44

    return-object v4

    :cond_44
    invoke-virtual {v0, v5, v1, v5}, Lc2/i;->k3(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E2(IIZ[C)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6

    move v2, p1

    move v5, p2

    move-object v1, p4

    :goto_0
    iget p1, p0, Lx1/b;->p:I

    iget p2, p0, Lx1/b;->q:I

    iget-object p4, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result p1

    if-nez p1, :cond_0

    iput v2, p4, Lcom/fasterxml/jackson/core/util/j;->i:I

    invoke-virtual {p0, v5, p3}, Lx1/b;->d2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lc2/i;->s0:[B

    iget p2, p0, Lx1/b;->p:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lx1/b;->p:I

    aget-byte p1, p1, p2

    and-int/lit16 v3, p1, 0xff

    const/16 p1, 0x39

    if-gt v3, p1, :cond_3

    const/16 p1, 0x30

    if-ge v3, p1, :cond_1

    goto :goto_1

    :cond_1
    array-length p1, v1

    if-lt v2, p1, :cond_2

    invoke-virtual {p4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    const/4 v2, 0x0

    move-object v1, p1

    :cond_2
    add-int/lit8 p1, v2, 0x1

    int-to-char p2, v3

    aput-char p2, v1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, p1

    goto :goto_0

    :cond_3
    :goto_1
    const/16 p1, 0x2e

    if-eq v3, p1, :cond_6

    const/16 p1, 0x65

    if-eq v3, p1, :cond_6

    const/16 p1, 0x45

    if-ne v3, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lx1/b;->p:I

    iput v2, p4, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lc2/i;->s0:[B

    iget p2, p0, Lx1/b;->p:I

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lc2/i;->c3(I)V

    :cond_5
    invoke-virtual {p0, v5, p3}, Lx1/b;->d2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc2/i;->B2([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final F2(Z)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 12

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/16 v4, 0x2d

    aput-char v4, v2, v3

    move v3, v1

    :cond_0
    iget v4, p0, Lx1/b;->p:I

    iget v5, p0, Lx1/b;->q:I

    if-lt v4, v5, :cond_1

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_1
    iget-object v4, p0, Lc2/i;->s0:[B

    iget v5, p0, Lx1/b;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lx1/b;->p:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x2e

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-gt v4, v7, :cond_4

    if-eq v4, v7, :cond_3

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, p1}, Lc2/i;->C2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v4, p1, v1}, Lc2/i;->p2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lc2/i;->b3()I

    move-result v4

    goto :goto_0

    :cond_4
    if-le v4, v6, :cond_5

    invoke-virtual {p0, v4, p1, v1}, Lc2/i;->p2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    add-int/lit8 v8, v3, 0x1

    int-to-char v4, v4

    aput-char v4, v2, v3

    iget v3, p0, Lx1/b;->q:I

    iget v4, p0, Lx1/b;->p:I

    array-length v9, v2

    add-int/2addr v4, v9

    sub-int/2addr v4, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v9, v1

    :goto_1
    iget v4, p0, Lx1/b;->p:I

    if-lt v4, v3, :cond_6

    invoke-virtual {p0, v8, v9, p1, v2}, Lc2/i;->E2(IIZ[C)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v10, p0, Lc2/i;->s0:[B

    add-int/lit8 v11, v4, 0x1

    iput v11, p0, Lx1/b;->p:I

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    if-lt v4, v7, :cond_8

    if-le v4, v6, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v8, 0x1

    int-to-char v4, v4

    aput-char v4, v2, v8

    move v8, v10

    goto :goto_1

    :cond_8
    :goto_2
    if-eq v4, v5, :cond_b

    const/16 v3, 0x65

    if-eq v4, v3, :cond_b

    const/16 v3, 0x45

    if-ne v4, v3, :cond_9

    goto :goto_3

    :cond_9
    sub-int/2addr v11, v1

    iput v11, p0, Lx1/b;->p:I

    iput v8, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v4}, Lc2/i;->c3(I)V

    :cond_a
    invoke-virtual {p0, v9, p1}, Lx1/b;->d2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_3
    move-object v1, p0

    move v3, v8

    move v5, p1

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lc2/i;->B2([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final G2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v2

    const/16 v1, 0x30

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->b3()I

    move-result p1

    :cond_0
    int-to-char p1, p1

    const/4 v3, 0x0

    aput-char p1, v2, v3

    iget p1, p0, Lx1/b;->q:I

    iget v4, p0, Lx1/b;->p:I

    array-length v5, v2

    add-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v4, v5

    move v6, v4

    :goto_0
    iget v7, p0, Lx1/b;->p:I

    if-lt v7, p1, :cond_1

    invoke-virtual {p0, v4, v6, v3, v2}, Lc2/i;->E2(IIZ[C)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v8, p0, Lc2/i;->s0:[B

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lx1/b;->p:I

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    if-lt v7, v1, :cond_3

    const/16 v8, 0x39

    if-le v7, v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v4, 0x1

    int-to-char v7, v7

    aput-char v7, v2, v4

    move v4, v8

    goto :goto_0

    :cond_3
    :goto_1
    const/16 p1, 0x2e

    if-eq v7, p1, :cond_6

    const/16 p1, 0x65

    if-eq v7, p1, :cond_6

    const/16 p1, 0x45

    if-ne v7, p1, :cond_4

    goto :goto_2

    :cond_4
    sub-int/2addr v9, v5

    iput v9, p0, Lx1/b;->p:I

    iput v4, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v7}, Lc2/i;->c3(I)V

    :cond_5
    invoke-virtual {p0, v6, v3}, Lx1/b;->d2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    const/4 v5, 0x0

    move-object v1, p0

    move v3, v4

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lc2/i;->B2([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final H2(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;[B)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v3

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    iget v9, v0, Lx1/b;->p:I

    iget v10, v0, Lx1/b;->q:I

    if-lt v9, v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lc2/i;->s2()V

    :cond_0
    iget-object v9, v0, Lc2/i;->s0:[B

    iget v10, v0, Lx1/b;->p:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lx1/b;->p:I

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x20

    if-le v9, v10, :cond_15

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v10

    const/16 v11, 0x22

    if-gez v10, :cond_2

    if-ne v9, v11, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0, v1, v9, v6}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v10

    if-gez v10, :cond_2

    goto/16 :goto_4

    :cond_2
    if-le v7, v4, :cond_3

    add-int/2addr v8, v7

    invoke-virtual {v2, v3, v6, v7}, Lcom/fasterxml/jackson/core/io/c;->write([BII)V

    move v7, v6

    :cond_3
    iget v9, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-lt v9, v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lc2/i;->s2()V

    :cond_4
    iget-object v9, v0, Lc2/i;->s0:[B

    iget v12, v0, Lx1/b;->p:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lx1/b;->p:I

    aget-byte v9, v9, v12

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v12

    const/4 v13, 0x1

    if-gez v12, :cond_5

    invoke-virtual {v0, v1, v9, v13}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v12

    :cond_5
    shl-int/lit8 v9, v10, 0x6

    or-int/2addr v9, v12

    iget v10, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-lt v10, v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lc2/i;->s2()V

    :cond_6
    iget-object v10, v0, Lc2/i;->s0:[B

    iget v12, v0, Lx1/b;->p:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v0, Lx1/b;->p:I

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v1, v10}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v12

    const/4 v14, 0x2

    const/4 v15, -0x2

    if-gez v12, :cond_d

    if-eq v12, v15, :cond_9

    if-ne v10, v11, :cond_8

    shr-int/lit8 v4, v9, 0x4

    add-int/lit8 v5, v7, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_7

    move v7, v5

    goto/16 :goto_2

    :cond_7
    iget v2, v0, Lx1/b;->p:I

    sub-int/2addr v2, v13

    iput v2, v0, Lx1/b;->p:I

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-virtual {v0, v1, v10, v14}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v10

    move v12, v10

    :cond_9
    if-ne v12, v15, :cond_d

    iget v10, v0, Lx1/b;->p:I

    iget v11, v0, Lx1/b;->q:I

    if-lt v10, v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Lc2/i;->s2()V

    :cond_a
    iget-object v10, v0, Lc2/i;->s0:[B

    iget v11, v0, Lx1/b;->p:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lx1/b;->p:I

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v1, v10}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v0, v1, v10, v5}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v11

    if-ne v11, v15, :cond_b

    goto :goto_1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "expected padding character \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v10, v5, v0}, Lx1/b;->a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_1
    shr-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v7, 0x1

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    move v7, v10

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v12

    iget v10, v0, Lx1/b;->p:I

    iget v12, v0, Lx1/b;->q:I

    if-lt v10, v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lc2/i;->s2()V

    :cond_e
    iget-object v10, v0, Lc2/i;->s0:[B

    iget v12, v0, Lx1/b;->p:I

    add-int/lit8 v5, v12, 0x1

    iput v5, v0, Lx1/b;->p:I

    aget-byte v5, v10, v12

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v10

    if-gez v10, :cond_13

    if-eq v10, v15, :cond_12

    if-ne v5, v11, :cond_11

    shr-int/lit8 v4, v9, 0x2

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    add-int/lit8 v7, v5, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_10

    :goto_2
    iput-boolean v6, v0, Lc2/i;->n0:Z

    if-lez v7, :cond_f

    add-int/2addr v8, v7

    invoke-virtual {v2, v3, v6, v7}, Lcom/fasterxml/jackson/core/io/c;->write([BII)V

    :cond_f
    return v8

    :cond_10
    iget v2, v0, Lx1/b;->p:I

    sub-int/2addr v2, v13

    iput v2, v0, Lx1/b;->p:I

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    :cond_11
    const/4 v11, 0x3

    invoke-virtual {v0, v1, v5, v11}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v10

    goto :goto_3

    :cond_12
    const/4 v11, 0x3

    :goto_3
    if-ne v10, v15, :cond_14

    shr-int/lit8 v5, v9, 0x2

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    add-int/lit8 v7, v9, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v9

    goto :goto_5

    :cond_13
    const/4 v11, 0x3

    :cond_14
    shl-int/lit8 v5, v9, 0x6

    or-int/2addr v5, v10

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, v5, 0x10

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    move v7, v9

    goto :goto_5

    :cond_15
    :goto_4
    move v11, v5

    :goto_5
    move v5, v11

    goto/16 :goto_0
.end method

.method public final I0()Lcom/fasterxml/jackson/core/util/g;
    .locals 0

    sget-object p0, Lx1/b;->Y:Lcom/fasterxml/jackson/core/util/g;

    return-object p0
.end method

.method public final I2(I)V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lx1/c;->A1(I)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lc2/i;->J2(I)V

    throw v1
.end method

.method public final J(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lx1/b;->G:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Current token ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lc2/i;->n0:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lc2/i;->g2(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lx1/b;->G:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc2/i;->n0:Z

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_2
    iget-object v0, p0, Lx1/b;->G:[B

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lx1/b;->Q1()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    invoke-virtual {p0}, Lc2/i;->K0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lx1/c;->o1(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/c;Lcom/fasterxml/jackson/core/Base64Variant;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p1

    iput-object p1, p0, Lx1/b;->G:[B

    :cond_3
    :goto_1
    iget-object p0, p0, Lx1/b;->G:[B

    return-object p0
.end method

.method public final J1()V
    .locals 1

    iget-object v0, p0, Lc2/i;->r0:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    iget-boolean v0, v0, Lcom/fasterxml/jackson/core/io/d;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc2/i;->r0:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lc2/i;->r0:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method public final J2(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final K0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v2, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lc2/i;->n0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/i;->n0:Z

    invoke-virtual {p0}, Lc2/i;->m2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    const/4 p0, 0x6

    if-eq v1, p0, :cond_3

    const/4 p0, 0x7

    if-eq v1, p0, :cond_3

    const/16 p0, 0x8

    if-eq v1, p0, :cond_3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    iget-object p0, p0, Lc2/c;->f:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final K2(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final L0()[C
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lc2/i;->n0:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lc2/i;->n0:Z

    invoke-virtual {p0}, Lc2/i;->n2()V

    :cond_1
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->n()[C

    move-result-object p0

    return-object p0

    :cond_2
    iget-boolean v0, p0, Lx1/b;->E:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget-object v0, v0, Lc2/c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lx1/b;->C:[C

    if-nez v3, :cond_3

    iget-object v3, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/io/d;->c(I)[C

    move-result-object v3

    iput-object v3, p0, Lx1/b;->C:[C

    goto :goto_0

    :cond_3
    array-length v3, v3

    if-ge v3, v1, :cond_4

    new-array v3, v1, [C

    iput-object v3, p0, Lx1/b;->C:[C

    :cond_4
    :goto_0
    iget-object v3, p0, Lx1/b;->C:[C

    invoke-virtual {v0, v2, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx1/b;->E:Z

    :cond_5
    iget-object p0, p0, Lx1/b;->C:[C

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final L2(II)V
    .locals 0

    iput p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1}, Lc2/i;->K2(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final M0()I
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object p0

    array-length p0, p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lc2/i;->n0:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lc2/i;->n0:Z

    invoke-virtual {p0}, Lc2/i;->n2()V

    :cond_1
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->t()I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    iget-object p0, p0, Lc2/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final M2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte p1, p1, v1

    invoke-virtual {p0, p1}, Lc2/i;->h2(I)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0, v0, p2}, Lx1/c;->t1(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final N0()I
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lc2/i;->n0:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lc2/i;->n0:Z

    invoke-virtual {p0}, Lc2/i;->n2()V

    :cond_1
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->o()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final N1()C
    .locals 7

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    const/4 v2, 0x0

    const-string v3, " in character escape sequence"

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v3, v0}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_c

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_c

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_c

    const/16 v1, 0x62

    if-eq v0, v1, :cond_b

    const/16 v1, 0x66

    if-eq v0, v1, :cond_a

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_9

    const/16 v1, 0x72

    if-eq v0, v1, :cond_8

    const/16 v1, 0x74

    if-eq v0, v1, :cond_7

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lc2/i;->h2(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lx1/b;->R1(C)V

    return v0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v4, 0x4

    if-ge v0, v4, :cond_6

    iget v4, p0, Lx1/b;->p:I

    iget v5, p0, Lx1/b;->q:I

    if-lt v4, v5, :cond_4

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v3, v0}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_4
    :goto_2
    iget-object v4, p0, Lc2/i;->s0:[B

    iget v5, p0, Lx1/b;->p:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lx1/b;->p:I

    aget-byte v4, v4, v5

    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/b;->b(I)I

    move-result v5

    if-ltz v5, :cond_5

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    and-int/lit16 v0, v4, 0xff

    const-string v1, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v0, v1}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2

    :cond_6
    int-to-char p0, v1

    return p0

    :cond_7
    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xd

    return p0

    :cond_9
    const/16 p0, 0xa

    return p0

    :cond_a
    const/16 p0, 0xc

    return p0

    :cond_b
    const/16 p0, 0x8

    return p0

    :cond_c
    int-to-char p0, v0

    return p0
.end method

.method public final N2()V
    .locals 3

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lx1/b;->p:I

    :cond_1
    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iget v0, p0, Lx1/b;->p:I

    iput v0, p0, Lx1/b;->v:I

    return-void
.end method

.method public final O()Lcom/fasterxml/jackson/core/j;
    .locals 0

    iget-object p0, p0, Lc2/i;->Z:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method public final O0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    iget-wide v1, v0, Lx1/b;->t:J

    iget v3, v0, Lc2/i;->o0:I

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    add-long v7, v1, v3

    new-instance v1, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual/range {p0 .. p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v6

    const-wide/16 v9, -0x1

    iget v11, v0, Lc2/i;->p0:I

    iget v12, v0, Lc2/i;->q0:I

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual/range {p0 .. p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v14

    iget-wide v2, v0, Lx1/b;->w:J

    const-wide/16 v4, 0x1

    sub-long v15, v2, v4

    const-wide/16 v17, -0x1

    iget v2, v0, Lx1/b;->x:I

    iget v0, v0, Lx1/b;->y:I

    move-object v13, v1

    move/from16 v19, v2

    move/from16 v20, v0

    invoke-direct/range {v13 .. v20}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v1
.end method

.method public final O2()I
    .locals 10

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lx1/b;->q:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lc2/i;->P2(Z)I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lc2/i;->s0:[B

    aget-byte v2, v1, v0

    const/16 v4, 0x3a

    const/16 v5, 0x9

    const/16 v6, 0x23

    const/16 v7, 0x2f

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ne v2, v4, :cond_8

    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    aget-byte v2, v1, v0

    if-le v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    return v2

    :cond_2
    :goto_0
    invoke-virtual {p0, v9}, Lc2/i;->P2(Z)I

    move-result p0

    return p0

    :cond_3
    if-eq v2, v8, :cond_4

    if-ne v2, v5, :cond_7

    :cond_4
    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    aget-byte v1, v1, v0

    if-le v1, v8, :cond_7

    if-eq v1, v7, :cond_6

    if-ne v1, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    return v1

    :cond_6
    :goto_1
    invoke-virtual {p0, v9}, Lc2/i;->P2(Z)I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0, v9}, Lc2/i;->P2(Z)I

    move-result p0

    return p0

    :cond_8
    if-eq v2, v8, :cond_9

    if-ne v2, v5, :cond_a

    :cond_9
    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    aget-byte v2, v1, v0

    :cond_a
    if-ne v2, v4, :cond_10

    iget v0, p0, Lx1/b;->p:I

    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    aget-byte v2, v1, v0

    if-le v2, v8, :cond_c

    if-eq v2, v7, :cond_b

    if-ne v2, v6, :cond_1

    :cond_b
    invoke-virtual {p0, v9}, Lc2/i;->P2(Z)I

    move-result p0

    return p0

    :cond_c
    if-eq v2, v8, :cond_d

    if-ne v2, v5, :cond_f

    :cond_d
    add-int/2addr v0, v9

    iput v0, p0, Lx1/b;->p:I

    aget-byte v1, v1, v0

    if-le v1, v8, :cond_f

    if-eq v1, v7, :cond_e

    if-ne v1, v6, :cond_5

    :cond_e
    invoke-virtual {p0, v9}, Lc2/i;->P2(Z)I

    move-result p0

    return p0

    :cond_f
    invoke-virtual {p0, v9}, Lc2/i;->P2(Z)I

    move-result p0

    return p0

    :cond_10
    invoke-virtual {p0, v3}, Lc2/i;->P2(Z)I

    move-result p0

    return p0
.end method

.method public final P2(Z)I
    .locals 5

    :cond_0
    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " within/between "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " entries"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_2
    :goto_1
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/16 v4, 0x20

    if-le v0, v4, :cond_8

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lc2/i;->Q2()V

    goto :goto_0

    :cond_3
    const/16 v3, 0x23

    if-ne v0, v3, :cond_5

    iget v3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v4, Lc2/i;->B0:I

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lc2/i;->R2()V

    move v3, v1

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    return v0

    :cond_6
    const/16 p1, 0x3a

    if-ne v0, p1, :cond_7

    move p1, v1

    goto :goto_0

    :cond_7
    const-string p1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, p1}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2

    :cond_8
    if-eq v0, v4, :cond_0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_9

    iget v0, p0, Lx1/b;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lx1/b;->u:I

    iput v3, p0, Lx1/b;->v:I

    goto :goto_0

    :cond_9
    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lc2/i;->N2()V

    goto :goto_0

    :cond_a
    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    throw v2
.end method

.method public final Q0()I
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lx1/c;->B1()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget v0, p0, Lx1/b;->H:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lx1/b;->S1()I

    move-result p0

    return p0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lx1/b;->Y1()V

    :cond_3
    iget p0, p0, Lx1/b;->I:I

    return p0
.end method

.method public final Q2()V
    .locals 9

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Lc2/i;->A0:I

    and-int/2addr v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget v0, p0, Lx1/b;->p:I

    iget v3, p0, Lx1/b;->q:I

    const-string v4, " in a comment"

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4, v2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v3, p0, Lx1/b;->p:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lx1/b;->p:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/i;->R2()V

    goto :goto_3

    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_d

    sget-object v5, Lcom/fasterxml/jackson/core/io/b;->i:[I

    :cond_3
    :goto_1
    iget v0, p0, Lx1/b;->p:I

    iget v6, p0, Lx1/b;->q:I

    if-lt v0, v6, :cond_4

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v6, p0, Lx1/b;->p:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lx1/b;->p:I

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    aget v6, v5, v0

    if-eqz v6, :cond_3

    const/4 v8, 0x2

    if-eq v6, v8, :cond_c

    const/4 v8, 0x3

    if-eq v6, v8, :cond_b

    const/4 v8, 0x4

    if-eq v6, v8, :cond_a

    const/16 v8, 0xa

    if-eq v6, v8, :cond_9

    const/16 v8, 0xd

    if-eq v6, v8, :cond_8

    if-ne v6, v3, :cond_7

    iget v0, p0, Lx1/b;->q:I

    if-lt v7, v0, :cond_6

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4, v2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_6
    :goto_2
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v6, p0, Lx1/b;->p:I

    aget-byte v0, v0, v6

    if-ne v0, v1, :cond_3

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lx1/b;->p:I

    :goto_3
    return-void

    :cond_7
    invoke-virtual {p0, v0}, Lc2/i;->I2(I)V

    throw v2

    :cond_8
    invoke-virtual {p0}, Lc2/i;->N2()V

    goto :goto_1

    :cond_9
    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iput v7, p0, Lx1/b;->v:I

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lc2/i;->V2()V

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lc2/i;->U2()V

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Lc2/i;->T2()V

    goto :goto_1

    :cond_d
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2

    :cond_e
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2
.end method

.method public final R2()V
    .locals 5

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->i:[I

    :cond_0
    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v1, p0, Lc2/i;->s0:[B

    iget v2, p0, Lx1/b;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lx1/b;->p:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    const/4 v4, 0x4

    if-eq v2, v4, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    if-ltz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lc2/i;->I2(I)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    invoke-virtual {p0}, Lc2/i;->N2()V

    return-void

    :cond_5
    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iput v3, p0, Lx1/b;->v:I

    return-void

    :cond_6
    invoke-virtual {p0}, Lc2/i;->V2()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lc2/i;->U2()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lc2/i;->T2()V

    goto :goto_0
.end method

.method public final S0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lc2/i;->n0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/i;->n0:Z

    invoke-virtual {p0}, Lc2/i;->m2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lx1/b;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0}, Lx1/c;->C1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final S2()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/i;->n0:Z

    iget-object v0, p0, Lc2/i;->s0:[B

    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_8

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    sget-object v4, Lc2/i;->C0:[I

    aget v4, v4, v1

    if-eqz v4, :cond_7

    iput v3, p0, Lx1/b;->p:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    if-eq v4, v2, :cond_6

    const/4 v2, 0x2

    if-eq v4, v2, :cond_5

    const/4 v2, 0x3

    if-eq v4, v2, :cond_4

    const/4 v2, 0x4

    if-eq v4, v2, :cond_3

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    const-string v2, "string value"

    invoke-virtual {p0, v1, v2}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lc2/i;->I2(I)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    invoke-virtual {p0}, Lc2/i;->V2()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lc2/i;->U2()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lc2/i;->T2()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lc2/i;->N1()C

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_1

    :cond_8
    iput v1, p0, Lx1/b;->p:I

    goto :goto_0
.end method

.method public final T2()V
    .locals 4

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0, v2}, Lc2/i;->L2(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final U1()V
    .locals 2

    invoke-super {p0}, Lx1/b;->U1()V

    iget-object v0, p0, Lc2/i;->l0:Le2/b;

    invoke-virtual {v0}, Le2/b;->m()V

    iget-boolean v0, p0, Lc2/i;->t0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc2/i;->s0:[B

    if-eqz v0, :cond_0

    sget-object v1, Lx1/c;->d:[B

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lc2/i;->s0:[B

    iget-object p0, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/d;->e([B)V

    :cond_0
    return-void
.end method

.method public final U2()V
    .locals 5

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_3

    iget v0, p0, Lx1/b;->q:I

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_1
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_2

    return-void

    :cond_2
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0, v2}, Lc2/i;->L2(II)V

    throw v3

    :cond_3
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0, v2}, Lc2/i;->L2(II)V

    throw v3
.end method

.method public final V2()V
    .locals 5

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_5

    iget v0, p0, Lx1/b;->q:I

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_1
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_4

    iget v0, p0, Lx1/b;->q:I

    if-lt v2, v0, :cond_2

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_2
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_3

    return-void

    :cond_3
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0, v2}, Lc2/i;->L2(II)V

    throw v3

    :cond_4
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0, v2}, Lc2/i;->L2(II)V

    throw v3

    :cond_5
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0, v2}, Lc2/i;->L2(II)V

    throw v3
.end method

.method public final W2()I
    .locals 3

    :cond_0
    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lc2/i;->s0:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lx1/b;->p:I

    invoke-virtual {p0}, Lc2/i;->X2()I

    move-result p0

    return p0

    :cond_3
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iput v2, p0, Lx1/b;->v:I

    goto :goto_0

    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lc2/i;->N2()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    invoke-virtual {p0}, Lc2/i;->X2()I

    move-result p0

    return p0
.end method

.method public final X2()I
    .locals 4

    :cond_0
    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/16 v3, 0x20

    if-le v0, v3, :cond_6

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lc2/i;->Q2()V

    goto :goto_0

    :cond_3
    const/16 v2, 0x23

    if-ne v0, v2, :cond_5

    iget v2, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v3, Lc2/i;->B0:I

    and-int/2addr v2, v3

    if-nez v2, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lc2/i;->R2()V

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_7

    iget v0, p0, Lx1/b;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lx1/b;->u:I

    iput v2, p0, Lx1/b;->v:I

    goto :goto_0

    :cond_7
    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lc2/i;->N2()V

    goto :goto_0

    :cond_8
    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final Y2()I
    .locals 10

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lx1/b;->q1()V

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x23

    const/16 v3, 0x2f

    const/16 v4, 0x20

    if-le v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lx1/b;->p:I

    :goto_1
    invoke-virtual {p0}, Lc2/i;->Z2()I

    move-result p0

    return p0

    :cond_3
    const/4 v5, 0x0

    const/16 v6, 0x9

    const/16 v7, 0xd

    const/16 v8, 0xa

    if-eq v0, v4, :cond_7

    if-ne v0, v8, :cond_4

    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iput v2, p0, Lx1/b;->v:I

    goto :goto_3

    :cond_4
    if-ne v0, v7, :cond_5

    :goto_2
    invoke-virtual {p0}, Lc2/i;->N2()V

    goto :goto_3

    :cond_5
    if-ne v0, v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    throw v5

    :cond_7
    :goto_3
    iget v0, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lc2/i;->s0:[B

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Lx1/b;->p:I

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-le v0, v4, :cond_a

    if-eq v0, v3, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    return v0

    :cond_9
    :goto_4
    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lx1/b;->p:I

    goto :goto_1

    :cond_a
    if-eq v0, v4, :cond_7

    if-ne v0, v8, :cond_b

    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    iput v9, p0, Lx1/b;->v:I

    goto :goto_3

    :cond_b
    if-ne v0, v7, :cond_c

    goto :goto_2

    :cond_c
    if-ne v0, v6, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    throw v5

    :cond_e
    invoke-virtual {p0}, Lc2/i;->Z2()I

    move-result p0

    return p0
.end method

.method public final Z2()I
    .locals 4

    :cond_0
    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lx1/b;->q1()V

    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_1
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/16 v3, 0x20

    if-le v0, v3, :cond_6

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lc2/i;->Q2()V

    goto :goto_0

    :cond_3
    const/16 v2, 0x23

    if-ne v0, v2, :cond_5

    iget v2, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v3, Lc2/i;->B0:I

    and-int/2addr v2, v3

    if-nez v2, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lc2/i;->R2()V

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_7

    iget v0, p0, Lx1/b;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lx1/b;->u:I

    iput v2, p0, Lx1/b;->v:I

    goto :goto_0

    :cond_7
    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lc2/i;->N2()V

    goto :goto_0

    :cond_8
    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a3()V
    .locals 5

    iget v0, p0, Lx1/b;->u:I

    iput v0, p0, Lx1/b;->x:I

    iget v0, p0, Lx1/b;->p:I

    iget-wide v1, p0, Lx1/b;->t:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lx1/b;->w:J

    iget v1, p0, Lx1/b;->v:I

    sub-int/2addr v0, v1

    iput v0, p0, Lx1/b;->y:I

    return-void
.end method

.method public final b0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->v:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v2

    iget-wide v3, p0, Lx1/b;->t:J

    iget v1, p0, Lx1/b;->p:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, -0x1

    iget v7, p0, Lx1/b;->u:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v0
.end method

.method public final b3()I
    .locals 6

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    const/16 v2, 0x30

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_8

    const/16 v3, 0x39

    if-le v0, v3, :cond_1

    goto :goto_2

    :cond_1
    iget v4, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v5, Lc2/i;->v0:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lx1/b;->p:I

    if-ne v0, v2, :cond_6

    :cond_2
    iget v1, p0, Lx1/b;->p:I

    iget v4, p0, Lx1/b;->q:I

    if-lt v1, v4, :cond_3

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_5

    if-le v0, v3, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lx1/b;->p:I

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_5
    :goto_0
    return v2

    :cond_6
    :goto_1
    return v0

    :cond_7
    invoke-virtual {p0}, Lx1/c;->D1()V

    const/4 p0, 0x0

    throw p0

    :cond_8
    :goto_2
    return v2
.end method

.method public final c3(I)V
    .locals 2

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->p:I

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected space separating root-level values"

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lx1/b;->p:I

    return-void

    :cond_2
    iget p1, p0, Lx1/b;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lx1/b;->u:I

    iput v0, p0, Lx1/b;->v:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final d1()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lx1/b;->H:I

    iget-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lc2/i;->y2()Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_0
    iget-boolean v1, p0, Lc2/i;->n0:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc2/i;->S2()V

    :cond_1
    invoke-virtual {p0}, Lc2/i;->Y2()I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lx1/b;->close()V

    iput-object v3, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_2
    iput-object v3, p0, Lx1/b;->G:[B

    const/16 v4, 0x5d

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lc2/i;->e2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_3
    const/16 v5, 0x7d

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lc2/i;->f2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_4
    iget-object v6, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v6}, Lc2/c;->l()Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x2c

    if-ne v1, v6, :cond_7

    invoke-virtual {p0}, Lc2/i;->W2()I

    move-result v1

    iget v6, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v7, Lc2/i;->u0:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_8

    if-eq v1, v4, :cond_5

    if-ne v1, v5, :cond_8

    :cond_5
    if-ne v1, v5, :cond_6

    invoke-virtual {p0}, Lc2/i;->f2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lc2/i;->e2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    :goto_0
    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v3

    :cond_8
    iget-object v4, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lc2/i;->a3()V

    invoke-virtual {p0, v1}, Lc2/i;->z2(I)Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_9
    iget v3, p0, Lx1/b;->u:I

    iput v3, p0, Lc2/i;->p0:I

    iget v3, p0, Lx1/b;->p:I

    iput v3, p0, Lc2/i;->o0:I

    iget v4, p0, Lx1/b;->v:I

    sub-int/2addr v3, v4

    iput v3, p0, Lc2/i;->q0:I

    invoke-virtual {p0, v1}, Lc2/i;->D2(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v3, v1}, Lc2/c;->m(Ljava/lang/String;)V

    iput-object v2, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lc2/i;->O2()I

    move-result v2

    invoke-virtual {p0}, Lc2/i;->a3()V

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_a

    iput-boolean v4, p0, Lc2/i;->n0:Z

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :cond_a
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_12

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_11

    const/16 v3, 0x66

    if-eq v2, v3, :cond_10

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_f

    const/16 v3, 0x74

    if-eq v2, v3, :cond_e

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_d

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_c

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_b

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v2}, Lc2/i;->G2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v0}, Lc2/i;->C2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v4}, Lc2/i;->F2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_d
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Lc2/i;->x2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_f
    invoke-virtual {p0}, Lc2/i;->u2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_10
    invoke-virtual {p0}, Lc2/i;->t2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_11
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_12
    sget-object v3, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0, v0}, Lc2/i;->F2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_13
    :goto_1
    invoke-virtual {p0, v2}, Lc2/i;->q2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d3(II[I)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    shl-int/lit8 v4, v1, 0x2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    const/4 v7, 0x3

    if-ge v2, v5, :cond_0

    add-int/lit8 v8, v1, -0x1

    aget v9, v3, v8

    rsub-int/lit8 v10, v2, 0x4

    shl-int/2addr v10, v7

    shl-int v10, v9, v10

    aput v10, v3, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v8, v0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v4, :cond_e

    shr-int/lit8 v13, v11, 0x2

    aget v13, v3, v13

    and-int/lit8 v14, v11, 0x3

    rsub-int/lit8 v14, v14, 0x3

    shl-int/2addr v14, v7

    shr-int/2addr v13, v14

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v11, v11, 0x1

    const/16 v14, 0x7f

    if-le v13, v14, :cond_b

    and-int/lit16 v14, v13, 0xe0

    const/16 v15, 0xc0

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-ne v14, v15, :cond_1

    and-int/lit8 v13, v13, 0x1f

    move v14, v5

    goto :goto_2

    :cond_1
    and-int/lit16 v14, v13, 0xf0

    const/16 v15, 0xe0

    if-ne v14, v15, :cond_2

    and-int/lit8 v13, v13, 0xf

    const/4 v14, 0x2

    goto :goto_2

    :cond_2
    and-int/lit16 v14, v13, 0xf8

    const/16 v15, 0xf0

    if-ne v14, v15, :cond_a

    and-int/lit8 v13, v13, 0x7

    move v14, v7

    :goto_2
    add-int v15, v11, v14

    if-gt v15, v4, :cond_9

    shr-int/lit8 v15, v11, 0x2

    aget v15, v3, v15

    and-int/lit8 v17, v11, 0x3

    rsub-int/lit8 v17, v17, 0x3

    shl-int/lit8 v17, v17, 0x3

    shr-int v15, v15, v17

    add-int/lit8 v11, v11, 0x1

    and-int/lit16 v6, v15, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_8

    shl-int/lit8 v6, v13, 0x6

    and-int/lit8 v13, v15, 0x3f

    or-int/2addr v6, v13

    if-le v14, v5, :cond_6

    shr-int/lit8 v5, v11, 0x2

    aget v5, v3, v5

    and-int/lit8 v13, v11, 0x3

    const/4 v15, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/2addr v13, v15

    shr-int/2addr v5, v13

    add-int/lit8 v11, v11, 0x1

    and-int/lit16 v13, v5, 0xc0

    if-ne v13, v7, :cond_5

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    const/4 v6, 0x2

    if-le v14, v6, :cond_4

    shr-int/lit8 v6, v11, 0x2

    aget v6, v3, v6

    and-int/lit8 v13, v11, 0x3

    const/16 v18, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/lit8 v13, v13, 0x3

    shr-int/2addr v6, v13

    add-int/lit8 v11, v11, 0x1

    and-int/lit16 v13, v6, 0xc0

    if-ne v13, v7, :cond_3

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    move v13, v5

    goto :goto_3

    :cond_3
    and-int/lit16 v1, v6, 0xff

    invoke-virtual {v0, v1}, Lc2/i;->K2(I)V

    throw v16

    :cond_4
    const/16 v18, 0x3

    move v13, v5

    move v5, v6

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v5}, Lc2/i;->K2(I)V

    throw v16

    :cond_6
    const/16 v18, 0x3

    move v13, v6

    :goto_3
    const/4 v5, 0x2

    :goto_4
    if-le v14, v5, :cond_c

    const/high16 v5, 0x10000

    sub-int/2addr v13, v5

    array-length v5, v10

    if-lt v12, v5, :cond_7

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object v5

    move-object v10, v5

    :cond_7
    add-int/lit8 v5, v12, 0x1

    shr-int/lit8 v6, v13, 0xa

    const v7, 0xd800

    add-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v10, v12

    and-int/lit16 v6, v13, 0x3ff

    const v7, 0xdc00

    or-int v13, v6, v7

    move v12, v5

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v15}, Lc2/i;->K2(I)V

    throw v16

    :cond_9
    const-string v1, " in field name"

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1, v2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v16

    :cond_a
    invoke-virtual {v0, v13}, Lc2/i;->J2(I)V

    throw v16

    :cond_b
    move/from16 v18, v7

    :cond_c
    :goto_5
    array-length v5, v10

    if-lt v12, v5, :cond_d

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object v5

    move-object v10, v5

    :cond_d
    add-int/lit8 v5, v12, 0x1

    int-to-char v6, v13

    aput-char v6, v10, v12

    move v12, v5

    move/from16 v7, v18

    const/4 v5, 0x4

    goto/16 :goto_1

    :cond_e
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v10, v5, v12}, Ljava/lang/String;-><init>([CII)V

    const/4 v5, 0x4

    if-ge v2, v5, :cond_f

    add-int/lit8 v2, v1, -0x1

    aput v9, v3, v2

    :cond_f
    iget-object v0, v0, Lc2/i;->l0:Le2/b;

    invoke-virtual {v0, v4, v3, v1}, Le2/b;->e(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e1()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx1/b;->E:Z

    iget-object v1, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lc2/i;->n0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lc2/i;->n0:Z

    invoke-virtual {p0}, Lc2/i;->m2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget v1, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v0, v1, v3}, Lc2/c;->j(II)Lc2/c;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget v1, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v0, v1, v3}, Lc2/c;->k(II)Lc2/c;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    invoke-virtual {p0}, Lc2/i;->f1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lc2/i;->K0()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public final e2()V
    .locals 3

    invoke-virtual {p0}, Lc2/i;->a3()V

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iput-object v1, v0, Lc2/c;->g:Ljava/lang/Object;

    iget-object v0, v0, Lc2/c;->c:Lc2/c;

    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    return-void

    :cond_0
    const/16 v0, 0x5d

    const/16 v2, 0x7d

    invoke-virtual {p0, v2, v0}, Lx1/b;->V1(CI)V

    throw v1
.end method

.method public final e3(II)Ljava/lang/String;
    .locals 2

    invoke-static {p1, p2}, Lc2/i;->A2(II)I

    move-result p1

    iget-object v0, p0, Lc2/i;->l0:Le2/b;

    invoke-virtual {v0, p1}, Le2/b;->h(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc2/i;->m0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lc2/i;->d3(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->y2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lx1/b;->H:I

    iget-boolean v2, p0, Lc2/i;->n0:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lc2/i;->S2()V

    :cond_1
    invoke-virtual {p0}, Lc2/i;->Y2()I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lx1/b;->close()V

    iput-object v3, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    :cond_2
    iput-object v3, p0, Lx1/b;->G:[B

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_3

    invoke-virtual {p0}, Lc2/i;->e2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_3
    const/16 v5, 0x7d

    if-ne v2, v5, :cond_4

    invoke-virtual {p0}, Lc2/i;->f2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    :goto_0
    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_4
    iget-object v6, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v6}, Lc2/c;->l()Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x2c

    if-ne v2, v6, :cond_7

    invoke-virtual {p0}, Lc2/i;->W2()I

    move-result v2

    iget v3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v6, Lc2/i;->u0:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_8

    if-eq v2, v4, :cond_5

    if-ne v2, v5, :cond_8

    :cond_5
    if-ne v2, v5, :cond_6

    invoke-virtual {p0}, Lc2/i;->f2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lc2/i;->e2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    :goto_1
    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "was expecting comma to separate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v3

    :cond_8
    iget-object v3, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lc2/i;->a3()V

    invoke-virtual {p0, v2}, Lc2/i;->z2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    iget v3, p0, Lx1/b;->u:I

    iput v3, p0, Lc2/i;->p0:I

    iget v3, p0, Lx1/b;->p:I

    iput v3, p0, Lc2/i;->o0:I

    iget v4, p0, Lx1/b;->v:I

    sub-int/2addr v3, v4

    iput v3, p0, Lc2/i;->q0:I

    invoke-virtual {p0, v2}, Lc2/i;->D2(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v3, v2}, Lc2/c;->m(Ljava/lang/String;)V

    iput-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lc2/i;->O2()I

    move-result v1

    invoke-virtual {p0}, Lc2/i;->a3()V

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-ne v1, v2, :cond_a

    iput-boolean v3, p0, Lc2/i;->n0:Z

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_a
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_12

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_11

    const/16 v2, 0x66

    if-eq v1, v2, :cond_10

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_f

    const/16 v2, 0x74

    if-eq v1, v2, :cond_e

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_d

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_c

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_b

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, v1}, Lc2/i;->G2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v0}, Lc2/i;->C2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v3}, Lc2/i;->F2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_3

    :cond_d
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Lc2/i;->x2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_3

    :cond_f
    invoke-virtual {p0}, Lc2/i;->u2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_3

    :cond_10
    invoke-virtual {p0}, Lc2/i;->t2()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_3

    :cond_11
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_3

    :cond_12
    sget-object v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0, v0}, Lc2/i;->F2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_3

    :cond_13
    :goto_2
    invoke-virtual {p0, v1}, Lc2/i;->q2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f2()V
    .locals 3

    invoke-virtual {p0}, Lc2/i;->a3()V

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iput-object v1, v0, Lc2/c;->g:Ljava/lang/Object;

    iget-object v0, v0, Lc2/c;->c:Lc2/c;

    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    return-void

    :cond_0
    const/16 v0, 0x7d

    const/16 v2, 0x5d

    invoke-virtual {p0, v2, v0}, Lx1/b;->V1(CI)V

    throw v1
.end method

.method public final f3(III)Ljava/lang/String;
    .locals 2

    invoke-static {p2, p3}, Lc2/i;->A2(II)I

    move-result p2

    iget-object v0, p0, Lc2/i;->l0:Le2/b;

    invoke-virtual {v0, p1, p2}, Le2/b;->i(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc2/i;->m0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3, v0}, Lc2/i;->d3(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g2(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 10

    invoke-virtual {p0}, Lx1/b;->Q1()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    :cond_0
    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_1
    iget-object v1, p0, Lc2/i;->s0:[B

    iget v2, p0, Lx1/b;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lx1/b;->p:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    const/16 v3, 0x22

    if-gez v2, :cond_3

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Lx1/b;->p:I

    iget v4, p0, Lx1/b;->q:I

    if-lt v1, v4, :cond_4

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_4
    iget-object v1, p0, Lc2/i;->s0:[B

    iget v4, p0, Lx1/b;->p:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lx1/b;->p:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v4

    const/4 v5, 0x1

    if-gez v4, :cond_5

    invoke-virtual {p0, p1, v1, v5}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v4

    :cond_5
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v4

    iget v2, p0, Lx1/b;->p:I

    iget v4, p0, Lx1/b;->q:I

    if-lt v2, v4, :cond_6

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_6
    iget-object v2, p0, Lc2/i;->s0:[B

    iget v4, p0, Lx1/b;->p:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lx1/b;->p:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x2

    if-gez v4, :cond_d

    if-eq v4, v8, :cond_9

    if-ne v2, v3, :cond_8

    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_7
    iget v0, p0, Lx1/b;->p:I

    sub-int/2addr v0, v5

    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_8
    invoke-virtual {p0, p1, v2, v6}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    move v4, v2

    :cond_9
    if-ne v4, v8, :cond_d

    iget v2, p0, Lx1/b;->p:I

    iget v3, p0, Lx1/b;->q:I

    if-lt v2, v3, :cond_a

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_a
    iget-object v2, p0, Lc2/i;->s0:[B

    iget v3, p0, Lx1/b;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lx1/b;->p:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0, p1, v2, v7}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v3

    if-ne v3, v8, :cond_b

    goto :goto_1

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "expected padding character \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v2, v7, p0}, Lx1/b;->a2(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_c
    :goto_1
    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    iget v2, p0, Lx1/b;->p:I

    iget v4, p0, Lx1/b;->q:I

    if-lt v2, v4, :cond_e

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_e
    iget-object v2, p0, Lc2/i;->s0:[B

    iget v4, p0, Lx1/b;->p:I

    add-int/lit8 v9, v4, 0x1

    iput v9, p0, Lx1/b;->p:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v4

    if-gez v4, :cond_12

    if-eq v4, v8, :cond_11

    if-ne v2, v3, :cond_10

    shr-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->i(I)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p0

    return-object p0

    :cond_f
    iget v0, p0, Lx1/b;->p:I

    sub-int/2addr v0, v5

    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_10
    invoke-virtual {p0, p1, v2, v7}, Lx1/b;->M1(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    move v4, v2

    :cond_11
    if-ne v4, v8, :cond_12

    shr-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->i(I)V

    goto/16 :goto_0

    :cond_12
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->d(I)V

    goto/16 :goto_0
.end method

.method public final g3(IIII)Ljava/lang/String;
    .locals 2

    invoke-static {p3, p4}, Lc2/i;->A2(II)I

    move-result p3

    iget-object v0, p0, Lc2/i;->l0:Le2/b;

    invoke-virtual {v0, p1, p2, p3}, Le2/b;->j(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc2/i;->m0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3, p4}, Lc2/i;->A2(II)I

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p4, v0}, Lc2/i;->d3(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h2(I)I
    .locals 7

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x7f

    if-le p1, v0, :cond_6

    and-int/lit16 v0, p1, 0xe0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc0

    if-ne v0, v4, :cond_0

    and-int/lit8 p1, p1, 0x1f

    move v0, v2

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0xf0

    const/16 v4, 0xe0

    if-ne v0, v4, :cond_1

    and-int/lit8 p1, p1, 0xf

    move v0, v1

    goto :goto_0

    :cond_1
    and-int/lit16 v0, p1, 0xf8

    const/16 v4, 0xf0

    if-ne v0, v4, :cond_5

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0}, Lc2/i;->i3()I

    move-result v4

    and-int/lit16 v5, v4, 0xc0

    const/16 v6, 0x80

    if-ne v5, v6, :cond_4

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr p1, v4

    if-le v0, v2, :cond_6

    invoke-virtual {p0}, Lc2/i;->i3()I

    move-result v2

    and-int/lit16 v4, v2, 0xc0

    if-ne v4, v6, :cond_3

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr p1, v2

    if-le v0, v1, :cond_6

    invoke-virtual {p0}, Lc2/i;->i3()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v6, :cond_2

    shl-int/lit8 p0, p1, 0x6

    and-int/lit8 p1, v0, 0x3f

    or-int/2addr p1, p0

    goto :goto_1

    :cond_2
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1}, Lc2/i;->K2(I)V

    throw v3

    :cond_3
    and-int/lit16 p1, v2, 0xff

    invoke-virtual {p0, p1}, Lc2/i;->K2(I)V

    throw v3

    :cond_4
    and-int/lit16 p1, v4, 0xff

    invoke-virtual {p0, p1}, Lc2/i;->K2(I)V

    throw v3

    :cond_5
    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lc2/i;->J2(I)V

    throw v3

    :cond_6
    :goto_1
    return p1
.end method

.method public final h3(II[II)Ljava/lang/String;
    .locals 1

    array-length v0, p3

    if-lt p1, v0, :cond_0

    array-length v0, p3

    invoke-static {p3, v0}, Lx1/b;->Z1([II)[I

    move-result-object p3

    iput-object p3, p0, Lc2/i;->m0:[I

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, p4}, Lc2/i;->A2(II)I

    move-result p2

    aput p2, p3, p1

    iget-object p1, p0, Lc2/i;->l0:Le2/b;

    invoke-virtual {p1, p3, v0}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0, p4, p3}, Lc2/i;->d3(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final i1(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;)I
    .locals 2

    iget-boolean v0, p0, Lc2/i;->n0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/d;->b()[B

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lc2/i;->H2(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;[B)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/d;->d([B)V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/d;->d([B)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lc2/i;->J(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/io/c;->write([B)V

    array-length p0, p0

    return p0
.end method

.method public final i2(I)I
    .locals 4

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-ne v1, v3, :cond_1

    and-int/lit8 p0, p1, 0x1f

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, v0, 0x3f

    or-int/2addr p0, p1

    return p0

    :cond_1
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1, v2}, Lc2/i;->L2(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i3()I
    .locals 3

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final j2(I)I
    .locals 5

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_0
    and-int/lit8 p1, p1, 0xf

    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_3

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    iget v0, p0, Lx1/b;->q:I

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_1
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_2

    shl-int/lit8 p0, p1, 0x6

    and-int/lit8 p1, v0, 0x3f

    or-int/2addr p0, p1

    return p0

    :cond_2
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1, v2}, Lc2/i;->L2(II)V

    throw v3

    :cond_3
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1, v2}, Lc2/i;->L2(II)V

    throw v3
.end method

.method public final j3(IIII[I)Ljava/lang/String;
    .locals 4

    :goto_0
    sget-object v0, Lc2/i;->D0:[I

    aget v0, v0, p3

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/16 v0, 0x22

    if-ne p3, v0, :cond_3

    if-lez p4, :cond_1

    array-length p3, p5

    if-lt p1, p3, :cond_0

    array-length p3, p5

    invoke-static {p5, p3}, Lx1/b;->Z1([II)[I

    move-result-object p3

    iput-object p3, p0, Lc2/i;->m0:[I

    move-object p5, p3

    :cond_0
    add-int/lit8 p3, p1, 0x1

    invoke-static {p2, p4}, Lc2/i;->A2(II)I

    move-result p2

    aput p2, p5, p1

    move p1, p3

    :cond_1
    iget-object p2, p0, Lc2/i;->l0:Le2/b;

    invoke-virtual {p2, p5, p1}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1, p4, p5}, Lc2/i;->d3(II[I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    return-object p2

    :cond_3
    const/16 v0, 0x5c

    if-eq p3, v0, :cond_4

    const-string v0, "name"

    invoke-virtual {p0, p3, v0}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lc2/i;->N1()C

    move-result p3

    :goto_1
    const/16 v0, 0x7f

    if-le p3, v0, :cond_a

    const/4 v0, 0x0

    if-lt p4, v1, :cond_6

    array-length p4, p5

    if-lt p1, p4, :cond_5

    array-length p4, p5

    invoke-static {p5, p4}, Lx1/b;->Z1([II)[I

    move-result-object p4

    iput-object p4, p0, Lc2/i;->m0:[I

    move-object p5, p4

    :cond_5
    add-int/lit8 p4, p1, 0x1

    aput p2, p5, p1

    move p1, p4

    move p2, v0

    move p4, p2

    :cond_6
    const/16 v3, 0x800

    shl-int/lit8 p2, p2, 0x8

    if-ge p3, v3, :cond_7

    shr-int/lit8 v0, p3, 0x6

    or-int/lit16 v0, v0, 0xc0

    or-int/2addr p2, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_7
    shr-int/lit8 v3, p3, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr p2, v3

    add-int/lit8 p4, p4, 0x1

    if-lt p4, v1, :cond_9

    array-length p4, p5

    if-lt p1, p4, :cond_8

    array-length p4, p5

    invoke-static {p5, p4}, Lx1/b;->Z1([II)[I

    move-result-object p4

    iput-object p4, p0, Lc2/i;->m0:[I

    move-object p5, p4

    :cond_8
    add-int/lit8 p4, p1, 0x1

    aput p2, p5, p1

    move p1, p4

    move p4, v0

    goto :goto_2

    :cond_9
    move v0, p2

    :goto_2
    shl-int/lit8 p2, v0, 0x8

    shr-int/lit8 v0, p3, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    or-int/2addr p2, v0

    add-int/2addr p4, v2

    :goto_3
    and-int/lit8 p3, p3, 0x3f

    or-int/lit16 p3, p3, 0x80

    :cond_a
    if-ge p4, v1, :cond_b

    add-int/lit8 p4, p4, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p3

    goto :goto_4

    :cond_b
    array-length p4, p5

    if-lt p1, p4, :cond_c

    array-length p4, p5

    invoke-static {p5, p4}, Lx1/b;->Z1([II)[I

    move-result-object p5

    iput-object p5, p0, Lc2/i;->m0:[I

    :cond_c
    add-int/lit8 p4, p1, 0x1

    aput p2, p5, p1

    move p2, p3

    move p1, p4

    move p4, v2

    :goto_4
    iget p3, p0, Lx1/b;->p:I

    iget v0, p0, Lx1/b;->q:I

    if-lt p3, v0, :cond_e

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_5

    :cond_d
    const-string p1, " in field name"

    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1, p2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    const/4 p0, 0x0

    throw p0

    :cond_e
    :goto_5
    iget-object p3, p0, Lc2/i;->s0:[B

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lx1/b;->p:I

    aget-byte p3, p3, v0

    and-int/lit16 p3, p3, 0xff

    goto/16 :goto_0
.end method

.method public final k2(I)I
    .locals 6

    and-int/lit8 p1, p1, 0xf

    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v1, v0, v1

    and-int/lit16 v3, v1, 0xc0

    const/4 v4, 0x0

    const/16 v5, 0x80

    if-ne v3, v5, :cond_1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lx1/b;->p:I

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xc0

    if-ne v2, v5, :cond_0

    shl-int/lit8 p0, p1, 0x6

    and-int/lit8 p1, v0, 0x3f

    or-int/2addr p0, p1

    return p0

    :cond_0
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1, v1}, Lc2/i;->L2(II)V

    throw v4

    :cond_1
    and-int/lit16 p1, v1, 0xff

    invoke-virtual {p0, p1, v2}, Lc2/i;->L2(II)V

    throw v4
.end method

.method public final k3(III)Ljava/lang/String;
    .locals 6

    iget-object v5, p0, Lc2/i;->m0:[I

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc2/i;->j3(IIII[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l2(I)I
    .locals 5

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_0
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_5

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    iget v0, p0, Lx1/b;->q:I

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_1
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_4

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    iget v0, p0, Lx1/b;->q:I

    if-lt v2, v0, :cond_2

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_2
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_3

    shl-int/lit8 p0, p1, 0x6

    and-int/lit8 p1, v0, 0x3f

    or-int/2addr p0, p1

    const/high16 p1, 0x10000

    sub-int/2addr p0, p1

    return p0

    :cond_3
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1, v2}, Lc2/i;->L2(II)V

    throw v3

    :cond_4
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1, v2}, Lc2/i;->L2(II)V

    throw v3

    :cond_5
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1, v2}, Lc2/i;->L2(II)V

    throw v3
.end method

.method public final l3(IIII)Ljava/lang/String;
    .locals 6

    iget-object v5, p0, Lc2/i;->m0:[I

    const/4 v0, 0x0

    aput p1, v5, v0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lc2/i;->j3(IIII[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m2()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    iget v0, p0, Lx1/b;->p:I

    :cond_0
    iget-object v1, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v2

    iget v3, p0, Lx1/b;->q:I

    array-length v4, v2

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lc2/i;->s0:[B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v0, v3, :cond_4

    aget-byte v7, v4, v0

    and-int/lit16 v7, v7, 0xff

    sget-object v8, Lc2/i;->C0:[I

    aget v8, v8, v7

    if-eqz v8, :cond_3

    const/16 v3, 0x22

    if-ne v7, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->p:I

    iput v6, v1, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget p0, v1, Lcom/fasterxml/jackson/core/util/j;->g:I

    if-lez p0, :cond_1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    if-nez v6, :cond_2

    const-string p0, ""

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    iget-object v0, v1, Lcom/fasterxml/jackson/core/util/j;->h:[C

    invoke-direct {p0, v0, v5, v6}, Ljava/lang/String;-><init>([CII)V

    :goto_1
    iput-object p0, v1, Lcom/fasterxml/jackson/core/util/j;->j:Ljava/lang/String;

    :goto_2
    return-object p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    aput-char v7, v2, v6

    move v6, v8

    goto :goto_0

    :cond_4
    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p0, v2, v6}, Lc2/i;->o2([CI)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n2()V
    .locals 8

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    iget v0, p0, Lx1/b;->p:I

    :cond_0
    iget-object v1, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v2

    iget v3, p0, Lx1/b;->q:I

    array-length v4, v2

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lc2/i;->s0:[B

    const/4 v5, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-byte v6, v4, v0

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lc2/i;->C0:[I

    aget v7, v7, v6

    if-eqz v7, :cond_1

    const/16 v3, 0x22

    if-ne v6, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->p:I

    iput v5, v1, Lcom/fasterxml/jackson/core/util/j;->i:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v5, 0x1

    int-to-char v6, v6

    aput-char v6, v2, v5

    move v5, v7

    goto :goto_0

    :cond_2
    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p0, v2, v5}, Lc2/i;->o2([CI)V

    return-void
.end method

.method public final o2([CI)V
    .locals 8

    iget-object v0, p0, Lc2/i;->s0:[B

    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lc2/i;->s2()V

    iget v1, p0, Lx1/b;->p:I

    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    iget-object v4, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-lt p2, v2, :cond_1

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move p2, v3

    :cond_1
    iget v2, p0, Lx1/b;->q:I

    array-length v5, p1

    sub-int/2addr v5, p2

    add-int/2addr v5, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_c

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    sget-object v6, Lc2/i;->C0:[I

    aget v6, v6, v1

    if-eqz v6, :cond_b

    iput v5, p0, Lx1/b;->p:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2

    iput p2, v4, Lcom/fasterxml/jackson/core/util/j;->i:I

    return-void

    :cond_2
    const/4 v2, 0x1

    if-eq v6, v2, :cond_9

    const/4 v2, 0x2

    if-eq v6, v2, :cond_8

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/4 v2, 0x4

    if-eq v6, v2, :cond_4

    const/16 v2, 0x20

    if-ge v1, v2, :cond_3

    const-string v2, "string value"

    invoke-virtual {p0, v1, v2}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Lc2/i;->I2(I)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    invoke-virtual {p0, v1}, Lc2/i;->l2(I)I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    shr-int/lit8 v5, v1, 0xa

    const v6, 0xd800

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, p2

    array-length p2, p1

    if-lt v2, p2, :cond_5

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move p2, v3

    goto :goto_2

    :cond_5
    move p2, v2

    :goto_2
    and-int/lit16 v1, v1, 0x3ff

    const v2, 0xdc00

    or-int/2addr v1, v2

    goto :goto_3

    :cond_6
    iget v6, p0, Lx1/b;->q:I

    sub-int/2addr v6, v5

    if-lt v6, v2, :cond_7

    invoke-virtual {p0, v1}, Lc2/i;->k2(I)I

    move-result v1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Lc2/i;->j2(I)I

    move-result v1

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v1}, Lc2/i;->i2(I)I

    move-result v1

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lc2/i;->N1()C

    move-result v1

    :goto_3
    array-length v2, p1

    if-lt p2, v2, :cond_a

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    goto :goto_4

    :cond_a
    move v3, p2

    :goto_4
    add-int/lit8 p2, v3, 0x1

    int-to-char v1, v1

    aput-char v1, p1, v3

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v6, p2, 0x1

    int-to-char v1, v1

    aput-char v1, p1, p2

    move v1, v5

    move p2, v6

    goto/16 :goto_1

    :cond_c
    iput v1, p0, Lx1/b;->p:I

    goto/16 :goto_0
.end method

.method public final p2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    const/16 p3, 0x49

    const/4 v0, 0x0

    if-ne p1, p3, :cond_7

    iget p1, p0, Lx1/b;->p:I

    iget p3, p0, Lx1/b;->q:I

    if-lt p1, p3, :cond_1

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lx1/c;->x1(Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lc2/i;->s0:[B

    iget p3, p0, Lx1/b;->p:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lx1/b;->p:I

    aget-byte p1, p1, p3

    const/16 p3, 0x4e

    if-ne p1, p3, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "-INF"

    goto :goto_1

    :cond_2
    const-string p1, "+INF"

    goto :goto_1

    :cond_3
    const/16 p3, 0x6e

    if-ne p1, p3, :cond_7

    if-eqz p2, :cond_4

    const-string p1, "-Infinity"

    goto :goto_1

    :cond_4
    const-string p1, "+Infinity"

    :goto_1
    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1}, Lc2/i;->v2(ILjava/lang/String;)V

    iget p3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Lc2/i;->w0:I

    and-int/2addr p3, v1

    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    const-wide/high16 p2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_2

    :cond_5
    const-wide/high16 p2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lx1/b;->b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p2, "Non-standard token \'%s\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p0, p1, p2}, Lx1/c;->u1(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_7
    sget-object p3, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p3

    if-nez p3, :cond_9

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    const/16 p1, 0x2b

    const-string p2, "JSON spec does not allow numbers to have plus signs: enable `JsonReadFeature.ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS` to allow"

    invoke-virtual {p0, p1, p2}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    goto :goto_4

    :cond_a
    const-string p2, "expected digit (0-9) for valid numeric value"

    :goto_4
    invoke-virtual {p0, p1, p2}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0
.end method

.method public final q2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 12

    const/4 v0, 0x0

    const/16 v1, 0x27

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_a

    const/16 v1, 0x49

    sget v4, Lc2/i;->w0:I

    if-eq p1, v1, :cond_8

    const/16 v1, 0x4e

    if-eq p1, v1, :cond_6

    const/16 v1, 0x5d

    if-eq p1, v1, :cond_3

    const/16 v1, 0x7d

    if-eq p1, v1, :cond_5

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_4

    goto/16 :goto_5

    :cond_0
    iget p1, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lx1/c;->x1(Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v2

    :cond_2
    :goto_0
    iget-object p1, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx1/b;->p:I

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1, v0, v3}, Lc2/i;->p2(IZZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Lc2/i;->x0:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget p1, p0, Lx1/b;->p:I

    sub-int/2addr p1, v3

    iput p1, p0, Lx1/b;->p:I

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_5
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "NaN"

    invoke-virtual {p0, v3, p1}, Lc2/i;->v2(ILjava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lx1/b;->b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p1, "Non-standard token \'NaN\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_8
    const-string p1, "Infinity"

    invoke-virtual {p0, v3, p1}, Lc2/i;->v2(ILjava/lang/String;)V

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_9

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, p1, v0, v1}, Lx1/b;->b2(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p1, "Non-standard token \'Infinity\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_a
    iget v4, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v5, Lc2/i;->y0:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_19

    iget-object v4, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object p1

    iget-object v5, p0, Lc2/i;->s0:[B

    move v6, v0

    :cond_b
    :goto_1
    iget v7, p0, Lx1/b;->p:I

    iget v8, p0, Lx1/b;->q:I

    if-lt v7, v8, :cond_c

    invoke-virtual {p0}, Lc2/i;->s2()V

    :cond_c
    array-length v7, p1

    if-lt v6, v7, :cond_d

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move v6, v0

    :cond_d
    iget v7, p0, Lx1/b;->q:I

    iget v8, p0, Lx1/b;->p:I

    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/2addr v9, v8

    if-ge v9, v7, :cond_e

    move v7, v9

    :cond_e
    :goto_2
    iget v8, p0, Lx1/b;->p:I

    if-ge v8, v7, :cond_b

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lx1/b;->p:I

    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    if-ne v8, v1, :cond_f

    iput v6, v4, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_f
    sget-object v10, Lc2/i;->C0:[I

    aget v10, v10, v8

    if-eqz v10, :cond_18

    const/16 v11, 0x22

    if-eq v8, v11, :cond_18

    if-eq v10, v3, :cond_16

    const/4 v7, 0x2

    if-eq v10, v7, :cond_15

    const/4 v11, 0x3

    if-eq v10, v11, :cond_13

    const/4 v7, 0x4

    if-eq v10, v7, :cond_11

    const/16 p1, 0x20

    if-ge v8, p1, :cond_10

    const-string p1, "string value"

    invoke-virtual {p0, v8, p1}, Lx1/b;->W1(ILjava/lang/String;)V

    :cond_10
    invoke-virtual {p0, v8}, Lc2/i;->I2(I)V

    throw v2

    :cond_11
    invoke-virtual {p0, v8}, Lc2/i;->l2(I)I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0xa

    const v10, 0xd800

    or-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, p1, v6

    array-length v6, p1

    if-lt v8, v6, :cond_12

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move v6, v0

    goto :goto_3

    :cond_12
    move v6, v8

    :goto_3
    and-int/lit16 v7, v7, 0x3ff

    const v8, 0xdc00

    or-int/2addr v7, v8

    goto :goto_4

    :cond_13
    iget v10, p0, Lx1/b;->q:I

    sub-int/2addr v10, v9

    if-lt v10, v7, :cond_14

    invoke-virtual {p0, v8}, Lc2/i;->k2(I)I

    move-result v7

    goto :goto_4

    :cond_14
    invoke-virtual {p0, v8}, Lc2/i;->j2(I)I

    move-result v7

    goto :goto_4

    :cond_15
    invoke-virtual {p0, v8}, Lc2/i;->i2(I)I

    move-result v7

    goto :goto_4

    :cond_16
    invoke-virtual {p0}, Lc2/i;->N1()C

    move-result v7

    :goto_4
    array-length v8, p1

    if-lt v6, v8, :cond_17

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object p1

    move v6, v0

    :cond_17
    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    aput-char v7, p1, v6

    move v6, v8

    goto/16 :goto_1

    :cond_18
    add-int/lit8 v9, v6, 0x1

    int-to-char v8, v8

    aput-char v8, p1, v6

    move v6, v9

    goto/16 :goto_2

    :cond_19
    :goto_5
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc2/i;->M2(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_1a
    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expected a valid value "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v2
.end method

.method public final r2()Z
    .locals 7

    iget-object v0, p0, Lc2/i;->r0:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lc2/i;->s0:[B

    array-length v3, v2

    if-nez v3, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    iget v2, p0, Lx1/b;->q:I

    iget-wide v3, p0, Lx1/b;->t:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lx1/b;->t:J

    iget v3, p0, Lx1/b;->v:I

    sub-int/2addr v3, v2

    iput v3, p0, Lx1/b;->v:I

    iget v3, p0, Lc2/i;->o0:I

    sub-int/2addr v3, v2

    iput v3, p0, Lc2/i;->o0:I

    iput v1, p0, Lx1/b;->p:I

    iput v0, p0, Lx1/b;->q:I

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lc2/i;->J1()V

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lc2/i;->s0:[B

    array-length p0, p0

    const-string v2, " bytes"

    invoke-static {v1, p0, v2}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final s2()V
    .locals 1

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lx1/c;->v1()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t2()V
    .locals 4

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lx1/b;->q:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lc2/i;->s0:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x73

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lx1/b;->p:I

    return-void

    :cond_1
    const-string v0, "false"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lc2/i;->w2(ILjava/lang/String;)V

    return-void
.end method

.method public final u2()V
    .locals 4

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lx1/b;->q:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lc2/i;->s0:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x75

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_1

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    :cond_0
    iput v2, p0, Lx1/b;->p:I

    return-void

    :cond_1
    const-string v0, "null"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lc2/i;->w2(ILjava/lang/String;)V

    return-void
.end method

.method public final v2(ILjava/lang/String;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lx1/b;->p:I

    add-int/2addr v1, v0

    iget v2, p0, Lx1/b;->q:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lc2/i;->w2(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lc2/i;->s0:[B

    iget v2, p0, Lx1/b;->p:I

    aget-byte v1, v1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lx1/b;->p:I

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lc2/i;->s0:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lc2/i;->h2(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc2/i;->M2(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc2/i;->M2(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public final w2(ILjava/lang/String;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lc2/i;->s0:[B

    iget v2, p0, Lx1/b;->p:I

    aget-byte v1, v1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lx1/b;->p:I

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lx1/b;->q:I

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Lc2/i;->r2()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lc2/i;->s0:[B

    iget v1, p0, Lx1/b;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lc2/i;->h2(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc2/i;->M2(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc2/i;->M2(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public final x2()V
    .locals 4

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lx1/b;->q:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lc2/i;->s0:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    :cond_0
    iput v2, p0, Lx1/b;->p:I

    return-void

    :cond_1
    const-string v0, "true"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lc2/i;->w2(ILjava/lang/String;)V

    return-void
.end method

.method public final y2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx1/b;->E:Z

    iget-object v0, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    iput-object v1, p0, Lx1/b;->A:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    iget v2, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v1, v2, v3}, Lc2/c;->j(II)Lc2/c;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lx1/b;->z:Lc2/c;

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lx1/b;->z:Lc2/c;

    iget v2, p0, Lx1/b;->x:I

    iget v3, p0, Lx1/b;->y:I

    invoke-virtual {v1, v2, v3}, Lc2/c;->k(II)Lc2/c;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final z2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    const/16 v0, 0x22

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lc2/i;->n0:Z

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x2b

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_7

    const/16 v0, 0x66

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x74

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lc2/i;->G2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lc2/i;->C2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lc2/i;->F2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    iget v0, p0, Lx1/b;->x:I

    iget v1, p0, Lx1/b;->y:I

    invoke-virtual {p1, v0, v1}, Lc2/c;->k(II)Lc2/c;

    move-result-object p1

    iput-object p1, p0, Lx1/b;->z:Lc2/c;

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lc2/i;->x2()V

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lc2/i;->u2()V

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lc2/i;->t2()V

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    iget v0, p0, Lx1/b;->x:I

    iget v1, p0, Lx1/b;->y:I

    invoke-virtual {p1, v0, v1}, Lc2/c;->j(II)Lc2/c;

    move-result-object p1

    iput-object p1, p0, Lx1/b;->z:Lc2/c;

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_0
    invoke-virtual {p0, p1}, Lc2/i;->q2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v2}, Lc2/i;->F2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
