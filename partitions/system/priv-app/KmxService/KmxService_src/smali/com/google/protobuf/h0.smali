.class public final Lcom/google/protobuf/h0;
.super Lcom/google/protobuf/i0;
.source "SourceFile"


# instance fields
.field public final e:Ljava/nio/ByteBuffer;

.field public final f:J

.field public g:J

.field public h:J

.field public final i:J

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4

    invoke-direct {p0}, Lcom/google/protobuf/i0;-><init>()V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/protobuf/h0;->l:I

    iput-object p1, p0, Lcom/google/protobuf/h0;->e:Ljava/nio/ByteBuffer;

    sget-object p2, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    sget-wide v0, Lcom/google/protobuf/wb;->g:J

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/protobuf/vb;->k(Ljava/lang/Object;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/h0;->f:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/h0;->g:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/protobuf/h0;->h:J

    iput-wide v0, p0, Lcom/google/protobuf/h0;->i:J

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->K()I

    move-result p0

    return p0
.end method

.method public final B()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/i0;->c(I)I

    move-result p0

    return p0
.end method

.method public final D()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->M()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/i0;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final E()Ljava/lang/String;
    .locals 13

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/google/protobuf/h0;->g:J

    iget-wide v4, p0, Lcom/google/protobuf/h0;->h:J

    sub-long/2addr v1, v4

    long-to-int v1, v1

    if-gt v0, v1, :cond_0

    new-array v1, v0, [B

    const-wide/16 v7, 0x0

    int-to-long v11, v0

    sget-object v3, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    move-object v6, v1

    move-wide v9, v11

    invoke-virtual/range {v3 .. v10}, Lcom/google/protobuf/vb;->c(J[BJJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v1, p0, Lcom/google/protobuf/h0;->h:J

    add-long/2addr v1, v11

    iput-wide v1, p0, Lcom/google/protobuf/h0;->h:J

    return-object v0

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
    .locals 6

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/google/protobuf/h0;->g:J

    iget-wide v3, p0, Lcom/google/protobuf/h0;->h:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    if-gt v0, v1, :cond_0

    iget-wide v1, p0, Lcom/google/protobuf/h0;->f:J

    sub-long/2addr v3, v1

    long-to-int v1, v3

    iget-object v2, p0, Lcom/google/protobuf/h0;->e:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/yb;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/protobuf/h0;->h:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/h0;->h:J

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

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/h0;->k:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/h0;->k:I

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

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result p0

    return p0
.end method

.method public final I()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->M()J

    move-result-wide v0

    return-wide v0
.end method

.method public final J(I)Z
    .locals 9

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

    invoke-virtual {p0, v3}, Lcom/google/protobuf/h0;->P(I)V

    return v2

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/h0;->G()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/h0;->J(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/h0;->a(I)V

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result p1

    goto :goto_0

    :cond_5
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/h0;->P(I)V

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/google/protobuf/h0;->g:J

    iget-wide v5, p0, Lcom/google/protobuf/h0;->h:J

    sub-long/2addr v3, v5

    long-to-int p1, v3

    const-wide/16 v3, 0x1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    :goto_1
    if-ge v1, v0, :cond_8

    iget-wide v5, p0, Lcom/google/protobuf/h0;->h:J

    add-long v7, v5, v3

    iput-wide v7, p0, Lcom/google/protobuf/h0;->h:J

    invoke-static {v5, v6}, Lcom/google/protobuf/wb;->g(J)B

    move-result p1

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
    if-ge v1, v0, :cond_c

    iget-wide v5, p0, Lcom/google/protobuf/h0;->h:J

    iget-wide v7, p0, Lcom/google/protobuf/h0;->g:J

    cmp-long p1, v5, v7

    if-eqz p1, :cond_b

    add-long v7, v5, v3

    iput-wide v7, p0, Lcom/google/protobuf/h0;->h:J

    invoke-static {v5, v6}, Lcom/google/protobuf/wb;->g(J)B

    move-result p1

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
    .locals 6

    iget-wide v0, p0, Lcom/google/protobuf/h0;->h:J

    iget-wide v2, p0, Lcom/google/protobuf/h0;->g:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/protobuf/h0;->h:J

    invoke-static {v0, v1}, Lcom/google/protobuf/wb;->g(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/protobuf/wb;->g(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/protobuf/wb;->g(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p0, v2

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/protobuf/wb;->g(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p0, v0

    return p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final L()J
    .locals 8

    iget-wide v0, p0, Lcom/google/protobuf/h0;->h:J

    iget-wide v2, p0, Lcom/google/protobuf/h0;->g:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/protobuf/h0;->h:J

    invoke-static {v0, v1}, Lcom/google/protobuf/wb;->g(J)B

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x8

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x10

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x18

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x20

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x28

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result p0

    int-to-long v6, p0

    and-long/2addr v6, v4

    const/16 p0, 0x30

    shl-long/2addr v6, p0

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/google/protobuf/wb;->g(J)B

    move-result p0

    int-to-long v0, p0

    and-long/2addr v0, v4

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final M()J
    .locals 11

    iget-wide v0, p0, Lcom/google/protobuf/h0;->h:J

    iget-wide v2, p0, Lcom/google/protobuf/h0;->g:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/google/protobuf/wb;->g(J)B

    move-result v0

    if-ltz v0, :cond_1

    iput-wide v4, p0, Lcom/google/protobuf/h0;->h:J

    int-to-long v0, v0

    return-wide v0

    :cond_1
    iget-wide v6, p0, Lcom/google/protobuf/h0;->g:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v0, v0

    goto/16 :goto_5

    :cond_3
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_4
    :goto_1
    move-wide v6, v4

    goto/16 :goto_5

    :cond_5
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_6

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_6
    int-to-long v0, v0

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_7

    const-wide/32 v2, 0xfe03f80

    :goto_2
    xor-long/2addr v0, v2

    goto :goto_1

    :cond_7
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/wb;->g(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    const-wide v2, -0x7f01fc080L

    :goto_3
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_5

    :cond_8
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/google/protobuf/wb;->g(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_9

    const-wide v2, 0x3f80fe03f80L

    goto :goto_2

    :cond_9
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/wb;->g(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_a

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_3

    :cond_a
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/google/protobuf/wb;->g(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_4

    add-long/2addr v2, v4

    invoke-static {v4, v5}, Lcom/google/protobuf/wb;->g(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/h0;->N()J

    move-result-wide v0

    return-wide v0

    :cond_b
    move-wide v6, v2

    :goto_5
    iput-wide v6, p0, Lcom/google/protobuf/h0;->h:J

    return-wide v0
.end method

.method public final N()J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget-wide v3, p0, Lcom/google/protobuf/h0;->h:J

    iget-wide v5, p0, Lcom/google/protobuf/h0;->g:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/protobuf/h0;->h:J

    invoke-static {v3, v4}, Lcom/google/protobuf/wb;->g(J)B

    move-result v3

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

.method public final O()V
    .locals 4

    iget-wide v0, p0, Lcom/google/protobuf/h0;->g:J

    iget v2, p0, Lcom/google/protobuf/h0;->j:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/h0;->g:J

    iget-wide v2, p0, Lcom/google/protobuf/h0;->i:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iget v3, p0, Lcom/google/protobuf/h0;->l:I

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/h0;->j:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/h0;->g:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/h0;->j:I

    :goto_0
    return-void
.end method

.method public final P(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget-wide v0, p0, Lcom/google/protobuf/h0;->g:J

    iget-wide v2, p0, Lcom/google/protobuf/h0;->h:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-gt p1, v0, :cond_0

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/h0;->h:J

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

    iget p0, p0, Lcom/google/protobuf/h0;->k:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/h0;->l:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/h0;->f()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final f()I
    .locals 4

    iget-wide v0, p0, Lcom/google/protobuf/h0;->h:J

    iget-wide v2, p0, Lcom/google/protobuf/h0;->i:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public final g()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/protobuf/h0;->h:J

    iget-wide v2, p0, Lcom/google/protobuf/h0;->g:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/h0;->l:I

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->O()V

    return-void
.end method

.method public final l(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->f()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/protobuf/h0;->l:I

    if-gt v0, p1, :cond_0

    iput v0, p0, Lcom/google/protobuf/h0;->l:I

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->O()V

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

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->M()J

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
    .locals 13

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/google/protobuf/h0;->g:J

    iget-wide v4, p0, Lcom/google/protobuf/h0;->h:J

    sub-long/2addr v1, v4

    long-to-int v1, v1

    if-gt v0, v1, :cond_0

    new-array v1, v0, [B

    const-wide/16 v7, 0x0

    int-to-long v11, v0

    sget-object v3, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    move-object v6, v1

    move-wide v9, v11

    invoke-virtual/range {v3 .. v10}, Lcom/google/protobuf/vb;->c(J[BJJ)V

    iget-wide v2, p0, Lcom/google/protobuf/h0;->h:J

    add-long/2addr v2, v11

    iput-wide v2, p0, Lcom/google/protobuf/h0;->h:J

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

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

.method public final o()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->L()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final p()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result p0

    return p0
.end method

.method public final q()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->K()I

    move-result p0

    return p0
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->K()I

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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/h0;->a(I)V

    iget p1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/i0;->a:I

    return-void
.end method

.method public final u()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result p0

    return p0
.end method

.method public final v()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->M()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->b()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/h0;->l(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/i0;->a:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/r8;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/h0;->a(I)V

    iget p2, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/protobuf/i0;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->e()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/h0;->k(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final x(Lcom/google/protobuf/q8;Lcom/google/protobuf/t4;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->b()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/h0;->l(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/i0;->a:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/q8;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/h0;->a(I)V

    iget p1, p0, Lcom/google/protobuf/i0;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/i0;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/h0;->e()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/h0;->k(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final y()I
    .locals 10

    iget-wide v0, p0, Lcom/google/protobuf/h0;->h:J

    iget-wide v2, p0, Lcom/google/protobuf/h0;->g:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/google/protobuf/wb;->g(J)B

    move-result v0

    if-ltz v0, :cond_1

    iput-wide v4, p0, Lcom/google/protobuf/h0;->h:J

    return v0

    :cond_1
    iget-wide v6, p0, Lcom/google/protobuf/h0;->g:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    goto :goto_1

    :cond_3
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    :cond_4
    move-wide v6, v4

    goto :goto_1

    :cond_5
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_6

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_6
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_4

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    if-gez v1, :cond_7

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    if-gez v1, :cond_4

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    if-gez v1, :cond_7

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    if-gez v1, :cond_4

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    if-gez v1, :cond_7

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/h0;->N()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_7
    :goto_1
    iput-wide v6, p0, Lcom/google/protobuf/h0;->h:J

    return v0
.end method
