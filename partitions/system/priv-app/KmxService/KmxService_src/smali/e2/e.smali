.class public final Le2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le2/e;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:I

.field public final d:I

.field public e:Z

.field public f:[Ljava/lang/String;

.field public g:[Le2/c;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le2/e;->a:Le2/e;

    iput p1, p0, Le2/e;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Le2/e;->e:Z

    const/4 p1, -0x1

    iput p1, p0, Le2/e;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Le2/e;->l:Z

    iput p1, p0, Le2/e;->k:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    new-instance v0, Le2/d;

    const/16 v1, 0x40

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x20

    new-array v2, v2, [Le2/c;

    invoke-direct {v0, v1, v2}, Le2/d;-><init>([Ljava/lang/String;[Le2/c;)V

    .line 2
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le2/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Le2/e;IILe2/d;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/e;->a:Le2/e;

    iput p3, p0, Le2/e;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Le2/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput p2, p0, Le2/e;->d:I

    sget-object p1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result p1

    iput-boolean p1, p0, Le2/e;->e:Z

    iget-object p1, p4, Le2/d;->c:[Ljava/lang/String;

    iput-object p1, p0, Le2/e;->f:[Ljava/lang/String;

    iget-object p2, p4, Le2/d;->d:[Le2/c;

    iput-object p2, p0, Le2/e;->g:[Le2/c;

    iget p2, p4, Le2/d;->a:I

    iput p2, p0, Le2/e;->h:I

    iget p2, p4, Le2/d;->b:I

    iput p2, p0, Le2/e;->k:I

    array-length p1, p1

    shr-int/lit8 p2, p1, 0x2

    sub-int p2, p1, p2

    iput p2, p0, Le2/e;->i:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Le2/e;->j:I

    iput-boolean p2, p0, Le2/e;->l:Z

    return-void
.end method

.method public static b()Le2/e;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    or-int/lit8 v0, v2, 0x1

    new-instance v1, Le2/e;

    invoke-direct {v1, v0}, Le2/e;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0xf

    add-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x7

    xor-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    iget p0, p0, Le2/e;->j:I

    and-int/2addr p0, p1

    return p0
.end method

.method public final c(II[CI)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-boolean v5, v0, Le2/e;->e:Z

    if-nez v5, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    move/from16 v5, p4

    invoke-virtual {v0, v5}, Le2/e;->a(I)I

    move-result v5

    iget-object v6, v0, Le2/e;->f:[Ljava/lang/String;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v2, :cond_3

    move v8, v7

    :cond_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int v10, v1, v8

    aget-char v10, v3, v10

    if-ne v9, v10, :cond_3

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v2, :cond_2

    return-object v6

    :cond_3
    iget-object v6, v0, Le2/e;->g:[Le2/c;

    shr-int/lit8 v8, v5, 0x1

    aget-object v6, v6, v8

    if-eqz v6, :cond_c

    iget-object v8, v6, Le2/c;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v2, :cond_4

    goto :goto_0

    :cond_4
    move v9, v7

    :cond_5
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int v11, v1, v9

    aget-char v11, v3, v11

    if-eq v10, v11, :cond_6

    :goto_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v9, v9, 0x1

    if-lt v9, v2, :cond_5

    :goto_1
    if-eqz v8, :cond_7

    return-object v8

    :cond_7
    iget-object v6, v6, Le2/c;->b:Le2/c;

    if-eqz v6, :cond_b

    iget-object v8, v6, Le2/c;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v2, :cond_8

    goto :goto_2

    :cond_8
    move v9, v7

    :cond_9
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int v11, v1, v9

    aget-char v11, v3, v11

    if-eq v10, v11, :cond_a

    :goto_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    add-int/lit8 v9, v9, 0x1

    if-lt v9, v2, :cond_9

    :goto_3
    if-eqz v8, :cond_7

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_c

    return-object v8

    :cond_c
    iget-boolean v6, v0, Le2/e;->l:Z

    if-eqz v6, :cond_d

    iget-object v4, v0, Le2/e;->f:[Ljava/lang/String;

    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Le2/e;->f:[Ljava/lang/String;

    iget-object v4, v0, Le2/e;->g:[Le2/c;

    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Le2/c;

    iput-object v4, v0, Le2/e;->g:[Le2/c;

    iput-boolean v7, v0, Le2/e;->l:Z

    goto/16 :goto_f

    :cond_d
    iget v6, v0, Le2/e;->h:I

    iget v8, v0, Le2/e;->i:I

    if-lt v6, v8, :cond_1c

    iget-object v5, v0, Le2/e;->f:[Ljava/lang/String;

    array-length v6, v5

    add-int v8, v6, v6

    const/high16 v9, 0x10000

    iget v10, v0, Le2/e;->c:I

    if-le v8, v9, :cond_e

    iput v7, v0, Le2/e;->h:I

    iput-boolean v7, v0, Le2/e;->e:Z

    const/16 v4, 0x40

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v0, Le2/e;->f:[Ljava/lang/String;

    const/16 v4, 0x20

    new-array v4, v4, [Le2/c;

    iput-object v4, v0, Le2/e;->g:[Le2/c;

    const/16 v4, 0x3f

    iput v4, v0, Le2/e;->j:I

    iput-boolean v7, v0, Le2/e;->l:Z

    goto/16 :goto_d

    :cond_e
    iget-object v9, v0, Le2/e;->g:[Le2/c;

    new-array v11, v8, [Ljava/lang/String;

    iput-object v11, v0, Le2/e;->f:[Ljava/lang/String;

    shr-int/lit8 v11, v8, 0x1

    new-array v11, v11, [Le2/c;

    iput-object v11, v0, Le2/e;->g:[Le2/c;

    add-int/lit8 v11, v8, -0x1

    iput v11, v0, Le2/e;->j:I

    shr-int/lit8 v11, v8, 0x2

    sub-int/2addr v8, v11

    iput v8, v0, Le2/e;->i:I

    move v8, v7

    move v11, v8

    move v12, v11

    :goto_5
    if-ge v7, v6, :cond_13

    aget-object v13, v5, v7

    if-eqz v13, :cond_12

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    move v15, v10

    :goto_6
    if-ge v11, v14, :cond_f

    mul-int/lit8 v15, v15, 0x21

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v16

    add-int v15, v16, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_f
    if-nez v15, :cond_10

    goto :goto_7

    :cond_10
    move v4, v15

    :goto_7
    invoke-virtual {v0, v4}, Le2/e;->a(I)I

    move-result v4

    iget-object v11, v0, Le2/e;->f:[Ljava/lang/String;

    aget-object v14, v11, v4

    if-nez v14, :cond_11

    aput-object v13, v11, v4

    goto :goto_8

    :cond_11
    shr-int/lit8 v4, v4, 0x1

    new-instance v11, Le2/c;

    iget-object v14, v0, Le2/e;->g:[Le2/c;

    aget-object v15, v14, v4

    invoke-direct {v11, v13, v15}, Le2/c;-><init>(Ljava/lang/String;Le2/c;)V

    aput-object v11, v14, v4

    iget v4, v11, Le2/c;->c:I

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v12, v4

    :cond_12
    :goto_8
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    const/4 v11, 0x0

    goto :goto_5

    :cond_13
    shr-int/lit8 v4, v6, 0x1

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_18

    aget-object v6, v9, v5

    :goto_a
    if-eqz v6, :cond_17

    add-int/lit8 v8, v8, 0x1

    iget-object v7, v6, Le2/c;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x0

    move v14, v10

    :goto_b
    if-ge v13, v11, :cond_14

    mul-int/lit8 v14, v14, 0x21

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_14
    if-nez v14, :cond_15

    const/4 v14, 0x1

    :cond_15
    invoke-virtual {v0, v14}, Le2/e;->a(I)I

    move-result v11

    iget-object v13, v0, Le2/e;->f:[Ljava/lang/String;

    aget-object v14, v13, v11

    if-nez v14, :cond_16

    aput-object v7, v13, v11

    goto :goto_c

    :cond_16
    shr-int/lit8 v11, v11, 0x1

    new-instance v13, Le2/c;

    iget-object v14, v0, Le2/e;->g:[Le2/c;

    aget-object v15, v14, v11

    invoke-direct {v13, v7, v15}, Le2/c;-><init>(Ljava/lang/String;Le2/c;)V

    aput-object v13, v14, v11

    iget v7, v13, Le2/c;->c:I

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_c
    iget-object v6, v6, Le2/c;->b:Le2/c;

    goto :goto_a

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_18
    iput v12, v0, Le2/e;->k:I

    const/4 v4, 0x0

    iput-object v4, v0, Le2/e;->m:Ljava/util/BitSet;

    iget v4, v0, Le2/e;->h:I

    if-ne v8, v4, :cond_1b

    :goto_d
    add-int v4, v2, v1

    move v5, v1

    :goto_e
    if-ge v5, v4, :cond_19

    mul-int/lit8 v10, v10, 0x21

    aget-char v6, v3, v5

    add-int/2addr v10, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_19
    if-nez v10, :cond_1a

    const/4 v10, 0x1

    :cond_1a
    invoke-virtual {v0, v10}, Le2/e;->a(I)I

    move-result v5

    goto :goto_f

    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v0, v0, Le2/e;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Internal error on SymbolTable.rehash(): had %d entries; now have %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    :goto_f
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    iget v2, v0, Le2/e;->d:I

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1d
    iget v1, v0, Le2/e;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Le2/e;->h:I

    iget-object v1, v0, Le2/e;->f:[Ljava/lang/String;

    aget-object v3, v1, v5

    if-nez v3, :cond_1e

    aput-object v4, v1, v5

    goto :goto_12

    :cond_1e
    shr-int/lit8 v1, v5, 0x1

    new-instance v3, Le2/c;

    iget-object v6, v0, Le2/e;->g:[Le2/c;

    aget-object v7, v6, v1

    invoke-direct {v3, v4, v7}, Le2/c;-><init>(Ljava/lang/String;Le2/c;)V

    const/16 v7, 0x96

    iget v8, v3, Le2/c;->c:I

    if-le v8, v7, :cond_22

    iget-object v3, v0, Le2/e;->m:Ljava/util/BitSet;

    if-nez v3, :cond_1f

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, v0, Le2/e;->m:Ljava/util/BitSet;

    goto :goto_10

    :cond_1f
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v2

    if-nez v2, :cond_20

    const/4 v2, 0x0

    iput-boolean v2, v0, Le2/e;->e:Z

    goto :goto_11

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Longest collision chain in symbol table (of size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Le2/e;->h:I

    const-string v3, ") now exceeds maximum, 150 -- suspect a DoS attack based on hash collisions"

    invoke-static {v2, v0, v3}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    iget-object v2, v0, Le2/e;->m:Ljava/util/BitSet;

    :goto_10
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    :goto_11
    iget-object v2, v0, Le2/e;->f:[Ljava/lang/String;

    aput-object v4, v2, v5

    iget-object v2, v0, Le2/e;->g:[Le2/c;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget v1, v0, Le2/e;->h:I

    sub-int/2addr v1, v8

    iput v1, v0, Le2/e;->h:I

    const/4 v1, -0x1

    iput v1, v0, Le2/e;->k:I

    goto :goto_12

    :cond_22
    aput-object v3, v6, v1

    iget v1, v0, Le2/e;->k:I

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Le2/e;->k:I

    :goto_12
    return-object v4
.end method
