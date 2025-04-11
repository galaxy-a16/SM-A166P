.class public final Lc2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/core/io/d;

.field public final b:Ljava/io/InputStream;

.field public final c:[B

.field public d:I

.field public e:I

.field public final f:Z

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/a;->g:Z

    iput-object p1, p0, Lc2/a;->a:Lcom/fasterxml/jackson/core/io/d;

    iput-object p2, p0, Lc2/a;->b:Ljava/io/InputStream;

    .line 1
    iget-object p2, p1, Lcom/fasterxml/jackson/core/io/d;->f:[B

    .line 2
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/d;->a(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/fasterxml/jackson/core/io/d;->e:Lcom/fasterxml/jackson/core/util/a;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/util/a;->a(I)[B

    move-result-object p2

    iput-object p2, p1, Lcom/fasterxml/jackson/core/io/d;->f:[B

    .line 3
    iput-object p2, p0, Lc2/a;->c:[B

    iput v1, p0, Lc2/a;->d:I

    iput v1, p0, Lc2/a;->e:I

    iput-boolean v0, p0, Lc2/a;->f:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;[BII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/a;->g:Z

    iput-object p1, p0, Lc2/a;->a:Lcom/fasterxml/jackson/core/io/d;

    const/4 p1, 0x0

    iput-object p1, p0, Lc2/a;->b:Ljava/io/InputStream;

    iput-object p2, p0, Lc2/a;->c:[B

    iput p3, p0, Lc2/a;->d:I

    add-int/2addr p3, p4

    iput p3, p0, Lc2/a;->e:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc2/a;->f:Z

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/CharConversionException;

    const-string v1, "Unsupported UCS-4 endianness ("

    const-string v2, ") detected"

    invoke-static {v1, p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Lz1/a;)I
    .locals 1

    check-cast p0, Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->i()B

    move-result v0

    invoke-static {p0, v0}, Lc2/a;->e(Lz1/a;B)I

    move-result p0

    return p0
.end method

.method public static e(Lz1/a;B)I
    .locals 1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/j;->i()B

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILcom/fasterxml/jackson/core/j;Le2/b;Le2/e;I)Lx1/b;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    iget v3, v0, Lc2/a;->d:I

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lc2/a;->b(I)Z

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    iget-object v10, v0, Lc2/a;->c:[B

    const/16 v11, 0x10

    const/16 v12, 0x8

    if-eqz v5, :cond_f

    iget v5, v0, Lc2/a;->d:I

    aget-byte v13, v10, v5

    shl-int/lit8 v13, v13, 0x18

    add-int/lit8 v14, v5, 0x1

    aget-byte v14, v10, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v11

    or-int/2addr v13, v14

    add-int/lit8 v14, v5, 0x2

    aget-byte v15, v10, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v12

    or-int/2addr v13, v15

    add-int/lit8 v15, v5, 0x3

    aget-byte v12, v10, v15

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v12, v13

    const/4 v13, 0x0

    const/high16 v6, -0x1010000

    const-string v16, "3412"

    if-eq v12, v6, :cond_e

    const/high16 v6, -0x20000

    const-string v17, "2143"

    if-eq v12, v6, :cond_5

    const v6, 0xfeff

    if-eq v12, v6, :cond_4

    const v5, 0xfffe

    if-eq v12, v5, :cond_3

    ushr-int/lit8 v11, v12, 0x10

    if-ne v11, v6, :cond_0

    iput v14, v0, Lc2/a;->d:I

    iput v9, v0, Lc2/a;->h:I

    goto :goto_0

    :cond_0
    if-ne v11, v5, :cond_1

    iput v14, v0, Lc2/a;->d:I

    iput v9, v0, Lc2/a;->h:I

    goto :goto_1

    :cond_1
    ushr-int/lit8 v5, v12, 0x8

    const v6, 0xefbbbf

    if-ne v5, v6, :cond_2

    iput v15, v0, Lc2/a;->d:I

    iput v8, v0, Lc2/a;->h:I

    :goto_0
    iput-boolean v8, v0, Lc2/a;->g:Z

    goto :goto_2

    :cond_2
    move v5, v7

    goto :goto_3

    :cond_3
    invoke-static/range {v17 .. v17}, Lc2/a;->c(Ljava/lang/String;)V

    throw v13

    :cond_4
    iput-boolean v8, v0, Lc2/a;->g:Z

    add-int/2addr v5, v4

    iput v5, v0, Lc2/a;->d:I

    iput v4, v0, Lc2/a;->h:I

    goto :goto_2

    :cond_5
    add-int/2addr v5, v4

    iput v5, v0, Lc2/a;->d:I

    iput v4, v0, Lc2/a;->h:I

    :goto_1
    iput-boolean v7, v0, Lc2/a;->g:Z

    :goto_2
    move v5, v8

    :goto_3
    if-eqz v5, :cond_6

    goto/16 :goto_a

    :cond_6
    shr-int/lit8 v5, v12, 0x8

    if-nez v5, :cond_7

    iput-boolean v8, v0, Lc2/a;->g:Z

    goto :goto_4

    :cond_7
    const v5, 0xffffff

    and-int/2addr v5, v12

    if-nez v5, :cond_8

    iput-boolean v7, v0, Lc2/a;->g:Z

    :goto_4
    iput v4, v0, Lc2/a;->h:I

    move v5, v8

    goto :goto_5

    :cond_8
    const v5, -0xff0001

    and-int/2addr v5, v12

    if-eqz v5, :cond_d

    const v5, -0xff01

    and-int/2addr v5, v12

    if-eqz v5, :cond_c

    move v5, v7

    :goto_5
    if-eqz v5, :cond_9

    goto :goto_a

    :cond_9
    const/16 v5, 0x10

    ushr-int/lit8 v6, v12, 0x10

    const v5, 0xff00

    and-int/2addr v5, v6

    if-nez v5, :cond_a

    iput-boolean v8, v0, Lc2/a;->g:Z

    goto :goto_6

    :cond_a
    and-int/lit16 v5, v6, 0xff

    if-nez v5, :cond_b

    iput-boolean v7, v0, Lc2/a;->g:Z

    :goto_6
    iput v9, v0, Lc2/a;->h:I

    move v5, v8

    goto :goto_7

    :cond_b
    move v5, v7

    :goto_7
    if-eqz v5, :cond_12

    goto :goto_a

    :cond_c
    invoke-static/range {v17 .. v17}, Lc2/a;->c(Ljava/lang/String;)V

    throw v13

    :cond_d
    invoke-static/range {v16 .. v16}, Lc2/a;->c(Ljava/lang/String;)V

    throw v13

    :cond_e
    invoke-static/range {v16 .. v16}, Lc2/a;->c(Ljava/lang/String;)V

    throw v13

    :cond_f
    invoke-virtual {v0, v9}, Lc2/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_12

    iget v5, v0, Lc2/a;->d:I

    aget-byte v6, v10, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v11, 0x8

    shl-int/2addr v6, v11

    add-int/2addr v5, v8

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v6, v5

    if-nez v6, :cond_10

    iput-boolean v8, v0, Lc2/a;->g:Z

    goto :goto_8

    :cond_10
    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_11

    iput-boolean v7, v0, Lc2/a;->g:Z

    :goto_8
    iput v9, v0, Lc2/a;->h:I

    move v5, v8

    goto :goto_9

    :cond_11
    move v5, v7

    :goto_9
    if-eqz v5, :cond_12

    :goto_a
    move v7, v8

    :cond_12
    const-string v5, "Internal error"

    if-nez v7, :cond_13

    goto :goto_b

    :cond_13
    iget v6, v0, Lc2/a;->h:I

    if-eq v6, v8, :cond_18

    if-eq v6, v9, :cond_16

    if-ne v6, v4, :cond_15

    iget-boolean v4, v0, Lc2/a;->g:Z

    if-eqz v4, :cond_14

    sget-object v4, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_BE:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto :goto_c

    :cond_14
    sget-object v4, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_LE:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto :goto_c

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-boolean v4, v0, Lc2/a;->g:Z

    if-eqz v4, :cond_17

    sget-object v4, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_BE:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto :goto_c

    :cond_17
    sget-object v4, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_LE:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto :goto_c

    :cond_18
    :goto_b
    sget-object v4, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    :goto_c
    iget-object v6, v0, Lc2/a;->a:Lcom/fasterxml/jackson/core/io/d;

    iput-object v4, v6, Lcom/fasterxml/jackson/core/io/d;->c:Lcom/fasterxml/jackson/core/JsonEncoding;

    iget v7, v0, Lc2/a;->d:I

    sub-int v27, v7, v3

    sget-object v3, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne v4, v3, :cond_19

    sget-object v3, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Le2/b;->l(I)Le2/b;

    move-result-object v23

    new-instance v1, Lc2/i;

    iget-object v2, v0, Lc2/a;->a:Lcom/fasterxml/jackson/core/io/d;

    iget-object v3, v0, Lc2/a;->b:Ljava/io/InputStream;

    iget-object v4, v0, Lc2/a;->c:[B

    iget v5, v0, Lc2/a;->d:I

    iget v6, v0, Lc2/a;->e:I

    iget-boolean v0, v0, Lc2/a;->f:Z

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, p1

    move-object/from16 v21, v3

    move-object/from16 v22, p2

    move-object/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v28, v0

    invoke-direct/range {v18 .. v28}, Lc2/i;-><init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/InputStream;Lcom/fasterxml/jackson/core/j;Le2/b;[BIIIZ)V

    return-object v1

    :cond_19
    new-instance v3, Lc2/f;

    iget-object v4, v6, Lcom/fasterxml/jackson/core/io/d;->c:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonEncoding;->bits()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1b

    const/16 v8, 0x10

    if-eq v7, v8, :cond_1b

    const/16 v4, 0x20

    if-ne v7, v4, :cond_1a

    new-instance v4, Lcom/fasterxml/jackson/core/io/j;

    iget-object v5, v0, Lc2/a;->b:Ljava/io/InputStream;

    iget-object v7, v0, Lc2/a;->c:[B

    iget v8, v0, Lc2/a;->d:I

    iget v0, v0, Lc2/a;->e:I

    iget-object v9, v6, Lcom/fasterxml/jackson/core/io/d;->c:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonEncoding;->isBigEndian()Z

    move-result v24

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v0

    invoke-direct/range {v18 .. v24}, Lcom/fasterxml/jackson/core/io/j;-><init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;[BIIZ)V

    move-object/from16 v21, v4

    goto :goto_e

    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v9, v0, Lc2/a;->b:Ljava/io/InputStream;

    if-nez v9, :cond_1c

    new-instance v9, Ljava/io/ByteArrayInputStream;

    iget v5, v0, Lc2/a;->d:I

    iget v0, v0, Lc2/a;->e:I

    invoke-direct {v9, v10, v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_d

    :cond_1c
    iget v5, v0, Lc2/a;->d:I

    iget v7, v0, Lc2/a;->e:I

    if-ge v5, v7, :cond_1d

    new-instance v5, Lcom/fasterxml/jackson/core/io/f;

    iget-object v8, v0, Lc2/a;->a:Lcom/fasterxml/jackson/core/io/d;

    iget-object v10, v0, Lc2/a;->c:[B

    iget v11, v0, Lc2/a;->d:I

    iget v12, v0, Lc2/a;->e:I

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/fasterxml/jackson/core/io/f;-><init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;[BII)V

    move-object v9, v5

    :cond_1d
    :goto_d
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v21, v0

    :goto_e
    new-instance v0, Le2/e;

    iget-object v4, v1, Le2/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le2/d;

    iget v5, v1, Le2/e;->c:I

    invoke-direct {v0, v1, v2, v5, v4}, Le2/e;-><init>(Le2/e;IILe2/d;)V

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move/from16 v20, p1

    move-object/from16 v22, p2

    move-object/from16 v23, v0

    invoke-direct/range {v18 .. v23}, Lc2/f;-><init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/Reader;Lcom/fasterxml/jackson/core/j;Le2/e;)V

    return-object v3
.end method

.method public final b(I)Z
    .locals 6

    iget v0, p0, Lc2/a;->e:I

    iget v1, p0, Lc2/a;->d:I

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_2

    iget-object v2, p0, Lc2/a;->b:Ljava/io/InputStream;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    iget v3, p0, Lc2/a;->e:I

    iget-object v4, p0, Lc2/a;->c:[B

    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_1
    if-ge v2, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget v1, p0, Lc2/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lc2/a;->e:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method
