.class public final Lcom/google/crypto/tink/shaded/protobuf/l;
.super Lcom/google/crypto/tink/shaded/protobuf/m;
.source "SourceFile"


# instance fields
.field public final b:Ljava/nio/ByteBuffer;

.field public final c:J

.field public final d:J

.field public e:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/m;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/d0;->d:Lcom/google/crypto/tink/shaded/protobuf/c0;

    sget-wide v1, Lcom/google/crypto/tink/shaded/protobuf/d0;->h:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/c0;->h(Ljava/lang/Object;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->c:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->d:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 10

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->e()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    iget-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->d:J

    sub-long/2addr v4, v2

    long-to-int v1, v4

    if-gt v0, v1, :cond_0

    new-array v7, v0, [B

    int-to-long v8, v0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/d0;->d:Lcom/google/crypto/tink/shaded/protobuf/c0;

    move-object v4, v7

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/c0;->c(J[BJ)V

    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->wrap([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object p0

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final c()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->e()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    iget-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->d:J

    sub-long/2addr v4, v2

    long-to-int v1, v4

    if-gt v0, v1, :cond_0

    new-array v7, v0, [B

    int-to-long v8, v0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/d0;->d:Lcom/google/crypto/tink/shaded/protobuf/c0;

    move-object v4, v7

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/c0;->c(J[BJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v7, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/l;->e()I

    move-result v1

    if-lez v1, :cond_13

    iget-wide v2, v0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    iget-wide v4, v0, Lcom/google/crypto/tink/shaded/protobuf/l;->d:J

    sub-long/2addr v4, v2

    long-to-int v4, v4

    if-gt v1, v4, :cond_13

    iget-wide v4, v0, Lcom/google/crypto/tink/shaded/protobuf/l;->c:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/f0;->a:Lcom/google/crypto/tink/shaded/protobuf/e0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    add-int/2addr v5, v2

    invoke-virtual {v3, v5, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/e0;->D(II[B)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-eqz v5, :cond_12

    iget v3, v3, Lcom/google/crypto/tink/shaded/protobuf/e0;->q:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v4, v2, v1}, Lj3/f;->c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :goto_0
    or-int v3, v2, v1

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v5, v1

    or-int/2addr v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v3, :cond_11

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/d0;->d:Lcom/google/crypto/tink/shaded/protobuf/c0;

    sget-wide v7, Lcom/google/crypto/tink/shaded/protobuf/d0;->h:J

    invoke-virtual {v3, v4, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/c0;->h(Ljava/lang/Object;J)J

    move-result-wide v3

    int-to-long v7, v2

    add-long/2addr v3, v7

    int-to-long v7, v1

    add-long/2addr v7, v3

    new-array v2, v1, [C

    move v9, v5

    :goto_1
    cmp-long v10, v3, v7

    const-wide/16 v15, 0x1

    if-gez v10, :cond_3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v10

    if-ltz v10, :cond_1

    move v11, v6

    goto :goto_2

    :cond_1
    move v11, v5

    :goto_2
    if-nez v11, :cond_2

    goto :goto_3

    :cond_2
    add-long/2addr v3, v15

    add-int/lit8 v11, v9, 0x1

    int-to-char v10, v10

    aput-char v10, v2, v9

    move v9, v11

    goto :goto_1

    :cond_3
    :goto_3
    move v14, v9

    :cond_4
    :goto_4
    cmp-long v9, v3, v7

    if-gez v9, :cond_10

    add-long v9, v3, v15

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v3

    if-ltz v3, :cond_5

    move v4, v6

    goto :goto_5

    :cond_5
    move v4, v5

    :goto_5
    if-eqz v4, :cond_8

    add-int/lit8 v4, v14, 0x1

    int-to-char v3, v3

    aput-char v3, v2, v14

    move v14, v4

    move-wide v3, v9

    :goto_6
    cmp-long v9, v3, v7

    if-gez v9, :cond_4

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v9

    if-ltz v9, :cond_6

    move v10, v6

    goto :goto_7

    :cond_6
    move v10, v5

    :goto_7
    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    add-long/2addr v3, v15

    add-int/lit8 v10, v14, 0x1

    int-to-char v9, v9

    aput-char v9, v2, v14

    move v14, v10

    goto :goto_6

    :cond_8
    const/16 v4, -0x20

    if-ge v3, v4, :cond_9

    move v4, v6

    goto :goto_8

    :cond_9
    move v4, v5

    :goto_8
    if-eqz v4, :cond_b

    cmp-long v4, v9, v7

    if-gez v4, :cond_a

    add-long v11, v9, v15

    invoke-static {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v4

    add-int/lit8 v9, v14, 0x1

    invoke-static {v3, v4, v2, v14}, Li4/g;->d(BB[CI)V

    move v14, v9

    move-wide v3, v11

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_b
    const/16 v4, -0x10

    if-ge v3, v4, :cond_c

    move v4, v6

    goto :goto_9

    :cond_c
    move v4, v5

    :goto_9
    if-eqz v4, :cond_e

    sub-long v11, v7, v15

    cmp-long v4, v9, v11

    if-gez v4, :cond_d

    add-long v11, v9, v15

    invoke-static {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v4

    add-long v9, v11, v15

    invoke-static {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v11

    add-int/lit8 v12, v14, 0x1

    invoke-static {v3, v4, v11, v2, v14}, Li4/g;->e(BBB[CI)V

    move-wide v3, v9

    move v14, v12

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_e
    const-wide/16 v11, 0x2

    sub-long v11, v7, v11

    cmp-long v4, v9, v11

    if-gez v4, :cond_f

    add-long v11, v9, v15

    invoke-static {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v10

    add-long v17, v11, v15

    invoke-static {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v11

    add-long v19, v17, v15

    invoke-static/range {v17 .. v18}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v12

    add-int/lit8 v4, v14, 0x1

    move v9, v3

    move-object v13, v2

    invoke-static/range {v9 .. v14}, Li4/g;->c(BBBB[CI)V

    add-int/lit8 v9, v4, 0x1

    move-wide/from16 v3, v19

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_10
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v5, v14}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v3

    goto :goto_a

    :cond_11
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {v4, v2, v1}, Lj3/f;->c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v2

    :goto_a
    iget-wide v3, v0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    return-object v2

    :cond_13
    if-nez v1, :cond_14

    const-string v0, ""

    return-object v0

    :cond_14
    if-gtz v1, :cond_15

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_15
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 13

    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->d:J

    cmp-long v4, v2, v0

    const-wide/16 v5, 0x1

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    add-long v7, v0, v5

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v0

    if-ltz v0, :cond_1

    iput-wide v7, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    return v0

    :cond_1
    sub-long v9, v2, v7

    const-wide/16 v11, 0x9

    cmp-long v1, v9, v11

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    add-long v9, v7, v5

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    goto/16 :goto_2

    :cond_3
    add-long v7, v9, v5

    invoke-static {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    :cond_4
    move-wide v9, v7

    goto/16 :goto_2

    :cond_5
    add-long v9, v7, v5

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_6

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_2

    :cond_6
    add-long v7, v9, v5

    invoke-static {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_4

    add-long v9, v7, v5

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    if-gez v1, :cond_a

    add-long v7, v9, v5

    invoke-static {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    if-gez v1, :cond_4

    add-long v9, v7, v5

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    if-gez v1, :cond_a

    add-long v7, v9, v5

    invoke-static {v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    if-gez v1, :cond_4

    add-long v9, v7, v5

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v1

    if-gez v1, :cond_a

    :goto_0
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    const/16 v7, 0x40

    if-ge v4, v7, :cond_9

    iget-wide v7, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    cmp-long v9, v7, v2

    if-eqz v9, :cond_8

    add-long v9, v7, v5

    iput-wide v9, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    invoke-static {v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/d0;->e(J)B

    move-result v7

    and-int/lit8 v8, v7, 0x7f

    int-to-long v8, v8

    shl-long/2addr v8, v4

    or-long/2addr v0, v8

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_7

    long-to-int p0, v0

    return p0

    :cond_7
    add-int/lit8 v4, v4, 0x7

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_a
    :goto_2
    iput-wide v9, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->e:J

    return v0
.end method
