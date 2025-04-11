.class public final Lcom/google/crypto/tink/shaded/protobuf/e0;
.super Lj3/f;
.source "SourceFile"


# instance fields
.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/e0;->q:I

    invoke-direct {p0}, Lj3/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(II[B)Ljava/lang/String;
    .locals 16

    move/from16 v0, p2

    move-object/from16 v1, p3

    const/16 v2, -0x10

    const/16 v3, -0x20

    move-object/from16 v4, p0

    iget v4, v4, Lcom/google/crypto/tink/shaded/protobuf/e0;->q:I

    const-string v5, "buffer length=%d, index=%d, size=%d"

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    or-int v4, p1, v0

    array-length v10, v1

    sub-int v10, v10, p1

    sub-int/2addr v10, v0

    or-int/2addr v4, v10

    if-ltz v4, :cond_10

    add-int v4, p1, v0

    new-array v0, v0, [C

    move/from16 v5, p1

    move v6, v8

    :goto_0
    if-ge v5, v4, :cond_2

    aget-byte v7, v1, v5

    if-ltz v7, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v8

    :goto_1
    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v6, 0x1

    int-to-char v7, v7

    aput-char v7, v0, v6

    move v6, v10

    goto :goto_0

    :cond_2
    :goto_2
    move v15, v6

    :cond_3
    :goto_3
    if-ge v5, v4, :cond_f

    add-int/lit8 v6, v5, 0x1

    aget-byte v10, v1, v5

    if-ltz v10, :cond_4

    move v5, v9

    goto :goto_4

    :cond_4
    move v5, v8

    :goto_4
    if-eqz v5, :cond_7

    add-int/lit8 v5, v15, 0x1

    int-to-char v7, v10

    aput-char v7, v0, v15

    move v15, v5

    move v5, v6

    :goto_5
    if-ge v5, v4, :cond_3

    aget-byte v6, v1, v5

    if-ltz v6, :cond_5

    move v7, v9

    goto :goto_6

    :cond_5
    move v7, v8

    :goto_6
    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v15, 0x1

    int-to-char v6, v6

    aput-char v6, v0, v15

    move v15, v7

    goto :goto_5

    :cond_7
    if-ge v10, v3, :cond_8

    move v5, v9

    goto :goto_7

    :cond_8
    move v5, v8

    :goto_7
    if-eqz v5, :cond_a

    if-ge v6, v4, :cond_9

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, v1, v6

    add-int/lit8 v7, v15, 0x1

    invoke-static {v10, v6, v0, v15}, Li4/g;->d(BB[CI)V

    move v15, v7

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_a
    if-ge v10, v2, :cond_b

    move v5, v9

    goto :goto_8

    :cond_b
    move v5, v8

    :goto_8
    if-eqz v5, :cond_d

    add-int/lit8 v5, v4, -0x1

    if-ge v6, v5, :cond_c

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, v1, v6

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v1, v5

    add-int/lit8 v11, v15, 0x1

    invoke-static {v10, v6, v5, v0, v15}, Li4/g;->e(BBB[CI)V

    move v5, v7

    move v15, v11

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_d
    add-int/lit8 v5, v4, -0x2

    if-ge v6, v5, :cond_e

    add-int/lit8 v5, v6, 0x1

    aget-byte v11, v1, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v12, v1, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v13, v1, v6

    add-int/lit8 v6, v15, 0x1

    move-object v14, v0

    invoke-static/range {v10 .. v15}, Li4/g;->c(BBBB[CI)V

    add-int/lit8 v15, v6, 0x1

    goto :goto_3

    :cond_e
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v8, v15}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_10
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v3, v7, [Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_9
    or-int v4, p1, v0

    array-length v10, v1

    sub-int v10, v10, p1

    sub-int/2addr v10, v0

    or-int/2addr v4, v10

    if-ltz v4, :cond_21

    add-int v4, p1, v0

    new-array v0, v0, [C

    move/from16 v5, p1

    move v6, v8

    :goto_a
    if-ge v5, v4, :cond_13

    int-to-long v10, v5

    invoke-static {v10, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v7

    if-ltz v7, :cond_11

    move v10, v9

    goto :goto_b

    :cond_11
    move v10, v8

    :goto_b
    if-nez v10, :cond_12

    goto :goto_c

    :cond_12
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v6, 0x1

    int-to-char v7, v7

    aput-char v7, v0, v6

    move v6, v10

    goto :goto_a

    :cond_13
    :goto_c
    move v15, v6

    :cond_14
    :goto_d
    if-ge v5, v4, :cond_20

    add-int/lit8 v6, v5, 0x1

    int-to-long v10, v5

    invoke-static {v10, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v10

    if-ltz v10, :cond_15

    move v5, v9

    goto :goto_e

    :cond_15
    move v5, v8

    :goto_e
    if-eqz v5, :cond_18

    add-int/lit8 v5, v15, 0x1

    int-to-char v7, v10

    aput-char v7, v0, v15

    move v15, v5

    move v5, v6

    :goto_f
    if-ge v5, v4, :cond_14

    int-to-long v6, v5

    invoke-static {v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v6

    if-ltz v6, :cond_16

    move v7, v9

    goto :goto_10

    :cond_16
    move v7, v8

    :goto_10
    if-nez v7, :cond_17

    goto :goto_d

    :cond_17
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v15, 0x1

    int-to-char v6, v6

    aput-char v6, v0, v15

    move v15, v7

    goto :goto_f

    :cond_18
    if-ge v10, v3, :cond_19

    move v5, v9

    goto :goto_11

    :cond_19
    move v5, v8

    :goto_11
    if-eqz v5, :cond_1b

    if-ge v6, v4, :cond_1a

    add-int/lit8 v5, v6, 0x1

    int-to-long v6, v6

    invoke-static {v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v6

    add-int/lit8 v7, v15, 0x1

    invoke-static {v10, v6, v0, v15}, Li4/g;->d(BB[CI)V

    move v15, v7

    goto :goto_d

    :cond_1a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1b
    if-ge v10, v2, :cond_1c

    move v5, v9

    goto :goto_12

    :cond_1c
    move v5, v8

    :goto_12
    if-eqz v5, :cond_1e

    add-int/lit8 v5, v4, -0x1

    if-ge v6, v5, :cond_1d

    add-int/lit8 v5, v6, 0x1

    int-to-long v6, v6

    invoke-static {v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v6

    add-int/lit8 v7, v5, 0x1

    int-to-long v11, v5

    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v5

    add-int/lit8 v11, v15, 0x1

    invoke-static {v10, v6, v5, v0, v15}, Li4/g;->e(BBB[CI)V

    move v5, v7

    move v15, v11

    goto :goto_d

    :cond_1d
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1e
    add-int/lit8 v5, v4, -0x2

    if-ge v6, v5, :cond_1f

    add-int/lit8 v5, v6, 0x1

    int-to-long v6, v6

    invoke-static {v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v11

    add-int/lit8 v6, v5, 0x1

    int-to-long v12, v5

    invoke-static {v12, v13, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v12

    add-int/lit8 v5, v6, 0x1

    int-to-long v6, v6

    invoke-static {v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v13

    add-int/lit8 v6, v15, 0x1

    move-object v14, v0

    invoke-static/range {v10 .. v15}, Li4/g;->c(BBBB[CI)V

    add-int/lit8 v15, v6, 0x1

    goto/16 :goto_d

    :cond_1f
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_20
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v8, v15}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_21
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v3, v7, [Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(III[B)I
    .locals 24

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/16 v4, -0xc

    const/4 v5, 0x2

    const/4 v8, 0x1

    move-object/from16 v9, p0

    iget v9, v9, Lcom/google/crypto/tink/shaded/protobuf/e0;->q:I

    const/16 v10, -0x41

    const/16 v11, -0x20

    const/16 v12, -0x60

    const/16 v13, -0x10

    const/16 v14, -0x3e

    const/16 v15, -0x13

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    if-eqz v0, :cond_c

    if-lt v1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    int-to-byte v9, v0

    if-ge v9, v11, :cond_2

    if-lt v9, v14, :cond_1b

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    if-le v1, v10, :cond_1

    goto/16 :goto_7

    :cond_1
    move v1, v0

    goto/16 :goto_1

    :cond_2
    if-ge v9, v13, :cond_7

    shr-int/lit8 v0, v0, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    if-lt v0, v2, :cond_4

    invoke-static {v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    goto/16 :goto_6

    :cond_3
    move/from16 v22, v1

    move v1, v0

    move/from16 v0, v22

    :cond_4
    if-gt v1, v10, :cond_1b

    if-ne v9, v11, :cond_5

    if-lt v1, v12, :cond_1b

    :cond_5
    if-ne v9, v15, :cond_6

    if-ge v1, v12, :cond_1b

    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    if-le v0, v10, :cond_c

    goto/16 :goto_7

    :cond_7
    shr-int/lit8 v7, v0, 0x8

    not-int v7, v7

    int-to-byte v7, v7

    if-nez v7, :cond_9

    add-int/lit8 v0, v1, 0x1

    aget-byte v7, v3, v1

    if-lt v0, v2, :cond_8

    invoke-static {v9, v7}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    goto/16 :goto_6

    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    :cond_9
    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    move/from16 v22, v1

    move v1, v0

    move/from16 v0, v22

    :goto_0
    if-nez v1, :cond_b

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    if-lt v1, v2, :cond_a

    invoke-static {v9, v7, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(III)I

    move-result v0

    goto/16 :goto_6

    :cond_a
    move/from16 v22, v1

    move v1, v0

    move/from16 v0, v22

    :cond_b
    if-gt v7, v10, :cond_1b

    shl-int/lit8 v9, v9, 0x1c

    add-int/lit8 v7, v7, 0x70

    add-int/2addr v7, v9

    shr-int/lit8 v7, v7, 0x1e

    if-nez v7, :cond_1b

    if-gt v1, v10, :cond_1b

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    if-le v0, v10, :cond_c

    goto/16 :goto_7

    :cond_c
    :goto_1
    if-ge v1, v2, :cond_d

    aget-byte v0, v3, v1

    if-ltz v0, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    if-lt v1, v2, :cond_e

    goto :goto_3

    :cond_e
    :goto_2
    if-lt v1, v2, :cond_f

    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_f
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_1c

    if-ge v1, v11, :cond_11

    if-lt v0, v2, :cond_10

    move v6, v1

    goto/16 :goto_8

    :cond_10
    if-lt v1, v14, :cond_1b

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    if-le v0, v10, :cond_e

    goto/16 :goto_7

    :cond_11
    if-ge v1, v13, :cond_15

    add-int/lit8 v7, v2, -0x1

    if-lt v0, v7, :cond_12

    goto :goto_4

    :cond_12
    add-int/lit8 v7, v0, 0x1

    aget-byte v0, v3, v0

    if-gt v0, v10, :cond_1b

    if-ne v1, v11, :cond_13

    if-lt v0, v12, :cond_1b

    :cond_13
    if-ne v1, v15, :cond_14

    if-ge v0, v12, :cond_1b

    :cond_14
    add-int/lit8 v1, v7, 0x1

    aget-byte v0, v3, v7

    if-le v0, v10, :cond_e

    goto :goto_7

    :cond_15
    add-int/lit8 v7, v2, -0x2

    if-lt v0, v7, :cond_1a

    :goto_4
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v3, v1

    sub-int/2addr v2, v0

    if-eqz v2, :cond_18

    if-eq v2, v8, :cond_17

    if-ne v2, v5, :cond_16

    aget-byte v2, v3, v0

    add-int/2addr v0, v8

    aget-byte v0, v3, v0

    invoke-static {v1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(III)I

    move-result v0

    goto :goto_6

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17
    aget-byte v0, v3, v0

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    goto :goto_6

    :cond_18
    if-le v1, v4, :cond_19

    const/4 v7, -0x1

    goto :goto_5

    :cond_19
    move v7, v1

    :goto_5
    move v0, v7

    :goto_6
    move v6, v0

    goto :goto_8

    :cond_1a
    add-int/lit8 v7, v0, 0x1

    aget-byte v0, v3, v0

    if-gt v0, v10, :cond_1b

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_1b

    add-int/lit8 v0, v7, 0x1

    aget-byte v1, v3, v7

    if-gt v1, v10, :cond_1b

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    if-le v0, v10, :cond_e

    :cond_1b
    :goto_7
    const/4 v6, -0x1

    :goto_8
    return v6

    :cond_1c
    move v1, v0

    goto/16 :goto_2

    :goto_9
    or-int v7, v1, v2

    array-length v9, v3

    sub-int/2addr v9, v2

    or-int/2addr v7, v9

    const/4 v9, 0x3

    if-ltz v7, :cond_40

    int-to-long v6, v1

    int-to-long v1, v2

    const-wide/16 v16, 0x1

    if-eqz v0, :cond_2a

    cmp-long v18, v6, v1

    if-ltz v18, :cond_1d

    goto/16 :goto_13

    :cond_1d
    int-to-byte v4, v0

    if-ge v4, v11, :cond_1f

    if-lt v4, v14, :cond_3f

    add-long v19, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v0

    if-le v0, v10, :cond_1e

    goto/16 :goto_12

    :cond_1e
    move-wide/from16 v6, v19

    goto/16 :goto_b

    :cond_1f
    if-ge v4, v13, :cond_24

    shr-int/lit8 v0, v0, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_21

    add-long v19, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v0

    cmp-long v6, v19, v1

    if-ltz v6, :cond_20

    invoke-static {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    goto/16 :goto_13

    :cond_20
    move-wide/from16 v6, v19

    :cond_21
    if-gt v0, v10, :cond_3f

    if-ne v4, v11, :cond_22

    if-lt v0, v12, :cond_3f

    :cond_22
    if-ne v4, v15, :cond_23

    if-ge v0, v12, :cond_3f

    :cond_23
    add-long v19, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v0

    if-le v0, v10, :cond_1e

    goto/16 :goto_12

    :cond_24
    shr-int/lit8 v8, v0, 0x8

    not-int v8, v8

    int-to-byte v8, v8

    if-nez v8, :cond_26

    add-long v20, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v8

    cmp-long v0, v20, v1

    if-ltz v0, :cond_25

    invoke-static {v4, v8}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    goto/16 :goto_13

    :cond_25
    move-wide/from16 v6, v20

    const/4 v0, 0x0

    goto :goto_a

    :cond_26
    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    :goto_a
    if-nez v0, :cond_28

    add-long v20, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v0

    cmp-long v6, v20, v1

    if-ltz v6, :cond_27

    invoke-static {v4, v8, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(III)I

    move-result v0

    goto/16 :goto_13

    :cond_27
    move-wide/from16 v6, v20

    :cond_28
    if-gt v8, v10, :cond_3f

    shl-int/lit8 v4, v4, 0x1c

    add-int/lit8 v8, v8, 0x70

    add-int/2addr v8, v4

    shr-int/lit8 v4, v8, 0x1e

    if-nez v4, :cond_3f

    if-gt v0, v10, :cond_3f

    add-long v20, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v0

    if-le v0, v10, :cond_29

    goto/16 :goto_12

    :cond_29
    move-wide/from16 v6, v20

    :cond_2a
    :goto_b
    sub-long/2addr v1, v6

    long-to-int v0, v1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2b

    const/4 v1, 0x0

    goto :goto_d

    :cond_2b
    move-wide v12, v6

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_2d

    add-long v20, v12, v16

    invoke-static {v12, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v2

    if-gez v2, :cond_2c

    goto :goto_d

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v12, v20

    goto :goto_c

    :cond_2d
    move v1, v0

    :goto_d
    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr v6, v1

    :cond_2e
    :goto_e
    const/4 v1, 0x0

    :goto_f
    if-lez v0, :cond_30

    add-long v1, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v6

    if-ltz v6, :cond_2f

    add-int/lit8 v0, v0, -0x1

    move-wide/from16 v22, v1

    move v1, v6

    move-wide/from16 v6, v22

    goto :goto_f

    :cond_2f
    move-wide/from16 v22, v1

    move v1, v6

    move-wide/from16 v6, v22

    :cond_30
    if-nez v0, :cond_31

    const/4 v0, 0x0

    goto/16 :goto_13

    :cond_31
    add-int/lit8 v0, v0, -0x1

    if-ge v1, v11, :cond_34

    if-nez v0, :cond_32

    move v0, v1

    goto/16 :goto_13

    :cond_32
    add-int/lit8 v0, v0, -0x1

    if-lt v1, v14, :cond_3f

    add-long v1, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v6

    if-le v6, v10, :cond_33

    goto/16 :goto_12

    :cond_33
    move-wide v6, v1

    const/16 v2, -0x10

    const/16 v4, -0xc

    const/16 v8, -0x60

    goto :goto_e

    :cond_34
    const/16 v2, -0x10

    if-ge v1, v2, :cond_38

    if-ge v0, v5, :cond_35

    goto :goto_10

    :cond_35
    add-int/lit8 v0, v0, -0x2

    add-long v12, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v4

    if-gt v4, v10, :cond_3f

    const/16 v8, -0x60

    if-ne v1, v11, :cond_36

    if-lt v4, v8, :cond_3f

    :cond_36
    if-ne v1, v15, :cond_37

    if-ge v4, v8, :cond_3f

    :cond_37
    add-long v6, v12, v16

    invoke-static {v12, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v1

    if-le v1, v10, :cond_2e

    goto :goto_12

    :cond_38
    const/16 v8, -0x60

    if-ge v0, v9, :cond_3d

    :goto_10
    if-eqz v0, :cond_3b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3a

    if-ne v0, v5, :cond_39

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v0

    add-long v6, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(III)I

    move-result v0

    goto :goto_13

    :cond_39
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3a
    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v0

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a(II)I

    move-result v0

    goto :goto_13

    :cond_3b
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/f0;->a:Lcom/google/crypto/tink/shaded/protobuf/e0;

    const/16 v4, -0xc

    if-le v1, v4, :cond_3c

    const/4 v7, -0x1

    goto :goto_11

    :cond_3c
    move v7, v1

    :goto_11
    move v0, v7

    goto :goto_13

    :cond_3d
    const/16 v4, -0xc

    add-int/lit8 v0, v0, -0x3

    add-long v12, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v6

    if-gt v6, v10, :cond_3f

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v6, v6, 0x70

    add-int/2addr v6, v1

    shr-int/lit8 v1, v6, 0x1e

    if-nez v1, :cond_3f

    add-long v6, v12, v16

    invoke-static {v12, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v1

    if-gt v1, v10, :cond_3f

    add-long v12, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/d0;->f(J[B)B

    move-result v1

    if-le v1, v10, :cond_3e

    goto :goto_12

    :cond_3e
    move-wide v6, v12

    goto/16 :goto_e

    :cond_3f
    :goto_12
    const/4 v0, -0x1

    :goto_13
    return v0

    :cond_40
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v4, v9, [Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "Array length=%d, index=%d, limit=%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
