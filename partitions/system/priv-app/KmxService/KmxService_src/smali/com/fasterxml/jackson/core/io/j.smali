.class public final Lcom/fasterxml/jackson/core/io/j;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/core/io/d;

.field public b:Ljava/io/InputStream;

.field public c:[B

.field public d:I

.field public e:I

.field public final f:Z

.field public g:C

.field public h:I

.field public i:I

.field public final j:Z

.field public k:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;[BIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/j;->g:C

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/j;->a:Lcom/fasterxml/jackson/core/io/d;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/j;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    iput p4, p0, Lcom/fasterxml/jackson/core/io/j;->d:I

    iput p5, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    iput-boolean p6, p0, Lcom/fasterxml/jackson/core/io/j;->f:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/io/j;->j:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    iget v0, p0, Lcom/fasterxml/jackson/core/io/j;->i:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/fasterxml/jackson/core/io/j;->h:I

    new-instance v1, Ljava/io/CharConversionException;

    const-string v2, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    const-string v3, ", needed 4, at char #"

    const-string v4, ", byte #"

    invoke-static {v2, p1, v3, p0, v4}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-static {p0, v0, p1}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/j;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/j;->a:Lcom/fasterxml/jackson/core/io/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/io/d;->e([B)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public final read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->k:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->k:[C

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->k:[C

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/j;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/j;->k:[C

    aget-char p0, p0, v2

    return p0
.end method

.method public final read([CII)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    const/4 v4, -0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x1

    if-ge v2, v5, :cond_1

    return v2

    :cond_1
    const/4 v6, 0x0

    if-ltz p2, :cond_13

    add-int v7, p2, v2

    array-length v8, v1

    if-gt v7, v8, :cond_13

    iget-char v2, v0, Lcom/fasterxml/jackson/core/io/j;->g:C

    const/4 v8, 0x4

    if-eqz v2, :cond_2

    add-int/lit8 v3, p2, 0x1

    aput-char v2, v1, p2

    iput-char v6, v0, Lcom/fasterxml/jackson/core/io/j;->g:C

    goto/16 :goto_4

    :cond_2
    iget v2, v0, Lcom/fasterxml/jackson/core/io/j;->e:I

    iget v9, v0, Lcom/fasterxml/jackson/core/io/j;->d:I

    sub-int v10, v2, v9

    if-ge v10, v8, :cond_d

    .line 2
    iget-object v11, v0, Lcom/fasterxml/jackson/core/io/j;->b:Ljava/io/InputStream;

    const/4 v12, 0x0

    if-eqz v11, :cond_b

    iget v13, v0, Lcom/fasterxml/jackson/core/io/j;->i:I

    sub-int/2addr v2, v10

    add-int/2addr v2, v13

    iput v2, v0, Lcom/fasterxml/jackson/core/io/j;->i:I

    iget-object v2, v0, Lcom/fasterxml/jackson/core/io/j;->a:Lcom/fasterxml/jackson/core/io/d;

    const-string v13, "Strange I/O stream, returned 0 bytes on read"

    iget-boolean v14, v0, Lcom/fasterxml/jackson/core/io/j;->j:Z

    if-lez v10, :cond_4

    if-lez v9, :cond_3

    invoke-static {v3, v9, v3, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, v0, Lcom/fasterxml/jackson/core/io/j;->d:I

    :cond_3
    move v3, v10

    goto :goto_0

    :cond_4
    iput v6, v0, Lcom/fasterxml/jackson/core/io/j;->d:I

    invoke-virtual {v11, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ge v3, v5, :cond_6

    iput v6, v0, Lcom/fasterxml/jackson/core/io/j;->e:I

    if-gez v3, :cond_5

    if-eqz v14, :cond_b

    .line 3
    iget-object v3, v0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    if-eqz v3, :cond_b

    iput-object v12, v0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    if-eqz v2, :cond_b

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/io/d;->e([B)V

    goto :goto_2

    .line 4
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_6
    :goto_0
    iput v3, v0, Lcom/fasterxml/jackson/core/io/j;->e:I

    :goto_1
    iget v3, v0, Lcom/fasterxml/jackson/core/io/j;->e:I

    if-ge v3, v8, :cond_a

    iget-object v9, v0, Lcom/fasterxml/jackson/core/io/j;->b:Ljava/io/InputStream;

    iget-object v11, v0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    array-length v15, v11

    sub-int/2addr v15, v3

    invoke-virtual {v9, v11, v3, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ge v3, v5, :cond_9

    if-gez v3, :cond_8

    if-eqz v14, :cond_7

    .line 6
    iget-object v1, v0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    if-eqz v1, :cond_7

    iput-object v12, v0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/d;->e([B)V

    .line 7
    :cond_7
    iget v1, v0, Lcom/fasterxml/jackson/core/io/j;->e:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/j;->a(I)V

    throw v12

    .line 8
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_9
    iget v9, v0, Lcom/fasterxml/jackson/core/io/j;->e:I

    add-int/2addr v9, v3

    iput v9, v0, Lcom/fasterxml/jackson/core/io/j;->e:I

    goto :goto_1

    :cond_a
    move v2, v5

    goto :goto_3

    :cond_b
    :goto_2
    move v2, v6

    :goto_3
    if-nez v2, :cond_d

    if-nez v10, :cond_c

    return v4

    .line 10
    :cond_c
    iget v1, v0, Lcom/fasterxml/jackson/core/io/j;->e:I

    iget v2, v0, Lcom/fasterxml/jackson/core/io/j;->d:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/j;->a(I)V

    throw v12

    :cond_d
    move/from16 v3, p2

    :goto_4
    iget v2, v0, Lcom/fasterxml/jackson/core/io/j;->e:I

    sub-int/2addr v2, v8

    :goto_5
    if-ge v3, v7, :cond_12

    iget v8, v0, Lcom/fasterxml/jackson/core/io/j;->d:I

    if-gt v8, v2, :cond_12

    iget-boolean v9, v0, Lcom/fasterxml/jackson/core/io/j;->f:Z

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    aget-byte v10, v9, v8

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, v8, 0x1

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    add-int/lit8 v11, v8, 0x2

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v12, v8, 0x3

    aget-byte v9, v9, v12

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v11

    goto :goto_6

    :cond_e
    iget-object v9, v0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    aget-byte v10, v9, v8

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v8, 0x1

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    add-int/lit8 v11, v8, 0x2

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v8, 0x3

    aget-byte v9, v9, v12

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v11

    move/from16 v16, v10

    move v10, v9

    move/from16 v9, v16

    :goto_6
    add-int/lit8 v8, v8, 0x4

    iput v8, v0, Lcom/fasterxml/jackson/core/io/j;->d:I

    if-eqz v10, :cond_11

    const v8, 0xffff

    and-int/2addr v8, v10

    add-int/lit8 v10, v8, -0x1

    const/16 v11, 0x10

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    if-gt v8, v11, :cond_10

    add-int/lit8 v8, v3, 0x1

    shr-int/lit8 v10, v9, 0xa

    const v11, 0xd800

    add-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v1, v3

    and-int/lit16 v3, v9, 0x3ff

    const v10, 0xdc00

    or-int/2addr v3, v10

    if-lt v8, v7, :cond_f

    int-to-char v1, v9

    iput-char v1, v0, Lcom/fasterxml/jackson/core/io/j;->g:C

    move v3, v8

    goto :goto_8

    :cond_f
    move v9, v3

    move v3, v8

    goto :goto_7

    :cond_10
    sub-int v3, v3, p2

    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x10ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, " (above 0x%08x)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 11
    iget v2, v0, Lcom/fasterxml/jackson/core/io/j;->i:I

    iget v5, v0, Lcom/fasterxml/jackson/core/io/j;->d:I

    add-int/2addr v2, v5

    add-int/2addr v2, v4

    iget v0, v0, Lcom/fasterxml/jackson/core/io/j;->h:I

    add-int/2addr v0, v3

    new-instance v3, Ljava/io/CharConversionException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid UTF-32 character 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at char #"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", byte #"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 12
    invoke-static {v4, v2, v0}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-direct {v3, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    :goto_7
    add-int/lit8 v8, v3, 0x1

    int-to-char v9, v9

    .line 14
    aput-char v9, v1, v3

    move v3, v8

    goto/16 :goto_5

    :cond_12
    :goto_8
    sub-int v3, v3, p2

    iget v1, v0, Lcom/fasterxml/jackson/core/io/j;->h:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/fasterxml/jackson/core/io/j;->h:I

    return v3

    .line 15
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const-string v1, "read(buf,%d,%d), cbuf[%d]"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
