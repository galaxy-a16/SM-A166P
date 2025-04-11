.class public abstract Ld2/d;
.super Ld2/c;
.source "SourceFile"


# static fields
.field public static final A0:I

.field public static final B0:I

.field public static final C0:I

.field public static final D0:I

.field public static final E0:I

.field public static final F0:I

.field public static final G0:I

.field public static final H0:[I

.field public static final I0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Ld2/d;->A0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Ld2/d;->B0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Ld2/d;->C0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Ld2/d;->D0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Ld2/d;->E0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Ld2/d;->F0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Ld2/d;->G0:I

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->f:[I

    sput-object v0, Ld2/d;->H0:[I

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->e:[I

    sput-object v0, Ld2/d;->I0:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILe2/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ld2/c;-><init>(Lcom/fasterxml/jackson/core/io/d;ILe2/b;)V

    return-void
.end method


# virtual methods
.method public final A2(IIII)I
    .locals 3

    and-int/lit16 v0, p2, 0xc0

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_2

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xc0

    if-ne p2, v2, :cond_1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    and-int/lit16 p2, p4, 0xc0

    if-ne p2, v2, :cond_0

    shl-int/lit8 p0, p1, 0x6

    and-int/lit8 p1, p4, 0x3f

    or-int/2addr p0, p1

    const/high16 p1, 0x10000

    sub-int/2addr p0, p1

    return p0

    :cond_0
    and-int/lit16 p1, p4, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    throw v1

    :cond_1
    and-int/lit16 p1, p3, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    throw v1

    :cond_2
    and-int/lit16 p1, p2, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    throw v1
.end method

.method public final B2()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    sget-object v2, Ld2/d;->I0:[I

    aget v3, v2, v0

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-nez v3, :cond_10

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aget v6, v2, v1

    const/4 v7, 0x1

    if-nez v6, :cond_e

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Ld2/d;->o3(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v6, v2, v3

    const/4 v8, 0x2

    if-nez v6, :cond_c

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aget v6, v2, v1

    const/4 v9, 0x3

    if-nez v6, :cond_a

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Ld2/d;->o3(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v6, v2, v3

    const/4 v10, 0x4

    if-nez v6, :cond_8

    iput v0, p0, Ld2/c;->n0:I

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aget v6, v2, v1

    if-nez v6, :cond_6

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    aget v6, v2, v0

    if-nez v6, :cond_5

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Ld2/d;->o3(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v6, v2, v3

    if-nez v6, :cond_4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aget v6, v2, v1

    if-nez v6, :cond_3

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v3}, Ld2/d;->o3(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v11, v2, v3

    if-eqz v11, :cond_0

    if-ne v3, v5, :cond_7

    iput v6, p0, Lx1/b;->p:I

    iget v2, p0, Ld2/c;->n0:I

    invoke-virtual {p0, v2, v0, v1, v7}, Ld2/c;->k2(IIII)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {p0, v6}, Ld2/d;->o3(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aget v7, v2, v6

    if-eqz v7, :cond_1

    if-ne v6, v5, :cond_7

    iput v3, p0, Lx1/b;->p:I

    iget v2, p0, Ld2/c;->n0:I

    invoke-virtual {p0, v2, v0, v1, v8}, Ld2/c;->k2(IIII)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v6

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v3}, Ld2/d;->o3(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    if-eqz v2, :cond_2

    if-ne v3, v5, :cond_7

    iput v6, p0, Lx1/b;->p:I

    iget v2, p0, Ld2/c;->n0:I

    invoke-virtual {p0, v2, v0, v1, v9}, Ld2/c;->k2(IIII)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p0, v6}, Ld2/d;->o3(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v5, :cond_7

    iput v2, p0, Lx1/b;->p:I

    iget v2, p0, Ld2/c;->n0:I

    invoke-virtual {p0, v2, v0, v1, v10}, Ld2/c;->k2(IIII)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-ne v1, v5, :cond_7

    iput v3, p0, Lx1/b;->p:I

    iget v1, p0, Ld2/c;->n0:I

    invoke-virtual {p0, v1, v0, v10}, Ld2/c;->j2(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    if-ne v3, v5, :cond_7

    iput v1, p0, Lx1/b;->p:I

    iget v1, p0, Ld2/c;->n0:I

    invoke-virtual {p0, v1, v0, v9}, Ld2/c;->j2(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    if-ne v0, v5, :cond_7

    iput v3, p0, Lx1/b;->p:I

    iget v0, p0, Ld2/c;->n0:I

    invoke-virtual {p0, v0, v1, v8}, Ld2/c;->j2(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    if-ne v1, v5, :cond_7

    iput v0, p0, Lx1/b;->p:I

    iget v0, p0, Ld2/c;->n0:I

    invoke-virtual {p0, v0, v3, v7}, Ld2/c;->j2(III)Ljava/lang/String;

    move-result-object v4

    :cond_7
    :goto_0
    return-object v4

    :cond_8
    if-ne v3, v5, :cond_9

    iput v1, p0, Lx1/b;->p:I

    invoke-virtual {p0, v0, v10}, Ld2/c;->i2(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v4

    :cond_a
    if-ne v1, v5, :cond_b

    iput v3, p0, Lx1/b;->p:I

    invoke-virtual {p0, v0, v9}, Ld2/c;->i2(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v4

    :cond_c
    if-ne v3, v5, :cond_d

    iput v1, p0, Lx1/b;->p:I

    invoke-virtual {p0, v0, v8}, Ld2/c;->i2(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v4

    :cond_e
    if-ne v1, v5, :cond_f

    iput v3, p0, Lx1/b;->p:I

    invoke-virtual {p0, v0, v7}, Ld2/c;->i2(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    return-object v4

    :cond_10
    if-ne v0, v5, :cond_11

    iput v1, p0, Lx1/b;->p:I

    const-string p0, ""

    return-object p0

    :cond_11
    return-object v4
.end method

.method public final C2(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8

    iget-object v0, p0, Ld2/c;->l0:[I

    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    const/16 v3, 0x9

    if-lt v1, v2, :cond_0

    iput p1, p0, Ld2/c;->m0:I

    iput p2, p0, Ld2/c;->o0:I

    iput p3, p0, Ld2/c;->p0:I

    iput v3, p0, Ld2/c;->u0:I

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_5

    if-lez p3, :cond_2

    array-length v1, v0

    if-lt p1, v1, :cond_1

    array-length v1, v0

    invoke-static {v0, v1}, Lx1/b;->Z1([II)[I

    move-result-object v0

    iput-object v0, p0, Ld2/c;->l0:[I

    :cond_1
    add-int/lit8 v1, p1, 0x1

    invoke-static {p2, p3}, Ld2/c;->l2(II)I

    move-result p2

    aput p2, v0, p1

    move p1, v1

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const-string p1, ""

    invoke-virtual {p0, p1}, Ld2/c;->h2(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    iget-object p2, p0, Ld2/c;->Z:Le2/b;

    invoke-virtual {p2, v0, p1}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p0, p1, p3, v0}, Ld2/c;->e2(II[I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-virtual {p0, p2}, Ld2/c;->h2(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v2, 0x1

    const/16 v4, 0x22

    const/4 v5, 0x4

    if-eq v1, v4, :cond_e

    sget-object v4, Ld2/d;->I0:[I

    aget v4, v4, v1

    if-eqz v4, :cond_e

    const/16 v4, 0x5c

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eq v1, v4, :cond_6

    const-string v3, "name"

    invoke-virtual {p0, v1, v3}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_4

    :cond_6
    iget v1, p0, Lx1/b;->q:I

    iget v4, p0, Lx1/b;->p:I

    sub-int/2addr v1, v4

    const/4 v4, 0x5

    if-ge v1, v4, :cond_7

    const/4 v1, -0x1

    invoke-virtual {p0, v6, v1}, Ld2/d;->u2(II)I

    move-result v1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Ld2/d;->t2()I

    move-result v1

    :goto_2
    if-gez v1, :cond_8

    iput v7, p0, Ld2/c;->u0:I

    iput v3, p0, Ld2/c;->v0:I

    iput p1, p0, Ld2/c;->m0:I

    iput p2, p0, Ld2/c;->o0:I

    iput p3, p0, Ld2/c;->p0:I

    :goto_3
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_8
    :goto_4
    const/16 v3, 0x7f

    if-le v1, v3, :cond_e

    if-lt p3, v5, :cond_a

    array-length p3, v0

    if-lt p1, p3, :cond_9

    array-length p3, v0

    invoke-static {v0, p3}, Lx1/b;->Z1([II)[I

    move-result-object p3

    iput-object p3, p0, Ld2/c;->l0:[I

    move-object v0, p3

    :cond_9
    add-int/lit8 p3, p1, 0x1

    aput p2, v0, p1

    move p1, p3

    move p2, v6

    move p3, p2

    :cond_a
    shl-int/2addr p2, v7

    const/16 v3, 0x800

    if-ge v1, v3, :cond_b

    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr p2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_b
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr p2, v3

    add-int/lit8 p3, p3, 0x1

    if-lt p3, v5, :cond_d

    array-length p3, v0

    if-lt p1, p3, :cond_c

    array-length p3, v0

    invoke-static {v0, p3}, Lx1/b;->Z1([II)[I

    move-result-object v0

    iput-object v0, p0, Ld2/c;->l0:[I

    :cond_c
    add-int/lit8 p3, p1, 0x1

    aput p2, v0, p1

    move p1, p3

    move p3, v6

    goto :goto_5

    :cond_d
    move v6, p2

    :goto_5
    shl-int/lit8 p2, v6, 0x8

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    or-int/2addr p2, v3

    add-int/2addr p3, v2

    :goto_6
    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    :cond_e
    if-ge p3, v5, :cond_f

    add-int/lit8 p3, p3, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v1

    goto/16 :goto_0

    :cond_f
    array-length p3, v0

    if-lt p1, p3, :cond_10

    array-length p3, v0

    invoke-static {v0, p3}, Lx1/b;->Z1([II)[I

    move-result-object p3

    iput-object p3, p0, Ld2/c;->l0:[I

    move-object v0, p3

    :cond_10
    add-int/lit8 p3, p1, 0x1

    aput p2, v0, p1

    move p1, p3

    move p2, v1

    move p3, v2

    goto/16 :goto_0
.end method

.method public final D2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    iget-object v1, v0, Lcom/fasterxml/jackson/core/util/j;->h:[C

    iget v2, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget v3, p0, Lx1/b;->p:I

    iget v4, p0, Lx1/b;->q:I

    add-int/lit8 v4, v4, -0x5

    :cond_0
    :goto_0
    iget v5, p0, Lx1/b;->q:I

    const/16 v6, 0x2d

    if-lt v3, v5, :cond_1

    iput v3, p0, Lx1/b;->p:I

    iput v6, p0, Ld2/c;->u0:I

    iput v2, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_1
    array-length v5, v1

    const/4 v7, 0x0

    if-lt v2, v5, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v1

    move v2, v7

    :cond_2
    iget v5, p0, Lx1/b;->q:I

    array-length v8, v1

    sub-int/2addr v8, v2

    add-int/2addr v8, v3

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_0

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v3}, Ld2/d;->o3(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    sget-object v9, Ld2/d;->H0:[I

    aget v9, v9, v3

    if-eqz v9, :cond_e

    const/16 v10, 0x22

    if-eq v3, v10, :cond_e

    const/4 v5, 0x1

    if-lt v8, v4, :cond_5

    iput v8, p0, Lx1/b;->p:I

    iput v2, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget v1, p0, Lx1/b;->q:I

    if-ge v8, v1, :cond_3

    move v7, v5

    :cond_3
    invoke-virtual {p0, v3, v9, v7}, Ld2/d;->v2(IIZ)Z

    move-result v1

    if-nez v1, :cond_4

    iput v6, p0, Ld2/c;->v0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_4
    iget-object v1, v0, Lcom/fasterxml/jackson/core/util/j;->h:[C

    iget v2, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget v3, p0, Lx1/b;->p:I

    goto :goto_0

    :cond_5
    if-eq v9, v5, :cond_c

    const/4 v5, 0x2

    if-eq v9, v5, :cond_b

    const/4 v5, 0x3

    if-eq v9, v5, :cond_a

    const/4 v5, 0x4

    if-eq v9, v5, :cond_8

    const/16 v5, 0x20

    if-ge v3, v5, :cond_6

    const-string v5, "string value"

    invoke-virtual {p0, v3, v5}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    if-ge v3, v5, :cond_7

    invoke-virtual {p0, v3}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_8
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {p0, v8}, Ld2/d;->o3(I)B

    move-result v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v5}, Ld2/d;->o3(I)B

    move-result v5

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v8}, Ld2/d;->o3(I)B

    move-result v8

    invoke-virtual {p0, v3, v6, v5, v8}, Ld2/d;->A2(IIII)I

    move-result v3

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v6, v3, 0xa

    const v8, 0xd800

    or-int/2addr v6, v8

    int-to-char v6, v6

    aput-char v6, v1, v2

    array-length v2, v1

    if-lt v5, v2, :cond_9

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v1

    move v2, v7

    goto :goto_2

    :cond_9
    move v2, v5

    :goto_2
    and-int/lit16 v3, v3, 0x3ff

    const v5, 0xdc00

    or-int/2addr v3, v5

    move v5, v9

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {p0, v8}, Ld2/d;->o3(I)B

    move-result v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v5}, Ld2/d;->o3(I)B

    move-result v5

    invoke-virtual {p0, v3, v6, v5}, Ld2/d;->z2(III)I

    move-result v3

    :goto_3
    move v5, v8

    goto :goto_4

    :cond_b
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {p0, v8}, Ld2/d;->o3(I)B

    move-result v6

    invoke-virtual {p0, v3, v6}, Ld2/d;->y2(II)I

    move-result v3

    goto :goto_4

    :cond_c
    iput v8, p0, Lx1/b;->p:I

    invoke-virtual {p0}, Ld2/d;->t2()I

    move-result v3

    iget v5, p0, Lx1/b;->p:I

    :goto_4
    array-length v6, v1

    if-lt v2, v6, :cond_d

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v1

    goto :goto_5

    :cond_d
    move v7, v2

    :goto_5
    add-int/lit8 v2, v7, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v7

    move v3, v5

    goto/16 :goto_0

    :cond_e
    const/16 v9, 0x27

    if-ne v3, v9, :cond_f

    iput v8, p0, Lx1/b;->p:I

    iput v2, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object v0

    :cond_f
    add-int/lit8 v9, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v3, v8

    move v2, v9

    goto/16 :goto_1
.end method

.method public final E2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5

    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v1, p0, Lx1/b;->t:J

    const-wide/16 v3, 0x3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lx1/b;->t:J

    invoke-virtual {p0, v0}, Ld2/d;->W2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v2, 0xbf

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "Unexpected byte 0x%02x following 0xEF 0xBB; should get 0xBF as third byte of UTF-8 BOM"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lx1/c;->u1(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1

    :cond_3
    const/16 v2, 0xbb

    if-ne v0, v2, :cond_4

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const-string p1, "Unexpected byte 0x%02x following 0xEF; should get 0xBB as second byte UTF-8 BOM"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lx1/c;->u1(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1

    :cond_5
    iput p1, p0, Ld2/c;->o0:I

    iput v2, p0, Ld2/c;->u0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method public final F2(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    const/16 p2, 0x34

    goto :goto_1

    :cond_0
    const/16 p2, 0x35

    :goto_1
    iput p2, p0, Ld2/c;->u0:I

    iput p1, p0, Ld2/c;->o0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_5

    const/16 p2, 0xa

    if-ne v0, p2, :cond_2

    iget p2, p0, Lx1/b;->u:I

    add-int/2addr p2, v2

    iput p2, p0, Lx1/b;->u:I

    :goto_2
    iget p2, p0, Lx1/b;->p:I

    iput p2, p0, Lx1/b;->v:I

    goto :goto_3

    :cond_2
    const/16 p2, 0xd

    if-ne v0, p2, :cond_3

    iget p2, p0, Ld2/c;->x0:I

    add-int/2addr p2, v2

    iput p2, p0, Ld2/c;->x0:I

    goto :goto_2

    :cond_3
    const/16 p2, 0x9

    if-ne v0, p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_6

    move p2, v2

    goto :goto_0

    :cond_6
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Ld2/d;->V2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public final G2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    :cond_0
    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_1

    const/16 v0, 0x36

    iput v0, p0, Ld2/c;->u0:I

    iput p1, p0, Ld2/c;->o0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    :goto_1
    iget v0, p0, Lx1/b;->p:I

    iput v0, p0, Lx1/b;->v:I

    goto :goto_2

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    iget v0, p0, Ld2/c;->x0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld2/c;->x0:I

    goto :goto_1

    :goto_2
    invoke-virtual {p0, p1}, Ld2/d;->V2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final H2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    iget-object v2, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/j;->a(C)V

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->t()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lx1/c;->t1(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final I2(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-eqz p2, :cond_2

    const/16 p2, 0x20

    iput p2, p0, Ld2/c;->u0:I

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2b

    if-ne p1, v1, :cond_2

    :cond_0
    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/j;->a(C)V

    iget p1, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt p1, v1, :cond_1

    iput p2, p0, Ld2/c;->u0:I

    const/4 p1, 0x0

    iput p1, p0, Lx1/b;->X:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result p1

    :cond_2
    iget-object p2, v0, Lcom/fasterxml/jackson/core/util/j;->h:[C

    iget v1, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget v2, p0, Lx1/b;->X:I

    :goto_0
    const/16 v3, 0x30

    if-lt p1, v3, :cond_5

    const/16 v3, 0x39

    if-gt p1, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    array-length v3, p2

    if-lt v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object p2

    :cond_3
    add-int/lit8 v3, v1, 0x1

    int-to-char p1, p1

    aput-char p1, p2, v1

    iget p1, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt p1, v1, :cond_4

    iput v3, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v2, p0, Lx1/b;->X:I

    :goto_1
    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result p1

    move v1, v3

    goto :goto_0

    :cond_5
    and-int/lit16 p1, p1, 0xff

    if-eqz v2, :cond_6

    iget p1, p0, Lx1/b;->p:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lx1/b;->p:I

    iput v1, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v2, p0, Lx1/b;->X:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object p1

    :cond_6
    const-string p2, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, p2}, Lx1/c;->z1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Ld2/d;->G0:I

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    :cond_0
    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v0, v2, :cond_1

    const/16 v0, 0x37

    iput v0, p0, Ld2/c;->u0:I

    iput p1, p0, Ld2/c;->o0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    iget v0, p0, Lx1/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->u:I

    :goto_1
    iget v0, p0, Lx1/b;->p:I

    iput v0, p0, Lx1/b;->v:I

    goto :goto_2

    :cond_2
    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    iget v0, p0, Ld2/c;->x0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld2/c;->x0:I

    goto :goto_1

    :goto_2
    invoke-virtual {p0, p1}, Ld2/d;->V2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v2, 0x9

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lx1/c;->A1(I)V

    throw v1

    :cond_5
    const/16 p1, 0x23

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_YAML_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v1
.end method

.method public final K2(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v1, v2, :cond_0

    iput p2, p0, Ld2/c;->o0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    if-ne p2, v0, :cond_2

    const/16 v0, 0x30

    if-lt v1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq v1, v0, :cond_1

    const/16 v0, 0x7d

    if-ne v1, v0, :cond_3

    :cond_1
    invoke-virtual {p0, p3}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object p3

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_3
    const/16 p3, 0x32

    iput p3, p0, Ld2/c;->u0:I

    iget-object p3, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p3, p2, p1}, Lcom/fasterxml/jackson/core/util/j;->q(ILjava/lang/String;)V

    invoke-virtual {p0}, Ld2/d;->H2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lx1/b;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lx1/b;->p:I

    goto :goto_0
.end method

.method public final L2(II)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6

    sget-object v0, Ld2/c;->y0:[Ljava/lang/String;

    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    iget v3, p0, Lx1/b;->p:I

    iget v4, p0, Lx1/b;->q:I

    if-lt v3, v4, :cond_0

    iput p1, p0, Ld2/c;->w0:I

    iput p2, p0, Ld2/c;->o0:I

    const/16 p1, 0x13

    iput p1, p0, Ld2/c;->u0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    invoke-virtual {p0, v3}, Ld2/d;->o3(I)B

    move-result v3

    iget-object v4, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-ne p2, v2, :cond_3

    const/16 v2, 0x30

    if-lt v3, v2, :cond_1

    const/16 v2, 0x5d

    if-eq v3, v2, :cond_1

    const/16 v2, 0x7d

    if-ne v3, v2, :cond_4

    :cond_1
    aget-object p2, v0, p1

    invoke-virtual {v4, p2}, Lcom/fasterxml/jackson/core/util/j;->s(Ljava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    iput p2, p0, Lx1/b;->T:I

    const/16 p2, 0x8

    iput p2, p0, Lx1/b;->H:I

    sget-object p2, Ld2/c;->z0:[D

    aget-wide p1, p2, p1

    iput-wide p1, p0, Lx1/b;->N:D

    iget p1, p0, Ld2/c;->t0:I

    iput p1, p0, Ld2/c;->s0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_2
    const-string p1, "Non-standard token \'%s\': enable `JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS` to allow"

    invoke-virtual {p0, p2, p1}, Lx1/c;->u1(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v3, v5, :cond_5

    :cond_4
    const/16 p1, 0x32

    iput p1, p0, Ld2/c;->u0:I

    invoke-virtual {v4, p2, v1}, Lcom/fasterxml/jackson/core/util/j;->q(ILjava/lang/String;)V

    invoke-virtual {p0}, Ld2/d;->H2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    iget v3, p0, Lx1/b;->p:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lx1/b;->p:I

    goto :goto_0
.end method

.method public final M2([CI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    iget-boolean v0, p0, Lx1/b;->R:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    iget-object v3, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-lt v1, v2, :cond_1

    const/16 p1, 0x1a

    iput p1, p0, Ld2/c;->u0:I

    iput p2, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_1
    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-ge v1, v2, :cond_2

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_2
    const/16 v2, 0x39

    if-le v1, v2, :cond_5

    const/16 v2, 0x65

    if-eq v1, v2, :cond_4

    const/16 v2, 0x45

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v0, p2

    iput v0, p0, Lx1/b;->T:I

    iput p2, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object p1

    :cond_4
    :goto_1
    add-int/2addr v0, p2

    iput v0, p0, Lx1/b;->T:I

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p0, p2, p1, v1}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_5
    iget v2, p0, Lx1/b;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lx1/b;->p:I

    array-length v2, p1

    if-lt p2, v2, :cond_6

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object p1

    :cond_6
    add-int/lit8 v2, p2, 0x1

    int-to-char v1, v1

    aput-char v1, p1, p2

    move p2, v2

    goto :goto_0
.end method

.method public final N1()C
    .locals 0

    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final N2(Z)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11

    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto :goto_1

    :cond_0
    const/16 p1, 0x18

    :goto_1
    iput p1, p0, Ld2/c;->u0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x2d

    const/16 v3, 0x2b

    iget-object v4, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    const/4 v5, 0x0

    const/16 v6, 0x30

    const/4 v7, 0x1

    if-ge v0, v6, :cond_3

    const/16 v8, 0x2e

    if-ne v0, v8, :cond_6

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    aput-char v2, v4, v5

    aput-char v6, v4, v7

    iput v7, p0, Lx1/b;->T:I

    invoke-virtual {p0, v1, v4, v0}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v8, 0x39

    const/4 v9, 0x0

    if-le v0, v8, :cond_9

    const/16 v8, 0x65

    if-eq v0, v8, :cond_7

    const/16 v8, 0x45

    if-ne v0, v8, :cond_4

    goto :goto_4

    :cond_4
    const/16 p1, 0x5d

    if-eq v0, p1, :cond_6

    const/16 p1, 0x7d

    if-ne v0, p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    invoke-virtual {p0, v0, p1}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v9

    :cond_6
    :goto_3
    iget p1, p0, Lx1/b;->p:I

    sub-int/2addr p1, v7

    iput p1, p0, Lx1/b;->p:I

    invoke-virtual {p0}, Ld2/c;->s2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v4

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    aput-char v2, v4, v5

    aput-char v6, v4, v7

    iput v7, p0, Lx1/b;->T:I

    invoke-virtual {p0, v1, v4, v0}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    iget v8, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v10, Ld2/d;->B0:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_c

    if-ne v0, v6, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v4

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    move v2, v3

    :goto_6
    aput-char v2, v4, v5

    int-to-char p1, v0

    aput-char p1, v4, v7

    iput v7, p0, Lx1/b;->T:I

    invoke-virtual {p0, v4, v1}, Ld2/d;->M2([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lx1/c;->D1()V

    throw v9
.end method

.method public final O2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8

    :goto_0
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x18

    iput v0, p0, Ld2/c;->u0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    iget-object v1, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_4

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v1

    aput-char v3, v1, v2

    iput v4, p0, Lx1/b;->T:I

    invoke-virtual {p0, v4, v1, v0}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v5, 0x39

    const/4 v6, 0x0

    if-le v0, v5, :cond_6

    const/16 v5, 0x65

    if-eq v0, v5, :cond_5

    const/16 v5, 0x45

    if-ne v0, v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    invoke-virtual {p0, v0, v1}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v6

    :cond_4
    :goto_1
    iget v0, p0, Lx1/b;->p:I

    sub-int/2addr v0, v4

    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p0}, Ld2/c;->s2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v1

    aput-char v3, v1, v2

    iput v4, p0, Lx1/b;->T:I

    invoke-virtual {p0, v4, v1, v0}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    iget v5, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v7, Ld2/d;->B0:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_8

    if-ne v0, v3, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v1

    int-to-char v0, v0

    aput-char v0, v1, v2

    iput v4, p0, Lx1/b;->T:I

    invoke-virtual {p0, v1, v4}, Ld2/d;->M2([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lx1/c;->D1()V

    throw v6
.end method

.method public final P2(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9

    const/4 v0, 0x0

    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    const-string v2, "expected digit (0-9) for valid numeric value"

    const-string v3, "JSON spec does not allow numbers to have plus signs: enable `JsonReadFeature.ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS` to allow"

    const/4 v4, 0x0

    const/16 v5, 0x2b

    const/4 v6, 0x1

    const/16 v7, 0x30

    if-gt p1, v7, :cond_7

    if-ne p1, v7, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v6}, Ld2/d;->N2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v4}, Ld2/d;->N2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v5, v3}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0

    :cond_2
    const/16 v7, 0x2e

    if-ne p1, v7, :cond_5

    sget-object v7, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz p2, :cond_3

    iget p1, p0, Lx1/b;->p:I

    sub-int/2addr p1, v6

    iput p1, p0, Lx1/b;->p:I

    invoke-virtual {p0, v6}, Ld2/d;->N2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lx1/b;->p:I

    sub-int/2addr p1, v6

    iput p1, p0, Lx1/b;->p:I

    invoke-virtual {p0, v4}, Ld2/d;->N2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, v5, v3}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    move-object v1, v2

    :goto_0
    invoke-virtual {p0, p1, v1}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0

    :cond_7
    const/16 v7, 0x39

    const/4 v8, 0x2

    if-le p1, v7, :cond_b

    const/16 v3, 0x49

    if-ne p1, v3, :cond_9

    if-eqz p2, :cond_8

    const/4 p1, 0x3

    goto :goto_1

    :cond_8
    move p1, v8

    :goto_1
    invoke-virtual {p0, p1, v8}, Ld2/d;->L2(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    if-eqz p2, :cond_a

    goto :goto_2

    :cond_a
    move-object v1, v2

    :goto_2
    invoke-virtual {p0, p1, v1}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0

    :cond_b
    if-nez p2, :cond_d

    sget-object v1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v5, v3}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0

    :cond_d
    :goto_3
    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v0

    if-eqz p2, :cond_e

    const/16 v5, 0x2d

    :cond_e
    aput-char v5, v0, v4

    int-to-char p1, p1

    aput-char p1, v0, v6

    iput v6, p0, Lx1/b;->T:I

    invoke-virtual {p0, v0, v8}, Ld2/d;->M2([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final Q2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    iget-object v1, v0, Lcom/fasterxml/jackson/core/util/j;->h:[C

    iget v2, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget v3, p0, Lx1/b;->p:I

    iget v4, p0, Lx1/b;->q:I

    add-int/lit8 v4, v4, -0x5

    :cond_0
    :goto_0
    iget v5, p0, Lx1/b;->q:I

    const/16 v6, 0x28

    if-lt v3, v5, :cond_1

    iput v3, p0, Lx1/b;->p:I

    iput v6, p0, Ld2/c;->u0:I

    iput v2, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_1
    array-length v5, v1

    const/4 v7, 0x0

    if-lt v2, v5, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v1

    move v2, v7

    :cond_2
    iget v5, p0, Lx1/b;->q:I

    array-length v8, v1

    sub-int/2addr v8, v2

    add-int/2addr v8, v3

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_0

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v3}, Ld2/d;->o3(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    sget-object v9, Ld2/d;->H0:[I

    aget v9, v9, v3

    if-eqz v9, :cond_f

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    iput v8, p0, Lx1/b;->p:I

    iput v2, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object v0

    :cond_3
    const/4 v5, 0x1

    if-lt v8, v4, :cond_6

    iput v8, p0, Lx1/b;->p:I

    iput v2, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget v1, p0, Lx1/b;->q:I

    if-ge v8, v1, :cond_4

    move v7, v5

    :cond_4
    invoke-virtual {p0, v3, v9, v7}, Ld2/d;->v2(IIZ)Z

    move-result v1

    if-nez v1, :cond_5

    iput v6, p0, Ld2/c;->v0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_5
    iget-object v1, v0, Lcom/fasterxml/jackson/core/util/j;->h:[C

    iget v2, v0, Lcom/fasterxml/jackson/core/util/j;->i:I

    iget v3, p0, Lx1/b;->p:I

    goto :goto_0

    :cond_6
    if-eq v9, v5, :cond_d

    const/4 v5, 0x2

    if-eq v9, v5, :cond_c

    const/4 v5, 0x3

    if-eq v9, v5, :cond_b

    const/4 v5, 0x4

    if-eq v9, v5, :cond_9

    const/16 v5, 0x20

    if-ge v3, v5, :cond_7

    const-string v5, "string value"

    invoke-virtual {p0, v3, v5}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_3

    :cond_7
    if-ge v3, v5, :cond_8

    invoke-virtual {p0, v3}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_9
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {p0, v8}, Ld2/d;->o3(I)B

    move-result v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v5}, Ld2/d;->o3(I)B

    move-result v5

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v8}, Ld2/d;->o3(I)B

    move-result v8

    invoke-virtual {p0, v3, v6, v5, v8}, Ld2/d;->A2(IIII)I

    move-result v3

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v6, v3, 0xa

    const v8, 0xd800

    or-int/2addr v6, v8

    int-to-char v6, v6

    aput-char v6, v1, v2

    array-length v2, v1

    if-lt v5, v2, :cond_a

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v1

    move v2, v7

    goto :goto_2

    :cond_a
    move v2, v5

    :goto_2
    and-int/lit16 v3, v3, 0x3ff

    const v5, 0xdc00

    or-int/2addr v3, v5

    move v5, v9

    goto :goto_4

    :cond_b
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {p0, v8}, Ld2/d;->o3(I)B

    move-result v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v5}, Ld2/d;->o3(I)B

    move-result v5

    invoke-virtual {p0, v3, v6, v5}, Ld2/d;->z2(III)I

    move-result v3

    :goto_3
    move v5, v8

    goto :goto_4

    :cond_c
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {p0, v8}, Ld2/d;->o3(I)B

    move-result v6

    invoke-virtual {p0, v3, v6}, Ld2/d;->y2(II)I

    move-result v3

    goto :goto_4

    :cond_d
    iput v8, p0, Lx1/b;->p:I

    invoke-virtual {p0}, Ld2/d;->t2()I

    move-result v3

    iget v5, p0, Lx1/b;->p:I

    :goto_4
    array-length v6, v1

    if-lt v2, v6, :cond_e

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()[C

    move-result-object v1

    goto :goto_5

    :cond_e
    move v7, v2

    :goto_5
    add-int/lit8 v2, v7, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v7

    move v3, v5

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v9, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v3, v8

    move v2, v9

    goto/16 :goto_1
.end method

.method public final R2(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5

    iget-object v0, p0, Ld2/c;->l0:[I

    sget-object v1, Lcom/fasterxml/jackson/core/io/b;->h:[I

    :goto_0
    iget v2, p0, Lx1/b;->p:I

    iget v3, p0, Lx1/b;->q:I

    if-lt v2, v3, :cond_0

    iput p1, p0, Ld2/c;->m0:I

    iput p2, p0, Ld2/c;->o0:I

    iput p3, p0, Ld2/c;->p0:I

    const/16 p1, 0xa

    iput p1, p0, Ld2/c;->u0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    invoke-virtual {p0, v2}, Ld2/d;->o3(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    aget v3, v1, v2

    if-eqz v3, :cond_4

    if-lez p3, :cond_2

    array-length v1, v0

    if-lt p1, v1, :cond_1

    array-length v1, v0

    invoke-static {v0, v1}, Lx1/b;->Z1([II)[I

    move-result-object v0

    iput-object v0, p0, Ld2/c;->l0:[I

    :cond_1
    add-int/lit8 v1, p1, 0x1

    aput p2, v0, p1

    move p1, v1

    :cond_2
    iget-object p2, p0, Ld2/c;->Z:Le2/b;

    invoke-virtual {p2, v0, p1}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p0, p1, p3, v0}, Ld2/c;->e2(II[I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {p0, p2}, Ld2/c;->h2(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    iget v3, p0, Lx1/b;->p:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lx1/b;->p:I

    const/4 v3, 0x4

    if-ge p3, v3, :cond_5

    add-int/lit8 p3, p3, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v2

    goto :goto_0

    :cond_5
    array-length p3, v0

    if-lt p1, p3, :cond_6

    array-length p3, v0

    invoke-static {v0, p3}, Lx1/b;->Z1([II)[I

    move-result-object v0

    iput-object v0, p0, Ld2/c;->l0:[I

    :cond_6
    add-int/lit8 p3, p1, 0x1

    aput p2, v0, p1

    move p1, p3

    move p2, v2

    move p3, v4

    goto :goto_0
.end method

.method public final S2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    const/16 v0, 0x23

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x27

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ld2/c;->f2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v1}, Ld2/d;->g3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Ld2/d;->D0:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2, v2, v2}, Ld2/d;->C2(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v3, Ld2/d;->G0:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Ld2/d;->J2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Ld2/d;->E0:I

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/fasterxml/jackson/core/io/b;->h:[I

    aget v0, v0, p1

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v2, p1, v0}, Ld2/d;->R2(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v1

    :cond_6
    int-to-char p1, p1

    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v1
.end method

.method public final T2(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8

    iget-object v0, p0, Ld2/c;->l0:[I

    :goto_0
    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    const/4 v3, 0x7

    if-lt v1, v2, :cond_0

    iput p1, p0, Ld2/c;->m0:I

    iput p2, p0, Ld2/c;->o0:I

    iput p3, p0, Ld2/c;->p0:I

    iput v3, p0, Ld2/c;->u0:I

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v1

    sget-object v2, Ld2/d;->I0:[I

    aget v2, v2, v1

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-nez v2, :cond_3

    if-ge p3, v6, :cond_1

    goto/16 :goto_8

    :cond_1
    array-length p3, v0

    if-lt p1, p3, :cond_2

    array-length p3, v0

    invoke-static {v0, p3}, Lx1/b;->Z1([II)[I

    move-result-object v0

    iput-object v0, p0, Ld2/c;->l0:[I

    :cond_2
    add-int/lit8 p3, p1, 0x1

    aput p2, v0, p1

    :goto_1
    move p1, p3

    move p2, v1

    goto/16 :goto_9

    :cond_3
    const/16 v2, 0x22

    if-ne v1, v2, :cond_8

    if-lez p3, :cond_5

    array-length v1, v0

    if-lt p1, v1, :cond_4

    array-length v1, v0

    invoke-static {v0, v1}, Lx1/b;->Z1([II)[I

    move-result-object v0

    iput-object v0, p0, Ld2/c;->l0:[I

    :cond_4
    add-int/lit8 v1, p1, 0x1

    invoke-static {p2, p3}, Ld2/c;->l2(II)I

    move-result p2

    aput p2, v0, p1

    move p1, v1

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    const-string p1, ""

    invoke-virtual {p0, p1}, Ld2/c;->h2(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    iget-object p2, p0, Ld2/c;->Z:Le2/b;

    invoke-virtual {p2, v0, p1}, Le2/b;->k([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-virtual {p0, p1, p3, v0}, Ld2/c;->e2(II[I)Ljava/lang/String;

    move-result-object p2

    :cond_7
    invoke-virtual {p0, p2}, Ld2/c;->h2(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    const/16 v2, 0x5c

    const/4 v7, 0x0

    if-eq v1, v2, :cond_9

    const-string v2, "name"

    invoke-virtual {p0, v1, v2}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_5

    :cond_9
    iget v1, p0, Lx1/b;->q:I

    iget v2, p0, Lx1/b;->p:I

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    if-ge v1, v2, :cond_a

    const/4 v1, -0x1

    invoke-virtual {p0, v7, v1}, Ld2/d;->u2(II)I

    move-result v1

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Ld2/d;->t2()I

    move-result v1

    :goto_3
    if-gez v1, :cond_b

    iput v4, p0, Ld2/c;->u0:I

    iput v3, p0, Ld2/c;->v0:I

    iput p1, p0, Ld2/c;->m0:I

    iput p2, p0, Ld2/c;->o0:I

    iput p3, p0, Ld2/c;->p0:I

    :goto_4
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_b
    :goto_5
    array-length v2, v0

    if-lt p1, v2, :cond_c

    array-length v2, v0

    invoke-static {v0, v2}, Lx1/b;->Z1([II)[I

    move-result-object v0

    iput-object v0, p0, Ld2/c;->l0:[I

    :cond_c
    const/16 v2, 0x7f

    if-le v1, v2, :cond_10

    if-lt p3, v6, :cond_d

    add-int/lit8 p3, p1, 0x1

    aput p2, v0, p1

    move p1, p3

    move p2, v7

    move p3, p2

    :cond_d
    shl-int/2addr p2, v4

    const/16 v2, 0x800

    if-ge v1, v2, :cond_e

    shr-int/lit8 v2, v1, 0x6

    or-int/lit16 v2, v2, 0xc0

    or-int/2addr p2, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_e
    shr-int/lit8 v2, v1, 0xc

    or-int/lit16 v2, v2, 0xe0

    or-int/2addr p2, v2

    add-int/lit8 p3, p3, 0x1

    if-lt p3, v6, :cond_f

    add-int/lit8 p3, p1, 0x1

    aput p2, v0, p1

    move p1, p3

    move p3, v7

    goto :goto_6

    :cond_f
    move v7, p2

    :goto_6
    shl-int/lit8 p2, v7, 0x8

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    or-int/2addr p2, v2

    add-int/2addr p3, v5

    :goto_7
    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    :cond_10
    if-ge p3, v6, :cond_11

    :goto_8
    add-int/2addr p3, v5

    shl-int/2addr p2, v4

    or-int/2addr p2, v1

    goto/16 :goto_0

    :cond_11
    add-int/lit8 p3, p1, 0x1

    aput p2, v0, p1

    goto/16 :goto_1

    :goto_9
    move p3, v5

    goto/16 :goto_0
.end method

.method public final U2(I)I
    .locals 2

    :cond_0
    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    iget p1, p0, Lx1/b;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lx1/b;->u:I

    :goto_0
    iget p1, p0, Lx1/b;->p:I

    iput p1, p0, Lx1/b;->v:I

    goto :goto_1

    :cond_1
    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    iget p1, p0, Ld2/c;->x0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld2/c;->x0:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_1
    iget p1, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt p1, v1, :cond_5

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 p0, 0x0

    return p0

    :cond_5
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result p1

    if-le p1, v0, :cond_0

    return p1
.end method

.method public final V2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    iput p1, p0, Ld2/c;->u0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    invoke-virtual {p0, v0}, Ld2/d;->l3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v0}, Ld2/d;->m3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v0}, Ld2/d;->n3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, v0}, Ld2/d;->k3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Ld2/d;->Z2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Ld2/d;->Y2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final W2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xef

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Ld2/c;->u0:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ld2/d;->E2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_0
    :goto_0
    const/16 v0, 0x20

    if-gt p1, v0, :cond_7

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iget p1, p0, Lx1/b;->u:I

    add-int/2addr p1, v1

    iput p1, p0, Lx1/b;->u:I

    :goto_1
    iget p1, p0, Lx1/b;->p:I

    iput p1, p0, Lx1/b;->v:I

    goto :goto_2

    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    iget p1, p0, Ld2/c;->x0:I

    add-int/2addr p1, v1

    iput p1, p0, Ld2/c;->x0:I

    goto :goto_1

    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lx1/c;->A1(I)V

    throw v2

    :cond_4
    :goto_2
    iget p1, p0, Lx1/b;->p:I

    iget v0, p0, Lx1/b;->q:I

    if-lt p1, v0, :cond_6

    const/4 p1, 0x3

    iput p1, p0, Ld2/c;->u0:I

    iget-boolean p0, p0, Lx1/b;->n:Z

    if-eqz p0, :cond_5

    return-object v2

    :cond_5
    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result p1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Ld2/d;->k3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final X2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lx1/b;->q:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    const/16 v2, 0x61

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    const/16 v2, 0x73

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lx1/b;->p:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object v0

    :cond_1
    const/16 v0, 0x12

    iput v0, p0, Ld2/c;->u0:I

    const-string v0, "false"

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ld2/d;->K2(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final Y2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ld2/d;->U2(I)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Ld2/c;->u0:I

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ld2/c;->q2()V

    const/16 v0, 0x22

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ld2/c;->g2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Ld2/d;->S2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    iget p1, p0, Lx1/b;->p:I

    add-int/lit8 p1, p1, 0xd

    iget v0, p0, Lx1/b;->q:I

    if-gt p1, v0, :cond_3

    invoke-virtual {p0}, Ld2/d;->B2()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Ld2/c;->h2(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Ld2/d;->T2(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final Z2(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    const/4 v0, 0x5

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    invoke-virtual {p0, p1}, Ld2/d;->U2(I)I

    move-result p1

    if-gtz p1, :cond_0

    iput v0, p0, Ld2/c;->u0:I

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_0
    const/16 v2, 0x2c

    const/16 v3, 0x7d

    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Ld2/c;->g2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x23

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v0}, Ld2/d;->J2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0}, Ld2/d;->g3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
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

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    iget p1, p0, Lx1/b;->p:I

    iget v0, p0, Lx1/b;->q:I

    const/4 v2, 0x4

    if-lt p1, v0, :cond_5

    iput v2, p0, Ld2/c;->u0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_5
    invoke-virtual {p0, p1}, Ld2/d;->o3(I)B

    move-result v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lx1/b;->p:I

    if-gt v0, v1, :cond_6

    invoke-virtual {p0, v0}, Ld2/d;->U2(I)I

    move-result v0

    if-gtz v0, :cond_6

    iput v2, p0, Ld2/c;->u0:I

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ld2/c;->q2()V

    const/16 p1, 0x22

    if-eq v0, p1, :cond_8

    if-ne v0, v3, :cond_7

    iget p1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Ld2/d;->A0:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ld2/c;->g2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {p0, v0}, Ld2/d;->S2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    iget p1, p0, Lx1/b;->p:I

    add-int/lit8 p1, p1, 0xd

    iget v0, p0, Lx1/b;->q:I

    if-gt p1, v0, :cond_9

    invoke-virtual {p0}, Ld2/d;->B2()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Ld2/c;->h2(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Ld2/d;->T2(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x39

    const/16 v2, 0x30

    iget-object v3, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    const/4 v4, 0x0

    const/16 v5, 0x2e

    if-ne p3, v5, :cond_6

    array-length p3, p2

    if-lt p1, p3, :cond_0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object p2

    :cond_0
    add-int/lit8 p3, p1, 0x1

    aput-char v5, p2, p1

    move p1, p3

    move p3, v4

    :goto_0
    iget v5, p0, Lx1/b;->p:I

    iget v6, p0, Lx1/b;->q:I

    if-lt v5, v6, :cond_1

    iput p1, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    const/16 p1, 0x1e

    iput p1, p0, Ld2/c;->u0:I

    iput p3, p0, Lx1/b;->V:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v5

    if-lt v5, v2, :cond_4

    if-le v5, v1, :cond_2

    goto :goto_1

    :cond_2
    array-length v6, p2

    if-lt p1, v6, :cond_3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object p2

    :cond_3
    add-int/lit8 v6, p1, 0x1

    int-to-char v5, v5

    aput-char v5, p2, p1

    add-int/lit8 p3, p3, 0x1

    move p1, v6

    goto :goto_0

    :cond_4
    :goto_1
    and-int/lit16 v5, v5, 0xff

    if-nez p3, :cond_7

    sget-object v6, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_TRAILING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, p1}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0

    :cond_6
    move v5, p3

    move p3, v4

    :cond_7
    :goto_2
    iput p3, p0, Lx1/b;->V:I

    const/16 p3, 0x65

    if-eq v5, p3, :cond_8

    const/16 p3, 0x45

    if-ne v5, p3, :cond_11

    :cond_8
    array-length p3, p2

    if-lt p1, p3, :cond_9

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object p2

    :cond_9
    add-int/lit8 p3, p1, 0x1

    int-to-char v5, v5

    aput-char v5, p2, p1

    iget p1, p0, Lx1/b;->p:I

    iget v5, p0, Lx1/b;->q:I

    if-lt p1, v5, :cond_a

    iput p3, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    const/16 p1, 0x1f

    iput p1, p0, Ld2/c;->u0:I

    iput v4, p0, Lx1/b;->X:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_a
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result p1

    const/16 v5, 0x2d

    const/16 v6, 0x20

    if-eq p1, v5, :cond_b

    const/16 v5, 0x2b

    if-ne p1, v5, :cond_e

    :cond_b
    array-length v5, p2

    if-lt p3, v5, :cond_c

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object p2

    :cond_c
    add-int/lit8 v5, p3, 0x1

    int-to-char p1, p1

    aput-char p1, p2, p3

    iget p1, p0, Lx1/b;->p:I

    iget p3, p0, Lx1/b;->q:I

    if-lt p1, p3, :cond_d

    iput v5, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v6, p0, Ld2/c;->u0:I

    iput v4, p0, Lx1/b;->X:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_d
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result p1

    move p3, v5

    :cond_e
    if-lt p1, v2, :cond_10

    if-gt p1, v1, :cond_10

    add-int/lit8 v4, v4, 0x1

    array-length v5, p2

    if-lt p3, v5, :cond_f

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object p2

    :cond_f
    add-int/lit8 v5, p3, 0x1

    int-to-char p1, p1

    aput-char p1, p2, p3

    iget p1, p0, Lx1/b;->p:I

    iget p3, p0, Lx1/b;->q:I

    if-lt p1, p3, :cond_d

    iput v5, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v6, p0, Ld2/c;->u0:I

    iput v4, p0, Lx1/b;->X:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_10
    and-int/lit16 p1, p1, 0xff

    if-eqz v4, :cond_12

    move p1, p3

    :cond_11
    iget p2, p0, Lx1/b;->p:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lx1/b;->p:I

    iput p1, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v4, p0, Lx1/b;->X:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object p1

    :cond_12
    const-string p2, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, p2}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v0
.end method

.method public final b3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx1/b;->R:Z

    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v1, v2, :cond_0

    const/16 v0, 0x17

    iput v0, p0, Ld2/c;->u0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "expected digit (0-9) to follow minus sign, for valid numeric value"

    const/16 v4, 0x30

    if-gt v1, v4, :cond_2

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v0}, Ld2/d;->N2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v1, v3}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2

    :cond_2
    const/16 v5, 0x39

    const/4 v6, 0x2

    if-le v1, v5, :cond_4

    const/16 v0, 0x49

    if-ne v1, v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v6}, Ld2/d;->L2(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, v1, v3}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2

    :cond_4
    iget-object v2, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v3

    const/4 v7, 0x0

    const/16 v8, 0x2d

    aput-char v8, v3, v7

    int-to-char v1, v1

    aput-char v1, v3, v0

    iget v1, p0, Lx1/b;->p:I

    iget v7, p0, Lx1/b;->q:I

    const/16 v8, 0x1a

    if-lt v1, v7, :cond_5

    iput v8, p0, Ld2/c;->u0:I

    iput v6, v2, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v0, p0, Lx1/b;->T:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_5
    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    :goto_0
    if-ge v1, v4, :cond_6

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_7

    add-int/lit8 v2, v6, -0x1

    iput v2, p0, Lx1/b;->T:I

    iget v2, p0, Lx1/b;->p:I

    add-int/2addr v2, v0

    iput v2, p0, Lx1/b;->p:I

    invoke-virtual {p0, v6, v3, v1}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    if-le v1, v5, :cond_9

    const/16 v4, 0x65

    if-eq v1, v4, :cond_8

    const/16 v4, 0x45

    if-ne v1, v4, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v6, -0x1

    iput v0, p0, Lx1/b;->T:I

    iput v6, v2, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object v0

    :cond_8
    :goto_1
    add-int/lit8 v2, v6, -0x1

    iput v2, p0, Lx1/b;->T:I

    iget v2, p0, Lx1/b;->p:I

    add-int/2addr v2, v0

    iput v2, p0, Lx1/b;->p:I

    invoke-virtual {p0, v6, v3, v1}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    array-length v7, v3

    if-lt v6, v7, :cond_a

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object v3

    :cond_a
    add-int/lit8 v7, v6, 0x1

    int-to-char v1, v1

    aput-char v1, v3, v6

    iget v1, p0, Lx1/b;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lx1/b;->p:I

    iget v6, p0, Lx1/b;->q:I

    if-lt v1, v6, :cond_b

    iput v8, p0, Ld2/c;->u0:I

    iput v7, v2, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_b
    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    move v6, v7

    goto :goto_0
.end method

.method public final c3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lx1/b;->q:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    const/16 v2, 0x75

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_1

    :cond_0
    iput v1, p0, Lx1/b;->p:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object v0

    :cond_1
    const/16 v0, 0x10

    iput v0, p0, Ld2/c;->u0:I

    const-string v0, "null"

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ld2/d;->K2(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final d3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x18

    iput v0, p0, Ld2/c;->u0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    iget-object v3, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    const/4 v4, 0x0

    const/16 v5, 0x30

    if-ge v0, v5, :cond_1

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_4

    iput v1, p0, Lx1/b;->p:I

    iput v2, p0, Lx1/b;->T:I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v1

    aput-char v5, v1, v4

    invoke-virtual {p0, v2, v1, v0}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v6, 0x39

    if-le v0, v6, :cond_6

    const/16 v6, 0x65

    if-eq v0, v6, :cond_5

    const/16 v6, 0x45

    if-ne v0, v6, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    invoke-virtual {p0, v0, v1}, Lx1/c;->z1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Ld2/c;->s2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    iput v1, p0, Lx1/b;->p:I

    iput v2, p0, Lx1/b;->T:I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v1

    aput-char v5, v1, v4

    invoke-virtual {p0, v2, v1, v0}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ld2/d;->O2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final e3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx1/b;->R:Z

    iget v1, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v1, v2, :cond_0

    const/16 v0, 0x16

    iput v0, p0, Ld2/c;->u0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "JSON spec does not allow numbers to have plus signs: enable `JsonReadFeature.ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS` to allow"

    const-string v4, "expected digit (0-9) to follow plus sign, for valid numeric value"

    const/16 v5, 0x2b

    const/16 v6, 0x30

    if-gt v1, v6, :cond_3

    if-ne v1, v6, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ld2/d;->N2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v5, v3}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p0, v1, v4}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2

    :cond_3
    const/16 v7, 0x39

    const/4 v8, 0x2

    if-le v1, v7, :cond_5

    const/16 v0, 0x49

    if-ne v1, v0, :cond_4

    invoke-virtual {p0, v8, v8}, Ld2/d;->L2(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, v1, v4}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2

    :cond_5
    sget-object v4, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v2

    aput-char v5, v2, v0

    int-to-char v0, v1

    const/4 v1, 0x1

    aput-char v0, v2, v1

    iget v0, p0, Lx1/b;->p:I

    iget v3, p0, Lx1/b;->q:I

    const/16 v9, 0x1a

    if-lt v0, v3, :cond_6

    iput v9, p0, Ld2/c;->u0:I

    iput v8, v4, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v1, p0, Lx1/b;->T:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_6
    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    :goto_0
    if-ge v0, v6, :cond_7

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_8

    goto :goto_1

    :cond_7
    if-le v0, v7, :cond_a

    const/16 v3, 0x65

    if-eq v0, v3, :cond_9

    const/16 v3, 0x45

    if-ne v0, v3, :cond_8

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v8, -0x1

    iput v0, p0, Lx1/b;->T:I

    iput v8, v4, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object v0

    :cond_9
    :goto_1
    add-int/lit8 v3, v8, -0x1

    iput v3, p0, Lx1/b;->T:I

    iget v3, p0, Lx1/b;->p:I

    add-int/2addr v3, v1

    iput v3, p0, Lx1/b;->p:I

    invoke-virtual {p0, v8, v2, v0}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_a
    array-length v3, v2

    if-lt v8, v3, :cond_b

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object v2

    :cond_b
    add-int/lit8 v3, v8, 0x1

    int-to-char v0, v0

    aput-char v0, v2, v8

    iget v0, p0, Lx1/b;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lx1/b;->p:I

    iget v5, p0, Lx1/b;->q:I

    if-lt v0, v5, :cond_c

    iput v9, p0, Ld2/c;->u0:I

    iput v3, v4, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_c
    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    move v8, v3

    goto :goto_0

    :cond_d
    invoke-virtual {p0, v5, v3}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2
.end method

.method public final f1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-boolean p0, p0, Lx1/b;->n:Z

    if-eqz p0, :cond_0

    return-object v2

    :cond_0
    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_1
    iget-object v1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1c

    iget v0, p0, Ld2/c;->u0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1a

    const/4 v6, 0x5

    if-eq v0, v6, :cond_19

    const/16 v6, 0x20

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    iget-object v5, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const/16 v6, 0x2d

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v2

    :pswitch_0
    iget v0, p0, Ld2/c;->m0:I

    iget v1, p0, Ld2/c;->o0:I

    iget v2, p0, Ld2/c;->p0:I

    invoke-virtual {p0, v0, v1, v2}, Ld2/d;->R2(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_1
    iget v0, p0, Ld2/c;->m0:I

    iget v1, p0, Ld2/c;->o0:I

    iget v2, p0, Ld2/c;->p0:I

    invoke-virtual {p0, v0, v1, v2}, Ld2/d;->C2(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_2
    iget v0, p0, Ld2/c;->q0:I

    iget v2, p0, Ld2/c;->r0:I

    invoke-virtual {p0, v0, v2}, Ld2/d;->u2(II)I

    move-result v0

    const/16 v2, 0x8

    if-gez v0, :cond_2

    iput v2, p0, Ld2/c;->u0:I

    goto/16 :goto_a

    :cond_2
    iget v3, p0, Ld2/c;->m0:I

    iget-object v7, p0, Ld2/c;->l0:[I

    array-length v8, v7

    if-lt v3, v8, :cond_3

    invoke-static {v7, v6}, Lx1/b;->Z1([II)[I

    move-result-object v3

    iput-object v3, p0, Ld2/c;->l0:[I

    :cond_3
    iget v3, p0, Ld2/c;->o0:I

    iget v6, p0, Ld2/c;->p0:I

    const/16 v7, 0x7f

    if-le v0, v7, :cond_7

    if-lt v6, v5, :cond_4

    iget-object v6, p0, Ld2/c;->l0:[I

    iget v7, p0, Ld2/c;->m0:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ld2/c;->m0:I

    aput v3, v6, v7

    move v3, v4

    move v6, v3

    :cond_4
    shl-int/2addr v3, v2

    const/16 v7, 0x800

    if-ge v0, v7, :cond_5

    shr-int/lit8 v4, v0, 0x6

    or-int/lit16 v4, v4, 0xc0

    goto :goto_1

    :cond_5
    shr-int/lit8 v7, v0, 0xc

    or-int/lit16 v7, v7, 0xe0

    or-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v5, :cond_6

    iget-object v6, p0, Ld2/c;->l0:[I

    iget v7, p0, Ld2/c;->m0:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ld2/c;->m0:I

    aput v3, v6, v7

    move v6, v4

    goto :goto_0

    :cond_6
    move v4, v3

    :goto_0
    shl-int/lit8 v3, v4, 0x8

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    :goto_1
    or-int/2addr v3, v4

    add-int/2addr v6, v1

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    :cond_7
    if-ge v6, v5, :cond_8

    add-int/2addr v1, v6

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v0, v2

    goto :goto_2

    :cond_8
    iget-object v2, p0, Ld2/c;->l0:[I

    iget v4, p0, Ld2/c;->m0:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ld2/c;->m0:I

    aput v3, v2, v4

    :goto_2
    iget v2, p0, Ld2/c;->v0:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    iget v2, p0, Ld2/c;->m0:I

    invoke-virtual {p0, v2, v0, v1}, Ld2/d;->C2(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :cond_9
    iget v2, p0, Ld2/c;->m0:I

    invoke-virtual {p0, v2, v0, v1}, Ld2/d;->T2(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_3
    iget v0, p0, Ld2/c;->m0:I

    iget v1, p0, Ld2/c;->o0:I

    iget v2, p0, Ld2/c;->p0:I

    invoke-virtual {p0, v0, v1, v2}, Ld2/d;->T2(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_4
    iget v0, p0, Ld2/c;->w0:I

    iget v1, p0, Ld2/c;->o0:I

    invoke-virtual {p0, v0, v1}, Ld2/d;->L2(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_5
    iget v0, p0, Ld2/c;->o0:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "false"

    goto :goto_3

    :pswitch_6
    iget v0, p0, Ld2/c;->o0:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "true"

    goto :goto_3

    :pswitch_7
    iget v0, p0, Ld2/c;->o0:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "null"

    :goto_3
    invoke-virtual {p0, v2, v0, v1}, Ld2/d;->K2(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_8
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0}, Ld2/d;->l3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0}, Ld2/d;->m3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_a
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0}, Ld2/d;->n3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_b
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0}, Ld2/d;->k3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_c
    iget-object v0, v5, Lcom/fasterxml/jackson/core/util/j;->h:[C

    iget v1, v5, Lcom/fasterxml/jackson/core/util/j;->i:I

    invoke-virtual {p0, v0, v1}, Ld2/d;->M2([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_d
    invoke-virtual {p0, v1}, Ld2/d;->N2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_e
    invoke-virtual {p0}, Ld2/d;->O2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_f
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Ld2/d;->P2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_10
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Ld2/d;->P2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_11
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Ld2/d;->I2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_12
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Ld2/d;->I2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_13
    iget v0, p0, Lx1/b;->V:I

    iget-object v3, v5, Lcom/fasterxml/jackson/core/util/j;->h:[C

    iget v7, v5, Lcom/fasterxml/jackson/core/util/j;->i:I

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v8

    move v9, v1

    :goto_4
    if-eqz v9, :cond_f

    const/16 v10, 0x30

    if-lt v8, v10, :cond_c

    const/16 v10, 0x39

    if-gt v8, v10, :cond_c

    add-int/lit8 v0, v0, 0x1

    array-length v10, v3

    if-lt v7, v10, :cond_a

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object v3

    :cond_a
    add-int/lit8 v10, v7, 0x1

    int-to-char v8, v8

    aput-char v8, v3, v7

    iget v7, p0, Lx1/b;->p:I

    iget v8, p0, Lx1/b;->q:I

    if-lt v7, v8, :cond_b

    iput v10, v5, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v0, p0, Lx1/b;->V:I

    goto/16 :goto_7

    :cond_b
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v8

    move v7, v10

    goto :goto_4

    :cond_c
    const/16 v9, 0x66

    if-eq v8, v9, :cond_e

    const/16 v9, 0x64

    if-eq v8, v9, :cond_e

    const/16 v9, 0x46

    if-eq v8, v9, :cond_e

    const/16 v9, 0x44

    if-eq v8, v9, :cond_e

    const/16 v9, 0x2e

    if-eq v8, v9, :cond_d

    move v9, v4

    goto :goto_4

    :cond_d
    const-string v0, "Cannot parse number with more than one decimal point"

    invoke-virtual {p0, v8, v0}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2

    :cond_e
    const-string v0, "JSON does not support parsing numbers that have \'f\' or \'d\' suffixes"

    invoke-virtual {p0, v8, v0}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2

    :cond_f
    if-nez v0, :cond_11

    sget-object v3, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_TRAILING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_5

    :cond_10
    const-string v0, "Decimal point not followed by a digit"

    invoke-virtual {p0, v8, v0}, Lx1/c;->z1(ILjava/lang/String;)V

    throw v2

    :cond_11
    :goto_5
    iput v0, p0, Lx1/b;->V:I

    iput v7, v5, Lcom/fasterxml/jackson/core/util/j;->i:I

    const/16 v0, 0x65

    if-eq v8, v0, :cond_13

    const/16 v0, 0x45

    if-ne v8, v0, :cond_12

    goto :goto_6

    :cond_12
    iget v0, p0, Lx1/b;->p:I

    sub-int/2addr v0, v1

    iput v0, p0, Lx1/b;->p:I

    iput v7, v5, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v4, p0, Lx1/b;->X:I

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v3}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    goto/16 :goto_a

    :cond_13
    :goto_6
    int-to-char v0, v8

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/util/j;->a(C)V

    iput v4, p0, Lx1/b;->X:I

    iget v0, p0, Lx1/b;->p:I

    iget v2, p0, Lx1/b;->q:I

    if-lt v0, v2, :cond_14

    const/16 v0, 0x1f

    iput v0, p0, Ld2/c;->u0:I

    :goto_7
    sget-object p0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_8

    :cond_14
    iput v6, p0, Ld2/c;->u0:I

    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Ld2/d;->I2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    :goto_8
    move-object v3, p0

    goto/16 :goto_a

    :pswitch_14
    iget v0, p0, Ld2/c;->o0:I

    iget v1, p0, Ld2/c;->p0:I

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ld2/d;->x2(III)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_a

    :cond_15
    iget v0, p0, Ld2/c;->v0:I

    if-ne v0, v6, :cond_18

    goto :goto_9

    :pswitch_15
    iget v0, p0, Ld2/c;->o0:I

    iget v1, p0, Ld2/c;->p0:I

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ld2/d;->w2(III)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_a

    :cond_16
    iget v0, p0, Ld2/c;->v0:I

    if-ne v0, v6, :cond_18

    goto :goto_9

    :pswitch_16
    iget v0, p0, Ld2/c;->o0:I

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v1

    invoke-virtual {p0, v0, v1}, Ld2/d;->y2(II)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/util/j;->a(C)V

    iget v0, p0, Ld2/c;->v0:I

    if-ne v0, v6, :cond_18

    goto :goto_9

    :pswitch_17
    iget v0, p0, Ld2/c;->q0:I

    iget v1, p0, Ld2/c;->r0:I

    invoke-virtual {p0, v0, v1}, Ld2/d;->u2(II)I

    move-result v0

    if-gez v0, :cond_17

    goto :goto_a

    :cond_17
    int-to-char v0, v0

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/util/j;->a(C)V

    iget v0, p0, Ld2/c;->v0:I

    if-ne v0, v6, :cond_18

    :goto_9
    :pswitch_18
    invoke-virtual {p0}, Ld2/d;->D2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_a

    :cond_18
    :pswitch_19
    invoke-virtual {p0}, Ld2/d;->Q2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_a

    :pswitch_1a
    iget v0, p0, Ld2/c;->o0:I

    invoke-virtual {p0, v0}, Ld2/d;->J2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_a

    :pswitch_1b
    iget v0, p0, Ld2/c;->o0:I

    invoke-virtual {p0, v0}, Ld2/d;->G2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_a

    :pswitch_1c
    iget v0, p0, Ld2/c;->o0:I

    invoke-virtual {p0, v0, v4}, Ld2/d;->F2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_a

    :pswitch_1d
    iget v0, p0, Ld2/c;->o0:I

    invoke-virtual {p0, v0, v1}, Ld2/d;->F2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_a

    :pswitch_1e
    iget v0, p0, Ld2/c;->o0:I

    invoke-virtual {p0, v0}, Ld2/d;->g3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_a

    :pswitch_1f
    invoke-virtual {p0}, Ld2/d;->H2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_a

    :cond_19
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0}, Ld2/d;->Z2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_a

    :cond_1a
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    invoke-virtual {p0, v0}, Ld2/d;->Y2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_a

    :cond_1b
    iget v0, p0, Ld2/c;->o0:I

    invoke-virtual {p0, v0}, Ld2/d;->E2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    :goto_a
    return-object v3

    :cond_1c
    iput v4, p0, Lx1/b;->H:I

    iget-wide v3, p0, Lx1/b;->t:J

    int-to-long v0, v0

    add-long/2addr v3, v0

    iput-wide v3, p0, Lx1/b;->w:J

    iput-object v2, p0, Lx1/b;->G:[B

    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    iget v1, p0, Ld2/c;->s0:I

    packed-switch v1, :pswitch_data_6

    invoke-static {}, Lcom/fasterxml/jackson/core/util/l;->c()V

    throw v2

    :pswitch_20
    invoke-virtual {p0, v0}, Ld2/d;->n3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p0, v0}, Ld2/d;->k3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-virtual {p0, v0}, Ld2/d;->m3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-virtual {p0, v0}, Ld2/d;->Z2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-virtual {p0, v0}, Ld2/d;->Y2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_25
    invoke-virtual {p0, v0}, Ld2/d;->k3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_26
    invoke-virtual {p0, v0}, Ld2/d;->W2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1e
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x28
        :pswitch_19
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_18
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x32
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method public final f3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx1/b;->R:Z

    iget-object v1, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v2

    int-to-char p1, p1

    aput-char p1, v2, v0

    iget p1, p0, Lx1/b;->p:I

    iget v0, p0, Lx1/b;->q:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-lt p1, v0, :cond_0

    iput v3, p0, Ld2/c;->u0:I

    iput v4, v1, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Ld2/d;->o3(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    move v0, v4

    :goto_0
    const/16 v5, 0x30

    if-ge p1, v5, :cond_1

    const/16 v3, 0x2e

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_1
    const/16 v5, 0x39

    if-le p1, v5, :cond_4

    const/16 v3, 0x65

    if-eq p1, v3, :cond_3

    const/16 v3, 0x45

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    iput v0, p0, Lx1/b;->T:I

    iput v0, v1, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object p1

    :cond_3
    :goto_1
    iput v0, p0, Lx1/b;->T:I

    iget v1, p0, Lx1/b;->p:I

    add-int/2addr v1, v4

    iput v1, p0, Lx1/b;->p:I

    invoke-virtual {p0, v0, v2, p1}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    array-length v5, v2

    if-lt v0, v5, :cond_5

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->k()[C

    move-result-object v2

    :cond_5
    add-int/lit8 v5, v0, 0x1

    int-to-char p1, p1

    aput-char p1, v2, v0

    iget p1, p0, Lx1/b;->p:I

    add-int/2addr p1, v4

    iput p1, p0, Lx1/b;->p:I

    iget v0, p0, Lx1/b;->q:I

    if-lt p1, v0, :cond_6

    iput v3, p0, Ld2/c;->u0:I

    iput v5, v1, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_6
    invoke-virtual {p0, p1}, Ld2/d;->o3(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    move v0, v5

    goto :goto_0
.end method

.method public final g3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Ld2/d;->F0:I

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x2f

    if-eqz v0, :cond_3

    iget v0, p0, Lx1/b;->p:I

    iget v3, p0, Lx1/b;->q:I

    if-lt v0, v3, :cond_0

    iput p1, p0, Ld2/c;->o0:I

    const/16 p1, 0x33

    iput p1, p0, Ld2/c;->u0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v0

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ld2/d;->F2(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1}, Ld2/d;->G2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    and-int/lit16 p1, v0, 0xff

    const-string v0, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v2, p1}, Lx1/c;->y1(ILjava/lang/String;)V

    throw v1
.end method

.method public final h3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7

    iget v0, p0, Lx1/b;->p:I

    iget-object v1, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v2

    iget v3, p0, Lx1/b;->q:I

    array-length v4, v2

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    sget-object v6, Ld2/d;->H0:[I

    aget v6, v6, v5

    if-eqz v6, :cond_0

    const/16 v2, 0x22

    if-ne v5, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx1/b;->p:I

    iput v4, v1, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    aput-char v5, v2, v4

    move v4, v6

    goto :goto_0

    :cond_1
    iput v4, v1, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput v0, p0, Lx1/b;->p:I

    invoke-virtual {p0}, Ld2/d;->Q2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final i3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    iget v0, p0, Lx1/b;->p:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lx1/b;->q:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    const/16 v2, 0x72

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ld2/d;->o3(I)B

    move-result v0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ld2/d;->o3(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_1

    :cond_0
    iput v1, p0, Lx1/b;->p:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object v0

    :cond_1
    const/16 v0, 0x11

    iput v0, p0, Ld2/c;->u0:I

    const-string v0, "true"

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ld2/d;->K2(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0
.end method

.method public final j3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x27

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/16 v1, 0x49

    if-eq p1, v1, :cond_3

    const/16 v1, 0x4e

    if-eq p1, v1, :cond_2

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_8

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v2}, Ld2/d;->L2(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->g()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v1, Ld2/d;->C0:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    iget p1, p0, Lx1/b;->p:I

    sub-int/2addr p1, v2

    iput p1, p0, Lx1/b;->p:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object p1

    :cond_2
    invoke-virtual {p0, v0, v2}, Ld2/d;->L2(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, v2, v2}, Ld2/d;->L2(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    iget v3, p0, Lcom/fasterxml/jackson/core/g;->a:I

    sget v4, Ld2/d;->D0:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    iget p1, p0, Lx1/b;->p:I

    iget-object v3, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v4

    iget v5, p0, Lx1/b;->q:I

    array-length v6, v4

    add-int/2addr v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    if-ge p1, v5, :cond_7

    invoke-virtual {p0, p1}, Ld2/d;->o3(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v1, :cond_5

    add-int/2addr p1, v2

    iput p1, p0, Lx1/b;->p:I

    iput v0, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Ld2/c;->r2(Lcom/fasterxml/jackson/core/JsonToken;)V

    goto :goto_3

    :cond_5
    sget-object v7, Ld2/d;->H0:[I

    aget v7, v7, v6

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v7, v0, 0x1

    int-to-char v6, v6

    aput-char v6, v4, v0

    move v0, v7

    goto :goto_1

    :cond_7
    :goto_2
    iput v0, v3, Lcom/fasterxml/jackson/core/util/j;->i:I

    iput p1, p0, Lx1/b;->p:I

    invoke-virtual {p0}, Ld2/d;->D2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_8
    invoke-virtual {p0}, Lx1/b;->X1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expected a valid value "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0xc

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ld2/d;->U2(I)I

    move-result p1

    if-gtz p1, :cond_0

    iput v1, p0, Ld2/c;->u0:I

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ld2/c;->q2()V

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lc2/c;->l()Z

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ld2/d;->h3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x23

    if-eq p1, v0, :cond_b

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_a

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x66

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x74

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Ld2/d;->f3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Ld2/d;->d3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v1}, Ld2/d;->g3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/g;->X0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lx1/b;->R:Z

    iput p1, p0, Lx1/b;->T:I

    iget-object v0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->i()[C

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {p0, p1, v0, v1}, Ld2/d;->a3(I[CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Ld2/d;->b3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Ld2/d;->j3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ld2/c;->g2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ld2/c;->p2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ld2/d;->i3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ld2/d;->c3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ld2/d;->X2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ld2/c;->f2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ld2/c;->o2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Ld2/d;->e3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0, v1}, Ld2/d;->J2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
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

.method public final l3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    const/16 v0, 0x20

    const/16 v1, 0xf

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ld2/d;->U2(I)I

    move-result p1

    if-gtz p1, :cond_0

    iput v1, p0, Ld2/c;->u0:I

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ld2/c;->q2()V

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ld2/d;->h3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x23

    if-eq p1, v0, :cond_c

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_b

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_a

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5d

    sget v2, Ld2/d;->A0:I

    if-eq p1, v0, :cond_7

    const/16 v0, 0x66

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x74

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Ld2/d;->f3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Ld2/d;->d3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v1}, Ld2/d;->g3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ld2/c;->g2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ld2/c;->p2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ld2/d;->i3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ld2/d;->c3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ld2/d;->X2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_7
    iget v0, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ld2/c;->f2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_0
    invoke-virtual {p0, p1}, Ld2/d;->j3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ld2/c;->o2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Ld2/d;->b3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Ld2/d;->e3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0, v1}, Ld2/d;->J2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_1
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

.method public final m3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    const/16 v0, 0xe

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    invoke-virtual {p0, p1}, Ld2/d;->U2(I)I

    move-result p1

    if-gtz p1, :cond_0

    iput v0, p0, Ld2/c;->u0:I

    :goto_0
    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_0
    const/16 v2, 0x3a

    const/16 v3, 0x23

    if-eq p1, v2, :cond_3

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Ld2/d;->g3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v0}, Ld2/d;->J2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    iget p1, p0, Lx1/b;->p:I

    iget v0, p0, Lx1/b;->q:I

    const/16 v2, 0xc

    if-lt p1, v0, :cond_4

    iput v2, p0, Ld2/c;->u0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_4
    invoke-virtual {p0, p1}, Ld2/d;->o3(I)B

    move-result v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lx1/b;->p:I

    if-gt v0, v1, :cond_5

    invoke-virtual {p0, v0}, Ld2/d;->U2(I)I

    move-result v0

    if-gtz v0, :cond_5

    iput v2, p0, Ld2/c;->u0:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ld2/c;->q2()V

    const/16 p1, 0x22

    if-ne v0, p1, :cond_6

    invoke-virtual {p0}, Ld2/d;->h3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_6
    if-eq v0, v3, :cond_e

    const/16 p1, 0x2b

    if-eq v0, p1, :cond_d

    const/16 p1, 0x2d

    if-eq v0, p1, :cond_c

    const/16 p1, 0x5b

    if-eq v0, p1, :cond_b

    const/16 p1, 0x66

    if-eq v0, p1, :cond_a

    const/16 p1, 0x6e

    if-eq v0, p1, :cond_9

    const/16 p1, 0x74

    if-eq v0, p1, :cond_8

    const/16 p1, 0x7b

    if-eq v0, p1, :cond_7

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v0}, Ld2/d;->j3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, v0}, Ld2/d;->f3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Ld2/d;->d3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v2}, Ld2/d;->g3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ld2/c;->p2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ld2/d;->i3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ld2/d;->c3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Ld2/d;->X2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Ld2/c;->o2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Ld2/d;->b3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Ld2/d;->e3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0, v2}, Ld2/d;->J2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_1
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

.method public final n3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6

    const/16 v0, 0xd

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    invoke-virtual {p0, p1}, Ld2/d;->U2(I)I

    move-result p1

    if-gtz p1, :cond_0

    iput v0, p0, Ld2/c;->u0:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x2c

    const/16 v3, 0x23

    const/16 v4, 0x7d

    const/16 v5, 0x5d

    if-eq p1, v2, :cond_5

    if-ne p1, v5, :cond_1

    invoke-virtual {p0}, Ld2/c;->f2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Ld2/c;->g2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0}, Ld2/d;->g3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p1, v3, :cond_4

    invoke-virtual {p0, v0}, Ld2/d;->J2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_4
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

    invoke-virtual {p0, p1, v0}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    iget-object p1, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {p1}, Lc2/c;->l()Z

    iget p1, p0, Lx1/b;->p:I

    iget v0, p0, Lx1/b;->q:I

    const/16 v2, 0xf

    if-lt p1, v0, :cond_6

    iput v2, p0, Ld2/c;->u0:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_6
    invoke-virtual {p0, p1}, Ld2/d;->o3(I)B

    move-result v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lx1/b;->p:I

    if-gt v0, v1, :cond_7

    invoke-virtual {p0, v0}, Ld2/d;->U2(I)I

    move-result v0

    if-gtz v0, :cond_7

    iput v2, p0, Ld2/c;->u0:I

    :goto_0
    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ld2/c;->q2()V

    const/16 p1, 0x22

    if-ne v0, p1, :cond_8

    invoke-virtual {p0}, Ld2/d;->h3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_8
    if-eq v0, v3, :cond_13

    const/16 p1, 0x2b

    if-eq v0, p1, :cond_12

    const/16 p1, 0x2d

    if-eq v0, p1, :cond_11

    const/16 p1, 0x5b

    if-eq v0, p1, :cond_10

    sget p1, Ld2/d;->A0:I

    if-eq v0, v5, :cond_e

    const/16 v1, 0x66

    if-eq v0, v1, :cond_d

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_c

    const/16 v1, 0x74

    if-eq v0, v1, :cond_b

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_a

    if-eq v0, v4, :cond_9

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v0}, Ld2/d;->f3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Ld2/d;->d3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v2}, Ld2/d;->g3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_9
    iget v1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ld2/c;->g2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Ld2/c;->p2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Ld2/d;->i3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Ld2/d;->c3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Ld2/d;->X2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_e
    iget v1, p0, Lcom/fasterxml/jackson/core/g;->a:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ld2/c;->f2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_1
    invoke-virtual {p0, v0}, Ld2/d;->j3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Ld2/c;->o2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Ld2/d;->b3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {p0}, Ld2/d;->e3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-virtual {p0, v2}, Ld2/d;->J2(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_1
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

.method public abstract o3(I)B
.end method

.method public abstract p3()B
.end method

.method public abstract q3()I
.end method

.method public final t2()I
    .locals 3

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_8

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_8

    const/16 v1, 0x62

    if-eq v0, v1, :cond_7

    const/16 v1, 0x66

    if-eq v0, v1, :cond_6

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x72

    if-eq v0, v1, :cond_4

    const/16 v1, 0x74

    if-eq v0, v1, :cond_3

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lx1/b;->R1(C)V

    return v0

    :cond_0
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/b;->b(I)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/b;->b(I)I

    move-result v2

    if-ltz v2, :cond_2

    shl-int/lit8 v0, v1, 0x4

    or-int/2addr v0, v2

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v1

    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/b;->b(I)I

    move-result v2

    if-ltz v2, :cond_1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v2

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v1

    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/b;->b(I)I

    move-result v2

    if-ltz v2, :cond_1

    shl-int/lit8 p0, v0, 0x4

    or-int/2addr p0, v2

    return p0

    :cond_1
    move v0, v1

    :cond_2
    and-int/lit16 v0, v0, 0xff

    const-string v1, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v0, v1}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    const/16 p0, 0x9

    return p0

    :cond_4
    const/16 p0, 0xd

    return p0

    :cond_5
    const/16 p0, 0xa

    return p0

    :cond_6
    const/16 p0, 0xc

    return p0

    :cond_7
    const/16 p0, 0x8

    return p0

    :cond_8
    int-to-char p0, v0

    return p0
.end method

.method public final u2(II)I
    .locals 3

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    iput p1, p0, Ld2/c;->q0:I

    iput p2, p0, Ld2/c;->r0:I

    return v2

    :cond_0
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v0

    if-ne p2, v2, :cond_9

    const/16 p2, 0x22

    if-eq v0, p2, :cond_8

    const/16 p2, 0x2f

    if-eq v0, p2, :cond_8

    const/16 p2, 0x5c

    if-eq v0, p2, :cond_8

    const/16 p2, 0x62

    if-eq v0, p2, :cond_7

    const/16 p2, 0x66

    if-eq v0, p2, :cond_6

    const/16 p2, 0x6e

    if-eq v0, p2, :cond_5

    const/16 p2, 0x72

    if-eq v0, p2, :cond_4

    const/16 p2, 0x74

    if-eq v0, p2, :cond_3

    const/16 p2, 0x75

    if-eq v0, p2, :cond_1

    int-to-char p1, v0

    invoke-virtual {p0, p1}, Lx1/b;->R1(C)V

    return p1

    :cond_1
    iget p2, p0, Lx1/b;->p:I

    iget v0, p0, Lx1/b;->q:I

    const/4 v1, 0x0

    if-lt p2, v0, :cond_2

    iput v1, p0, Ld2/c;->r0:I

    iput v1, p0, Ld2/c;->q0:I

    return v2

    :cond_2
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result v0

    move p2, v1

    goto :goto_0

    :cond_3
    const/16 p0, 0x9

    return p0

    :cond_4
    const/16 p0, 0xd

    return p0

    :cond_5
    const/16 p0, 0xa

    return p0

    :cond_6
    const/16 p0, 0xc

    return p0

    :cond_7
    const/16 p0, 0x8

    return p0

    :cond_8
    return v0

    :cond_9
    :goto_0
    and-int/lit16 v0, v0, 0xff

    :goto_1
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/b;->b(I)I

    move-result v1

    if-ltz v1, :cond_c

    const/4 v0, 0x4

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    if-ne p2, v0, :cond_a

    return p1

    :cond_a
    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->q:I

    if-lt v0, v1, :cond_b

    iput p2, p0, Ld2/c;->r0:I

    iput p1, p0, Ld2/c;->q0:I

    return v2

    :cond_b
    invoke-virtual {p0}, Ld2/d;->q3()I

    move-result v0

    goto :goto_1

    :cond_c
    and-int/lit16 p1, v0, 0xff

    const-string p2, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, p1, p2}, Lx1/c;->y1(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final v2(IIZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_8

    const/4 v2, 0x2

    if-eq p2, v2, :cond_6

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    const/16 p2, 0x20

    if-ge p1, p2, :cond_0

    const-string p2, "string value"

    invoke-virtual {p0, p1, p2}, Lx1/b;->W1(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lx1/c;->A1(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid UTF-8 start byte 0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p0

    throw p0

    :cond_2
    and-int/lit8 p1, p1, 0x7

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Ld2/d;->x2(III)Z

    move-result p0

    return p0

    :cond_3
    iput p1, p0, Ld2/c;->o0:I

    iput v1, p0, Ld2/c;->p0:I

    const/16 p1, 0x2c

    iput p1, p0, Ld2/c;->u0:I

    return v0

    :cond_4
    and-int/lit8 p1, p1, 0xf

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Ld2/d;->w2(III)Z

    move-result p0

    return p0

    :cond_5
    const/16 p2, 0x2b

    iput p2, p0, Ld2/c;->u0:I

    iput p1, p0, Ld2/c;->o0:I

    iput v1, p0, Ld2/c;->p0:I

    return v0

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Ld2/d;->y2(II)I

    move-result p1

    goto :goto_0

    :cond_7
    const/16 p2, 0x2a

    iput p2, p0, Ld2/c;->u0:I

    iput p1, p0, Ld2/c;->o0:I

    return v0

    :cond_8
    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1}, Ld2/d;->u2(II)I

    move-result p1

    if-gez p1, :cond_9

    const/16 p1, 0x29

    iput p1, p0, Ld2/c;->u0:I

    return v0

    :cond_9
    :goto_0
    int-to-char p1, p1

    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/j;->a(C)V

    return v1
.end method

.method public final w2(III)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    and-int/lit16 p2, p3, 0xc0

    if-ne p2, v1, :cond_1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    iget p2, p0, Lx1/b;->p:I

    iget p3, p0, Lx1/b;->q:I

    if-lt p2, p3, :cond_0

    const/16 p2, 0x2b

    iput p2, p0, Ld2/c;->u0:I

    iput p1, p0, Ld2/c;->o0:I

    const/4 p1, 0x2

    iput p1, p0, Ld2/c;->p0:I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result p3

    goto :goto_0

    :cond_1
    and-int/lit16 p1, p3, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    throw v0

    :cond_2
    :goto_0
    and-int/lit16 p2, p3, 0xc0

    if-ne p2, v1, :cond_3

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    int-to-char p1, p1

    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/j;->a(C)V

    return v2

    :cond_3
    and-int/lit16 p1, p3, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    throw v0
.end method

.method public final x2(III)Z
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    and-int/lit16 p2, p3, 0xc0

    if-ne p2, v3, :cond_1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    iget p2, p0, Lx1/b;->p:I

    iget p3, p0, Lx1/b;->q:I

    if-lt p2, p3, :cond_0

    iput v1, p0, Ld2/c;->u0:I

    iput p1, p0, Ld2/c;->o0:I

    iput v4, p0, Ld2/c;->p0:I

    return v0

    :cond_0
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result p3

    move p2, v4

    goto :goto_0

    :cond_1
    and-int/lit16 p1, p3, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    throw v2

    :cond_2
    :goto_0
    if-ne p2, v4, :cond_5

    and-int/lit16 p2, p3, 0xc0

    if-ne p2, v3, :cond_4

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    iget p2, p0, Lx1/b;->p:I

    iget p3, p0, Lx1/b;->q:I

    if-lt p2, p3, :cond_3

    iput v1, p0, Ld2/c;->u0:I

    iput p1, p0, Ld2/c;->o0:I

    const/4 p1, 0x3

    iput p1, p0, Ld2/c;->p0:I

    return v0

    :cond_3
    invoke-virtual {p0}, Ld2/d;->p3()B

    move-result p3

    goto :goto_1

    :cond_4
    and-int/lit16 p1, p3, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    throw v2

    :cond_5
    :goto_1
    and-int/lit16 p2, p3, 0xc0

    if-ne p2, v3, :cond_6

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    const/high16 p2, 0x10000

    sub-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0xa

    const p3, 0xd800

    or-int/2addr p2, p3

    int-to-char p2, p2

    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/util/j;->a(C)V

    and-int/lit16 p1, p1, 0x3ff

    const p2, 0xdc00

    or-int/2addr p1, p2

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/j;->a(C)V

    return v5

    :cond_6
    and-int/lit16 p1, p3, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    throw v2
.end method

.method public final y2(II)I
    .locals 2

    and-int/lit16 v0, p2, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    and-int/lit8 p0, p1, 0x1f

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    return p0

    :cond_0
    and-int/lit16 p1, p2, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final z2(III)I
    .locals 3

    and-int/lit8 p1, p1, 0xf

    and-int/lit16 v0, p2, 0xc0

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xc0

    if-ne p2, v2, :cond_0

    shl-int/lit8 p0, p1, 0x6

    and-int/lit8 p1, p3, 0x3f

    or-int/2addr p0, p1

    return p0

    :cond_0
    and-int/lit16 p1, p3, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    throw v1

    :cond_1
    and-int/lit16 p1, p2, 0xff

    iget p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1, p2}, Ld2/c;->n2(II)V

    throw v1
.end method
