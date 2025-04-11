.class public final Lcom/google/protobuf/g0;
.super Lcom/google/protobuf/i0;
.source "SourceFile"


# instance fields
.field public final e:Ljava/io/InputStream;

.field public final f:[B

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/i0;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/g0;->l:I

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/g0;->e:Ljava/io/InputStream;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/protobuf/g0;->f:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/g0;->g:I

    iput p1, p0, Lcom/google/protobuf/g0;->i:I

    iput p1, p0, Lcom/google/protobuf/g0;->k:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "input"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->N()I

    move-result p0

    return p0
.end method

.method public final B()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/i0;->c(I)I

    move-result p0

    return p0
.end method

.method public final D()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->P()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/i0;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final E()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/g0;->f:[B

    if-lez v0, :cond_0

    iget v2, p0, Lcom/google/protobuf/g0;->g:I

    iget v3, p0, Lcom/google/protobuf/g0;->i:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    new-instance v2, Ljava/lang/String;

    sget-object v4, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget v2, p0, Lcom/google/protobuf/g0;->g:I

    if-gt v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->S(I)V

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/google/protobuf/g0;->i:I

    sget-object v4, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_0
    iget v1, p0, Lcom/google/protobuf/g0;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/g0;->i:I

    return-object v2

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->K(I)[B

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final F()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/g0;->i:I

    iget v2, p0, Lcom/google/protobuf/g0;->g:I

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

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->S(I)V

    add-int/lit8 v2, v0, 0x0

    :goto_0
    iput v2, p0, Lcom/google/protobuf/g0;->i:I

    iget-object p0, p0, Lcom/google/protobuf/g0;->f:[B

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->K(I)[B

    move-result-object p0

    :goto_1
    sget-object v2, Lcom/google/protobuf/yb;->a:Lcom/google/protobuf/xb;

    invoke-virtual {v2, v1, v0, p0}, Lcom/google/protobuf/xb;->g0(II[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final G()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/g0;->j:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/g0;->j:I

    ushr-int/lit8 p0, v0, 0x3

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final H()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result p0

    return p0
.end method

.method public final I()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->P()J

    move-result-wide v0

    return-wide v0
.end method

.method public final J(I)Z
    .locals 5

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g0;->T(I)V

    return v2

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/g0;->G()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->J(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->a(I)V

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result p1

    goto :goto_0

    :cond_5
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->T(I)V

    return v2

    :cond_6
    iget p1, p0, Lcom/google/protobuf/g0;->g:I

    iget v0, p0, Lcom/google/protobuf/g0;->i:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/protobuf/g0;->f:[B

    const/16 v3, 0xa

    if-lt p1, v3, :cond_9

    :goto_1
    if-ge v1, v3, :cond_8

    iget p1, p0, Lcom/google/protobuf/g0;->i:I

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lcom/google/protobuf/g0;->i:I

    aget-byte p1, v0, p1

    if-ltz p1, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_2
    if-ge v1, v3, :cond_c

    iget p1, p0, Lcom/google/protobuf/g0;->i:I

    iget v4, p0, Lcom/google/protobuf/g0;->g:I

    if-ne p1, v4, :cond_a

    invoke-virtual {p0, v2}, Lcom/google/protobuf/g0;->S(I)V

    :cond_a
    iget p1, p0, Lcom/google/protobuf/g0;->i:I

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lcom/google/protobuf/g0;->i:I

    aget-byte p1, v0, p1

    if-ltz p1, :cond_b

    :goto_3
    return v2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final K(I)[B
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->L(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/g0;->i:I

    iget v1, p0, Lcom/google/protobuf/g0;->g:I

    sub-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/g0;->k:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/protobuf/g0;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/g0;->i:I

    iput v1, p0, Lcom/google/protobuf/g0;->g:I

    sub-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g0;->M(I)Ljava/util/ArrayList;

    move-result-object v3

    new-array p1, p1, [B

    iget-object p0, p0, Lcom/google/protobuf/g0;->f:[B

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

.method public final L(I)[B
    .locals 6

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/protobuf/g7;->c:[B

    return-object p0

    :cond_0
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/protobuf/g0;->k:I

    iget v1, p0, Lcom/google/protobuf/g0;->i:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/protobuf/i0;->c:I

    sub-int v3, v2, v3

    if-gtz v3, :cond_6

    iget v3, p0, Lcom/google/protobuf/g0;->l:I

    if-gt v2, v3, :cond_5

    iget v0, p0, Lcom/google/protobuf/g0;->g:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    iget-object v3, p0, Lcom/google/protobuf/g0;->e:Ljava/io/InputStream;

    if-lt v1, v2, :cond_2

    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    throw p0

    :cond_2
    :goto_0
    new-array v1, p1, [B

    iget v2, p0, Lcom/google/protobuf/g0;->i:I

    iget-object v4, p0, Lcom/google/protobuf/g0;->f:[B

    const/4 v5, 0x0

    invoke-static {v4, v2, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/protobuf/g0;->k:I

    iget v4, p0, Lcom/google/protobuf/g0;->g:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/protobuf/g0;->k:I

    iput v5, p0, Lcom/google/protobuf/g0;->i:I

    iput v5, p0, Lcom/google/protobuf/g0;->g:I

    :goto_1
    if-ge v0, p1, :cond_4

    sub-int v2, p1, v0

    :try_start_1
    invoke-virtual {v3, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    iget v4, p0, Lcom/google/protobuf/g0;->k:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/protobuf/g0;->k:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    throw p0

    :cond_4
    return-object v1

    :cond_5
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g0;->T(I)V

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final M(I)Ljava/util/ArrayList;
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

    iget-object v4, p0, Lcom/google/protobuf/g0;->e:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v5, p0, Lcom/google/protobuf/g0;->k:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/protobuf/g0;->k:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    sub-int/2addr p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final N()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/g0;->i:I

    iget v1, p0, Lcom/google/protobuf/g0;->g:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/g0;->S(I)V

    iget v0, p0, Lcom/google/protobuf/g0;->i:I

    :cond_0
    add-int/lit8 v1, v0, 0x4

    iput v1, p0, Lcom/google/protobuf/g0;->i:I

    iget-object p0, p0, Lcom/google/protobuf/g0;->f:[B

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v1

    return p0
.end method

.method public final O()J
    .locals 9

    iget v0, p0, Lcom/google/protobuf/g0;->i:I

    iget v1, p0, Lcom/google/protobuf/g0;->g:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/g0;->S(I)V

    iget v0, p0, Lcom/google/protobuf/g0;->i:I

    :cond_0
    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/google/protobuf/g0;->i:I

    iget-object p0, p0, Lcom/google/protobuf/g0;->f:[B

    aget-byte v1, p0, v0

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    shl-long v1, v7, v2

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x10

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x4

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x20

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x28

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x6

    aget-byte v3, p0, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    const/16 v7, 0x30

    shl-long/2addr v3, v7

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x7

    aget-byte p0, p0, v0

    int-to-long v3, p0

    and-long/2addr v3, v5

    const/16 p0, 0x38

    shl-long/2addr v3, p0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final P()J
    .locals 11

    iget v0, p0, Lcom/google/protobuf/g0;->i:I

    iget v1, p0, Lcom/google/protobuf/g0;->g:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/protobuf/g0;->f:[B

    aget-byte v0, v3, v0

    if-ltz v0, :cond_1

    iput v2, p0, Lcom/google/protobuf/g0;->i:I

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sub-int/2addr v1, v2

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_5

    :cond_3
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_4
    :goto_1
    move-wide v9, v0

    move v1, v2

    move-wide v2, v9

    goto/16 :goto_5

    :cond_5
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_6

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_6
    int-to-long v4, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    int-to-long v1, v1

    const/16 v6, 0x1c

    shl-long/2addr v1, v6

    xor-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-ltz v6, :cond_7

    const-wide/32 v3, 0xfe03f80

    xor-long v2, v1, v3

    move v1, v0

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v3, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long v0, v1, v7

    cmp-long v2, v0, v4

    if-gez v2, :cond_8

    const-wide v2, -0x7f01fc080L

    :goto_2
    xor-long/2addr v2, v0

    :goto_3
    move v1, v6

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v6, 0x1

    aget-byte v6, v3, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_9

    const-wide v3, 0x3f80fe03f80L

    xor-long/2addr v0, v3

    goto :goto_1

    :cond_9
    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v3, v2

    int-to-long v7, v2

    const/16 v2, 0x31

    shl-long/2addr v7, v2

    xor-long/2addr v0, v7

    cmp-long v2, v0, v4

    if-gez v2, :cond_a

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_2

    :cond_a
    add-int/lit8 v2, v6, 0x1

    aget-byte v6, v3, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-gez v6, :cond_4

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v3, v2

    int-to-long v2, v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_b

    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/g0;->Q()J

    move-result-wide v0

    return-wide v0

    :cond_b
    move-wide v2, v0

    goto :goto_3

    :goto_5
    iput v1, p0, Lcom/google/protobuf/g0;->i:I

    return-wide v2
.end method

.method public final Q()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/google/protobuf/g0;->i:I

    iget v4, p0, Lcom/google/protobuf/g0;->g:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g0;->S(I)V

    :cond_0
    iget v3, p0, Lcom/google/protobuf/g0;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/protobuf/g0;->i:I

    iget-object v4, p0, Lcom/google/protobuf/g0;->f:[B

    aget-byte v3, v4, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final R()V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/g0;->g:I

    iget v1, p0, Lcom/google/protobuf/g0;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/g0;->g:I

    iget v1, p0, Lcom/google/protobuf/g0;->k:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/protobuf/g0;->l:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/g0;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/g0;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/g0;->h:I

    :goto_0
    return-void
.end method

.method public final S(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->U(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/i0;->c:I

    iget v1, p0, Lcom/google/protobuf/g0;->k:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/protobuf/g0;->i:I

    sub-int/2addr v0, p0

    if-le p1, v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method public final T(I)V
    .locals 9

    iget v0, p0, Lcom/google/protobuf/g0;->g:I

    iget v1, p0, Lcom/google/protobuf/g0;->i:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/g0;->i:I

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/g0;->e:Ljava/io/InputStream;

    if-ltz p1, :cond_7

    iget v3, p0, Lcom/google/protobuf/g0;->k:I

    add-int v4, v3, v1

    add-int v5, v4, p1

    iget v6, p0, Lcom/google/protobuf/g0;->l:I

    if-gt v5, v6, :cond_6

    iput v4, p0, Lcom/google/protobuf/g0;->k:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/g0;->g:I

    iput v1, p0, Lcom/google/protobuf/g0;->i:I

    :goto_0
    if-ge v0, p1, :cond_3

    sub-int v1, p1, v0

    int-to-long v3, v1

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_2

    cmp-long v3, v5, v3

    if-gtz v3, :cond_2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    long-to-int v1, v5

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
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

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget v1, p0, Lcom/google/protobuf/g0;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/g0;->k:I

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->R()V

    throw p1

    :cond_3
    :goto_2
    iget v1, p0, Lcom/google/protobuf/g0;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/g0;->k:I

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->R()V

    if-ge v0, p1, :cond_5

    iget v0, p0, Lcom/google/protobuf/g0;->g:I

    iget v1, p0, Lcom/google/protobuf/g0;->i:I

    sub-int v1, v0, v1

    iput v0, p0, Lcom/google/protobuf/g0;->i:I

    :goto_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->S(I)V

    sub-int v0, p1, v1

    iget v2, p0, Lcom/google/protobuf/g0;->g:I

    if-le v0, v2, :cond_4

    add-int/2addr v1, v2

    iput v2, p0, Lcom/google/protobuf/g0;->i:I

    goto :goto_3

    :cond_4
    iput v0, p0, Lcom/google/protobuf/g0;->i:I

    :cond_5
    :goto_4
    return-void

    :cond_6
    sub-int/2addr v6, v3

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Lcom/google/protobuf/g0;->T(I)V

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final U(I)Z
    .locals 6

    iget v0, p0, Lcom/google/protobuf/g0;->i:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/protobuf/g0;->g:I

    if-le v1, v2, :cond_7

    iget v1, p0, Lcom/google/protobuf/g0;->k:I

    iget v3, p0, Lcom/google/protobuf/i0;->c:I

    sub-int v4, v3, v1

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    if-le p1, v4, :cond_0

    return v5

    :cond_0
    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v4, p0, Lcom/google/protobuf/g0;->l:I

    if-le v1, v4, :cond_1

    return v5

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/g0;->f:[B

    if-lez v0, :cond_3

    if-le v2, v0, :cond_2

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v2, p0, Lcom/google/protobuf/g0;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/g0;->k:I

    iget v2, p0, Lcom/google/protobuf/g0;->g:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/g0;->g:I

    iput v5, p0, Lcom/google/protobuf/g0;->i:I

    :cond_3
    iget v0, p0, Lcom/google/protobuf/g0;->g:I

    array-length v2, v1

    sub-int/2addr v2, v0

    iget v4, p0, Lcom/google/protobuf/g0;->k:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/protobuf/g0;->e:Ljava/io/InputStream;

    :try_start_0
    invoke-virtual {v3, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    const/4 v2, -0x1

    if-lt v0, v2, :cond_6

    array-length v1, v1

    if-gt v0, v1, :cond_6

    if-lez v0, :cond_5

    iget v1, p0, Lcom/google/protobuf/g0;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/g0;->g:I

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->R()V

    iget v0, p0, Lcom/google/protobuf/g0;->g:I

    if-lt v0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->U(I)Z

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

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

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

.method public final a(I)V
    .locals 0

    iget p0, p0, Lcom/google/protobuf/g0;->j:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/g0;->l:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v1, p0, Lcom/google/protobuf/g0;->k:I

    iget p0, p0, Lcom/google/protobuf/g0;->i:I

    add-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/g0;->k:I

    iget p0, p0, Lcom/google/protobuf/g0;->i:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/g0;->i:I

    iget v1, p0, Lcom/google/protobuf/g0;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->U(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/g0;->l:I

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->R()V

    return-void
.end method

.method public final l(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/protobuf/g0;->k:I

    iget v1, p0, Lcom/google/protobuf/g0;->i:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/protobuf/g0;->l:I

    if-gt v0, p1, :cond_0

    iput v0, p0, Lcom/google/protobuf/g0;->l:I

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->R()V

    return p1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final m()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->P()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n()Lcom/google/protobuf/ByteString;
    .locals 6

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/g0;->g:I

    iget v2, p0, Lcom/google/protobuf/g0;->i:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/google/protobuf/g0;->f:[B

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    invoke-static {v3, v2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/g0;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/g0;->i:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->L(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/google/protobuf/g0;->i:I

    iget v2, p0, Lcom/google/protobuf/g0;->g:I

    sub-int v4, v2, v1

    iget v5, p0, Lcom/google/protobuf/g0;->k:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/google/protobuf/g0;->k:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/protobuf/g0;->i:I

    iput v2, p0, Lcom/google/protobuf/g0;->g:I

    sub-int v5, v0, v4

    invoke-virtual {p0, v5}, Lcom/google/protobuf/g0;->M(I)Ljava/util/ArrayList;

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
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final o()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->O()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final p()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result p0

    return p0
.end method

.method public final q()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->N()I

    move-result p0

    return p0
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->N()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final t(ILcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->b()V

    iget v0, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/i0;->a:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/q8;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->a(I)V

    iget p1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/i0;->a:I

    return-void
.end method

.method public final u()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result p0

    return p0
.end method

.method public final v()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->P()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->b()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->l(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/i0;->a:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/r8;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g0;->a(I)V

    iget p2, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/protobuf/i0;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->e()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->k(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->b()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->l(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/i0;->a:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/q8;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->a(I)V

    iget p1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/i0;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/g0;->e()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g0;->k(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final y()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/g0;->i:I

    iget v1, p0, Lcom/google/protobuf/g0;->g:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/protobuf/g0;->f:[B

    aget-byte v0, v3, v0

    if-ltz v0, :cond_1

    iput v2, p0, Lcom/google/protobuf/g0;->i:I

    return v0

    :cond_1
    sub-int/2addr v1, v2

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_6

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_4

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_7

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/g0;->Q()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_7
    :goto_1
    iput v1, p0, Lcom/google/protobuf/g0;->i:I

    return v0
.end method
