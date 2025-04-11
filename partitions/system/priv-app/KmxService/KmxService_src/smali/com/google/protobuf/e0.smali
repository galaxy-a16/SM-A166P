.class public final Lcom/google/protobuf/e0;
.super Lcom/google/protobuf/i0;
.source "SourceFile"


# instance fields
.field public final e:[B

.field public final f:Z

.field public g:I

.field public h:I

.field public i:I

.field public final j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/i0;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/e0;->l:I

    iput-object p1, p0, Lcom/google/protobuf/e0;->e:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/protobuf/e0;->g:I

    iput p2, p0, Lcom/google/protobuf/e0;->i:I

    iput p2, p0, Lcom/google/protobuf/e0;->j:I

    iput-boolean p4, p0, Lcom/google/protobuf/e0;->f:Z

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->K()I

    move-result p0

    return p0
.end method

.method public final B()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/i0;->c(I)I

    move-result p0

    return p0
.end method

.method public final D()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->M()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/i0;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final E()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/protobuf/e0;->g:I

    iget v2, p0, Lcom/google/protobuf/e0;->i:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/protobuf/e0;->e:[B

    sget-object v4, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/protobuf/e0;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/e0;->i:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final F()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/protobuf/e0;->g:I

    iget v2, p0, Lcom/google/protobuf/e0;->i:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/google/protobuf/yb;->a:Lcom/google/protobuf/xb;

    iget-object v3, p0, Lcom/google/protobuf/e0;->e:[B

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/xb;->g0(II[B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/e0;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/e0;->i:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-gtz v0, :cond_2

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final G()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/e0;->k:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/e0;->k:I

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

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result p0

    return p0
.end method

.method public final I()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->M()J

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

    invoke-virtual {p0, v3}, Lcom/google/protobuf/e0;->O(I)V

    return v2

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/e0;->G()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e0;->J(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/e0;->a(I)V

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result p1

    goto :goto_0

    :cond_5
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/e0;->O(I)V

    return v2

    :cond_6
    iget p1, p0, Lcom/google/protobuf/e0;->g:I

    iget v0, p0, Lcom/google/protobuf/e0;->i:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/protobuf/e0;->e:[B

    const/16 v3, 0xa

    if-lt p1, v3, :cond_9

    :goto_1
    if-ge v1, v3, :cond_8

    iget p1, p0, Lcom/google/protobuf/e0;->i:I

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lcom/google/protobuf/e0;->i:I

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

    iget p1, p0, Lcom/google/protobuf/e0;->i:I

    iget v4, p0, Lcom/google/protobuf/e0;->g:I

    if-eq p1, v4, :cond_b

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lcom/google/protobuf/e0;->i:I

    aget-byte p1, v0, p1

    if-ltz p1, :cond_a

    :goto_3
    return v2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final K()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/e0;->i:I

    iget v1, p0, Lcom/google/protobuf/e0;->g:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    iput v1, p0, Lcom/google/protobuf/e0;->i:I

    iget-object p0, p0, Lcom/google/protobuf/e0;->e:[B

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

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final L()J
    .locals 9

    iget v0, p0, Lcom/google/protobuf/e0;->i:I

    iget v1, p0, Lcom/google/protobuf/e0;->g:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/google/protobuf/e0;->i:I

    iget-object p0, p0, Lcom/google/protobuf/e0;->e:[B

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

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final M()J
    .locals 11

    iget v0, p0, Lcom/google/protobuf/e0;->i:I

    iget v1, p0, Lcom/google/protobuf/e0;->g:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/protobuf/e0;->e:[B

    aget-byte v0, v3, v0

    if-ltz v0, :cond_1

    iput v2, p0, Lcom/google/protobuf/e0;->i:I

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
    invoke-virtual {p0}, Lcom/google/protobuf/e0;->N()J

    move-result-wide v0

    return-wide v0

    :cond_b
    move-wide v2, v0

    goto :goto_3

    :goto_5
    iput v1, p0, Lcom/google/protobuf/e0;->i:I

    return-wide v2
.end method

.method public final N()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/google/protobuf/e0;->i:I

    iget v4, p0, Lcom/google/protobuf/e0;->g:I

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/protobuf/e0;->i:I

    iget-object v4, p0, Lcom/google/protobuf/e0;->e:[B

    aget-byte v3, v4, v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final O(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/e0;->g:I

    iget v1, p0, Lcom/google/protobuf/e0;->i:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/e0;->i:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final a(I)V
    .locals 0

    iget p0, p0, Lcom/google/protobuf/e0;->k:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/e0;->l:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v1, p0, Lcom/google/protobuf/e0;->i:I

    iget p0, p0, Lcom/google/protobuf/e0;->j:I

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/e0;->i:I

    iget p0, p0, Lcom/google/protobuf/e0;->j:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/e0;->i:I

    iget p0, p0, Lcom/google/protobuf/e0;->g:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(I)V
    .locals 2

    iput p1, p0, Lcom/google/protobuf/e0;->l:I

    iget v0, p0, Lcom/google/protobuf/e0;->g:I

    iget v1, p0, Lcom/google/protobuf/e0;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/e0;->g:I

    iget v1, p0, Lcom/google/protobuf/e0;->j:I

    sub-int v1, v0, v1

    if-le v1, p1, :cond_0

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/e0;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/e0;->g:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/e0;->h:I

    :goto_0
    return-void
.end method

.method public final l(I)I
    .locals 4

    if-ltz p1, :cond_3

    iget v0, p0, Lcom/google/protobuf/e0;->i:I

    iget v1, p0, Lcom/google/protobuf/e0;->j:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    if-ltz v0, :cond_2

    iget p1, p0, Lcom/google/protobuf/e0;->l:I

    if-gt v0, p1, :cond_1

    iput v0, p0, Lcom/google/protobuf/e0;->l:I

    iget v2, p0, Lcom/google/protobuf/e0;->g:I

    iget v3, p0, Lcom/google/protobuf/e0;->h:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/e0;->g:I

    sub-int v1, v2, v1

    if-le v1, v0, :cond_0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/e0;->h:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/e0;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/e0;->h:I

    :goto_0
    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final m()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->M()J

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
    .locals 4

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/e0;->e:[B

    if-lez v0, :cond_0

    iget v2, p0, Lcom/google/protobuf/e0;->g:I

    iget v3, p0, Lcom/google/protobuf/e0;->i:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/google/protobuf/e0;->f:Z

    invoke-static {v1, v3, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/e0;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/e0;->i:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object p0

    :cond_1
    if-lez v0, :cond_2

    iget v2, p0, Lcom/google/protobuf/e0;->g:I

    iget v3, p0, Lcom/google/protobuf/e0;->i:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/e0;->i:I

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    sget-object p0, Lcom/google/protobuf/g7;->c:[B

    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final o()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->L()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final p()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result p0

    return p0
.end method

.method public final q()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->K()I

    move-result p0

    return p0
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->K()I

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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/e0;->a(I)V

    iget p1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/i0;->a:I

    return-void
.end method

.method public final u()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result p0

    return p0
.end method

.method public final v()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->M()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->b()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e0;->l(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/i0;->a:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/r8;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/e0;->a(I)V

    iget p2, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/protobuf/i0;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->e()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e0;->k(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->b()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e0;->l(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/i0;->a:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/q8;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/e0;->a(I)V

    iget p1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/i0;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/e0;->e()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e0;->k(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final y()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/e0;->i:I

    iget v1, p0, Lcom/google/protobuf/e0;->g:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/protobuf/e0;->e:[B

    aget-byte v0, v3, v0

    if-ltz v0, :cond_1

    iput v2, p0, Lcom/google/protobuf/e0;->i:I

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
    invoke-virtual {p0}, Lcom/google/protobuf/e0;->N()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_7
    :goto_1
    iput v1, p0, Lcom/google/protobuf/e0;->i:I

    return v0
.end method
