.class public abstract Ld2/c;
.super Lx1/b;
.source "SourceFile"


# static fields
.field public static final y0:[Ljava/lang/String;

.field public static final z0:[D


# instance fields
.field public final Z:Le2/b;

.field public l0:[I

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:I

.field public u0:I

.field public v0:I

.field public w0:I

.field public x0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "+Infinity"

    const-string v1, "-Infinity"

    const-string v2, "NaN"

    const-string v3, "Infinity"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld2/c;->y0:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Ld2/c;->z0:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x7ff8000000000000L    # Double.NaN
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        -0x10000000000000L    # Double.NEGATIVE_INFINITY
    .end array-data
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILe2/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/b;-><init>(Lcom/fasterxml/jackson/core/io/d;I)V

    const/16 p1, 0x8

    new-array p1, p1, [I

    iput-object p1, p0, Ld2/c;->l0:[I

    const/4 p1, 0x1

    iput p1, p0, Ld2/c;->x0:I

    iput-object p3, p0, Ld2/c;->Z:Le2/b;

    const/4 p2, 0x0

    iput-object p2, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 p2, 0x0

    iput p2, p0, Ld2/c;->s0:I

    iput p1, p0, Ld2/c;->t0:I

    return-void
.end method

.method public static final l2(II)I
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
.method public final C1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lx1/b;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0}, Lx1/c;->C1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final I0()Lcom/fasterxml/jackson/core/util/g;
    .locals 0

    sget-object p0, Lx1/b;->Y:Lcom/fasterxml/jackson/core/util/g;

    return-object p0
.end method

.method public final J(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lx1/b;->G:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lx1/b;->Q1()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    invoke-virtual {p0}, Ld2/c;->K0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lx1/c;->o1(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/c;Lcom/fasterxml/jackson/core/Base64Variant;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->x()[B

    move-result-object p1

    iput-object p1, p0, Lx1/b;->G:[B

    :cond_0
    iget-object p0, p0, Lx1/b;->G:[B

    return-object p0

    :cond_1
    const-string p1, "Current token (%s) not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {p0, v0, p1}, Lx1/c;->u1(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J1()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx1/b;->q:I

    return-void
.end method

.method public final K0()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v2, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    if-ne v0, v1, :cond_0

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const/4 v1, 0x5

    if-eq v3, v1, :cond_3

    const/4 p0, 0x6

    if-eq v3, p0, :cond_2

    const/4 p0, 0x7

    if-eq v3, p0, :cond_2

    const/16 p0, 0x8

    if-eq v3, p0, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    iget-object v1, p0, Lc2/c;->f:Ljava/lang/String;

    :cond_4
    :goto_0
    return-object v1
.end method

.method public final L0()[C
    .locals 4

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->n()[C

    move-result-object p0

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lx1/b;->E:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget-object v0, v0, Lc2/c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lx1/b;->C:[C

    if-nez v2, :cond_2

    iget-object v2, p0, Lx1/b;->m:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/d;->c(I)[C

    move-result-object v2

    iput-object v2, p0, Lx1/b;->C:[C

    goto :goto_0

    :cond_2
    array-length v2, v2

    if-ge v2, v1, :cond_3

    new-array v2, v1, [C

    iput-object v2, p0, Lx1/b;->C:[C

    :cond_3
    :goto_0
    iget-object v2, p0, Lx1/b;->C:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx1/b;->E:Z

    :cond_4
    iget-object p0, p0, Lx1/b;->C:[C

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final M0()I
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object p0

    array-length p0, p0

    return p0

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->t()I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lx1/b;->z:Lc2/c;

    iget-object p0, p0, Lc2/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final N0()I
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->o()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final O()Lcom/fasterxml/jackson/core/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final O0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v1

    iget-wide v2, p0, Lx1/b;->w:J

    const-wide/16 v4, -0x1

    iget v6, p0, Lx1/b;->x:I

    iget v7, p0, Lx1/b;->y:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v8
.end method

.method public final S0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lx1/b;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0}, Lx1/c;->C1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final U0()Z
    .locals 3

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    iget v0, p0, Lcom/fasterxml/jackson/core/util/j;->c:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/j;->k:[C

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/j;->j:Ljava/lang/String;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    iget-boolean p0, p0, Lx1/b;->E:Z

    return p0

    :cond_3
    return v2
.end method

.method public final U1()V
    .locals 0

    invoke-super {p0}, Lx1/b;->U1()V

    iget-object p0, p0, Ld2/c;->Z:Le2/b;

    invoke-virtual {p0}, Le2/b;->m()V

    return-void
.end method

.method public final b0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->v:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    iget v0, p0, Lx1/b;->u:I

    iget v1, p0, Ld2/c;->x0:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lx1/b;->K1()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v2

    iget-wide v3, p0, Lx1/b;->t:J

    iget p0, p0, Lx1/b;->p:I

    add-int/lit8 p0, p0, 0x0

    int-to-long v5, p0

    add-long/2addr v3, v5

    const-wide/16 v5, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v0
.end method

.method public final e2(II[I)Ljava/lang/String;
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

    const/16 v16, 0x0

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

    or-int/2addr v6, v5

    goto :goto_3

    :cond_3
    and-int/lit16 v1, v6, 0xff

    invoke-virtual {v0, v1}, Ld2/c;->m2(I)V

    throw v16

    :cond_4
    const/16 v18, 0x3

    move v13, v5

    move v5, v6

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v5}, Ld2/c;->m2(I)V

    throw v16

    :cond_6
    const/16 v18, 0x3

    :goto_3
    move v13, v6

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
    invoke-virtual {v0, v15}, Ld2/c;->m2(I)V

    throw v16

    :cond_9
    const-string v1, " in field name"

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1, v2}, Lx1/c;->w1(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    throw v16

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid UTF-8 start byte 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

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
    iget-object v0, v0, Ld2/c;->Z:Le2/b;

    invoke-virtual {v0, v4, v3, v1}, Le2/b;->e(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget-object v0, v0, Lc2/c;->c:Lc2/c;

    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Ld2/c;->s0:I

    iput v0, p0, Ld2/c;->t0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_2
    const/16 v0, 0x5d

    const/16 v1, 0x7d

    invoke-virtual {p0, v1, v0}, Lx1/b;->V1(CI)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    iget-object v0, v0, Lc2/c;->c:Lc2/c;

    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Ld2/c;->s0:I

    iput v0, p0, Ld2/c;->t0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_2
    const/16 v0, 0x7d

    const/16 v1, 0x5d

    invoke-virtual {p0, v1, v0}, Lx1/b;->V1(CI)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h2(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ld2/c;->s0:I

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    invoke-virtual {v0, p1}, Lc2/c;->m(Ljava/lang/String;)V

    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method public final i1(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/io/c;)I
    .locals 0

    invoke-virtual {p0, p1}, Ld2/c;->J(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/io/c;->write([B)V

    array-length p0, p0

    return p0
.end method

.method public final i2(II)Ljava/lang/String;
    .locals 2

    invoke-static {p1, p2}, Ld2/c;->l2(II)I

    move-result p1

    iget-object v0, p0, Ld2/c;->Z:Le2/b;

    invoke-virtual {v0, p1}, Le2/b;->h(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ld2/c;->l0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ld2/c;->e2(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j2(III)Ljava/lang/String;
    .locals 2

    invoke-static {p2, p3}, Ld2/c;->l2(II)I

    move-result p2

    iget-object v0, p0, Ld2/c;->Z:Le2/b;

    invoke-virtual {v0, p1, p2}, Le2/b;->i(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ld2/c;->l0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3, v0}, Ld2/c;->e2(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k2(IIII)Ljava/lang/String;
    .locals 2

    invoke-static {p3, p4}, Ld2/c;->l2(II)I

    move-result p3

    iget-object v0, p0, Ld2/c;->Z:Le2/b;

    invoke-virtual {v0, p1, p2, p3}, Le2/b;->j(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ld2/c;->l0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ld2/c;->l2(II)I

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p4, v0}, Ld2/c;->e2(II[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m2(I)V
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

.method public final n2(II)V
    .locals 0

    iput p2, p0, Lx1/b;->p:I

    invoke-virtual {p0, p1}, Ld2/c;->m2(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final o2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lc2/c;->j(II)Lc2/c;

    move-result-object v0

    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    const/4 v0, 0x5

    iput v0, p0, Ld2/c;->s0:I

    const/4 v0, 0x6

    iput v0, p0, Ld2/c;->t0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final p2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    iget-object v0, p0, Lx1/b;->z:Lc2/c;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lc2/c;->k(II)Lc2/c;

    move-result-object v0

    iput-object v0, p0, Lx1/b;->z:Lc2/c;

    const/4 v0, 0x2

    iput v0, p0, Ld2/c;->s0:I

    const/4 v0, 0x3

    iput v0, p0, Ld2/c;->t0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final q2()V
    .locals 5

    iget v0, p0, Lx1/b;->u:I

    iget v1, p0, Ld2/c;->x0:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lx1/b;->x:I

    iget v0, p0, Lx1/b;->p:I

    iget v1, p0, Lx1/b;->v:I

    sub-int v1, v0, v1

    iput v1, p0, Lx1/b;->y:I

    iget-wide v1, p0, Lx1/b;->t:J

    add-int/lit8 v0, v0, 0x0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lx1/b;->w:J

    return-void
.end method

.method public final r2(Lcom/fasterxml/jackson/core/JsonToken;)V
    .locals 1

    iget v0, p0, Ld2/c;->t0:I

    iput v0, p0, Ld2/c;->s0:I

    iput-object p1, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method

.method public final s2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    const-string v0, "0"

    iget-object v1, p0, Lx1/b;->B:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/j;->s(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lx1/b;->T:I

    iput v0, p0, Lx1/b;->H:I

    const/4 v0, 0x0

    iput v0, p0, Lx1/b;->I:I

    iget v0, p0, Ld2/c;->t0:I

    iput v0, p0, Ld2/c;->s0:I

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final z0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lx1/c;->c:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lx1/b;->G:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
