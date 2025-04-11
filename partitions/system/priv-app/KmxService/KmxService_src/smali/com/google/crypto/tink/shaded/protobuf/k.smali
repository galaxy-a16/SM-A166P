.class public final Lcom/google/crypto/tink/shaded/protobuf/k;
.super Lcom/google/crypto/tink/shaded/protobuf/m;
.source "SourceFile"


# instance fields
.field public final b:Ljava/io/InputStream;

.field public final c:[B

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/m;-><init>()V

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/s;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->b:Ljava/io/InputStream;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->c:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 6

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/k;->h()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->c:[B

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    invoke-static {v3, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([BII)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/k;->f(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    sub-int v4, v2, v1

    iget v5, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    sub-int v5, v0, v4

    invoke-virtual {p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/k;->g(I)Ljava/util/ArrayList;

    move-result-object p0

    new-array v0, v0, [B

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v4, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->wrap([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/k;->h()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->c:[B

    if-lez v0, :cond_0

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    new-instance v2, Ljava/lang/String;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    if-gt v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/k;->j(I)V

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_0
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    return-object v2

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/k;->e(I)[B

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/k;->h()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    add-int v2, v1, v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 v1, 0x0

    if-gt v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/k;->j(I)V

    add-int/lit8 v2, v0, 0x0

    :goto_0
    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->c:[B

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/k;->e(I)[B

    move-result-object p0

    :goto_1
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/f0;->a:Lcom/google/crypto/tink/shaded/protobuf/e0;

    invoke-virtual {v2, v1, v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/e0;->D(II[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(I)[B
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/k;->f(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    sub-int v2, v1, v0

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    sub-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/k;->g(I)Ljava/util/ArrayList;

    move-result-object v3

    new-array p1, p1, [B

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->c:[B

    invoke-static {p0, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v3, v0

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final f(I)[B
    .locals 6

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/s;->b:[B

    return-object p0

    :cond_0
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/m;->a:I

    sub-int v3, v2, v3

    if-gtz v3, :cond_6

    const v3, 0x7fffffff

    if-gt v2, v3, :cond_5

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->b:Ljava/io/InputStream;

    if-lt v1, v2, :cond_2

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    new-array v1, p1, [B

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->c:[B

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    iput v5, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    iput v5, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    :goto_1
    if-ge v0, p1, :cond_4

    sub-int v2, p1, v0

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    return-object v1

    :cond_5
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/k;->k(I)V

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final g(I)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p1, :cond_2

    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->b:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v5, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    sub-int/2addr p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final h()I
    .locals 7

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->c:[B

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    return v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_6

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_a

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_a

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_a

    :goto_0
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x40

    if-ge v3, v4, :cond_9

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    iget v5, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/k;->j(I)V

    :cond_7
    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    aget-byte v4, v2, v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_8

    long-to-int p0, v0

    return p0

    :cond_8
    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_a
    :goto_2
    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    return v0
.end method

.method public final i()V
    .locals 3

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int/2addr v1, v0

    const v2, 0x7fffffff

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->e:I

    :goto_0
    return-void
.end method

.method public final j(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/k;->l(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/m;->a:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    sub-int/2addr v0, p0

    if-le p1, v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method public final k(I)V
    .locals 9

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->b:Ljava/io/InputStream;

    if-ltz p1, :cond_7

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int v4, v3, v1

    add-int v5, v4, p1

    const v6, 0x7fffffff

    if-gt v5, v6, :cond_6

    iput v4, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    :goto_0
    if-ge v0, p1, :cond_3

    sub-int v1, p1, v0

    int-to-long v3, v1

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_2

    cmp-long v3, v5, v3

    if-gtz v3, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    long-to-int v1, v5

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#skip returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/k;->i()V

    throw p1

    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/k;->i()V

    if-ge v0, p1, :cond_5

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    sub-int v1, v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/k;->j(I)V

    sub-int v0, p1, v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    if-le v0, v2, :cond_4

    add-int/2addr v1, v2

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    goto :goto_2

    :cond_4
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    :cond_5
    :goto_3
    return-void

    :cond_6
    sub-int/2addr v6, v3

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Lcom/google/crypto/tink/shaded/protobuf/k;->k(I)V

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final l(I)Z
    .locals 6

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    if-le v1, v2, :cond_7

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/m;->a:I

    sub-int v4, v3, v1

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    if-le p1, v4, :cond_0

    return v5

    :cond_0
    add-int/2addr v1, v0

    add-int/2addr v1, p1

    const v4, 0x7fffffff

    if-le v1, v4, :cond_1

    return v5

    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->c:[B

    if-lez v0, :cond_3

    if-le v2, v0, :cond_2

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    iput v5, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->f:I

    :cond_3
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    array-length v2, v1

    sub-int/2addr v2, v0

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->g:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->b:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, -0x1

    if-lt v0, v2, :cond_6

    array-length v1, v1

    if-gt v0, v1, :cond_6

    if-lez v0, :cond_5

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/k;->i()V

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/k;->d:I

    if-lt v0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/k;->l(I)Z

    move-result p0

    :goto_0
    return p0

    :cond_5
    return v5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#read(byte[]) returned invalid result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "refillBuffer() called when "

    const-string v1, " bytes were already available in buffer"

    invoke-static {v0, p1, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
