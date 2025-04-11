.class public final Lcom/google/protobuf/xb;
.super Lcom/google/protobuf/c8;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/xb;->c:I

    invoke-direct {p0}, Lcom/google/protobuf/c8;-><init>()V

    return-void
.end method


# virtual methods
.method public final a0(III[B)I
    .locals 23

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/16 v4, -0xc

    const/4 v5, 0x2

    const/4 v8, 0x1

    move-object/from16 v9, p0

    iget v9, v9, Lcom/google/protobuf/xb;->c:I

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

    invoke-static {v9, v1}, Lcom/google/protobuf/yb;->c(II)I

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

    invoke-static {v9, v7}, Lcom/google/protobuf/yb;->c(II)I

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

    invoke-static {v9, v7, v0}, Lcom/google/protobuf/yb;->d(III)I

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

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/yb;->d(III)I

    move-result v0

    goto :goto_6

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17
    aget-byte v0, v3, v0

    invoke-static {v1, v0}, Lcom/google/protobuf/yb;->c(II)I

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

    if-ltz v7, :cond_44

    int-to-long v6, v1

    int-to-long v1, v2

    const-wide/16 v16, 0x1

    if-eqz v0, :cond_2a

    cmp-long v18, v6, v1

    if-ltz v18, :cond_1d

    goto/16 :goto_15

    :cond_1d
    int-to-byte v4, v0

    if-ge v4, v11, :cond_1f

    if-lt v4, v14, :cond_43

    add-long v19, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v0

    if-le v0, v10, :cond_1e

    goto/16 :goto_14

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

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v0

    cmp-long v6, v19, v1

    if-ltz v6, :cond_20

    invoke-static {v4, v0}, Lcom/google/protobuf/yb;->c(II)I

    move-result v0

    goto/16 :goto_15

    :cond_20
    move-wide/from16 v6, v19

    :cond_21
    if-gt v0, v10, :cond_43

    if-ne v4, v11, :cond_22

    if-lt v0, v12, :cond_43

    :cond_22
    if-ne v4, v15, :cond_23

    if-ge v0, v12, :cond_43

    :cond_23
    add-long v19, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v0

    if-le v0, v10, :cond_1e

    goto/16 :goto_14

    :cond_24
    shr-int/lit8 v8, v0, 0x8

    not-int v8, v8

    int-to-byte v8, v8

    if-nez v8, :cond_26

    add-long v20, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v8

    cmp-long v0, v20, v1

    if-ltz v0, :cond_25

    invoke-static {v4, v8}, Lcom/google/protobuf/yb;->c(II)I

    move-result v0

    goto/16 :goto_15

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

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v0

    cmp-long v6, v20, v1

    if-ltz v6, :cond_27

    invoke-static {v4, v8, v0}, Lcom/google/protobuf/yb;->d(III)I

    move-result v0

    goto/16 :goto_15

    :cond_27
    move-wide/from16 v6, v20

    :cond_28
    if-gt v8, v10, :cond_43

    shl-int/lit8 v4, v4, 0x1c

    add-int/lit8 v8, v8, 0x70

    add-int/2addr v8, v4

    shr-int/lit8 v4, v8, 0x1e

    if-nez v4, :cond_43

    if-gt v0, v10, :cond_43

    add-long v20, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v0

    if-le v0, v10, :cond_29

    goto/16 :goto_14

    :cond_29
    move-wide/from16 v6, v20

    :cond_2a
    :goto_b
    sub-long/2addr v1, v6

    long-to-int v0, v1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2b

    const/4 v2, 0x0

    goto :goto_f

    :cond_2b
    long-to-int v1, v6

    and-int/lit8 v1, v1, 0x7

    rsub-int/lit8 v1, v1, 0x8

    move-wide v12, v6

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2d

    add-long v20, v12, v16

    invoke-static {v12, v13, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v8

    if-gez v8, :cond_2c

    goto :goto_f

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v12, v20

    goto :goto_c

    :cond_2d
    :goto_d
    add-int/lit8 v1, v2, 0x8

    if-gt v1, v0, :cond_2f

    sget-wide v20, Lcom/google/protobuf/wb;->f:J

    add-long v4, v20, v12

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/wb;->l(Ljava/lang/Object;J)J

    move-result-wide v4

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, v4, v20

    const-wide/16 v20, 0x0

    cmp-long v4, v4, v20

    if-eqz v4, :cond_2e

    goto :goto_e

    :cond_2e
    const-wide/16 v4, 0x8

    add-long/2addr v12, v4

    move v2, v1

    const/4 v5, 0x2

    goto :goto_d

    :cond_2f
    :goto_e
    if-ge v2, v0, :cond_31

    add-long v4, v12, v16

    invoke-static {v12, v13, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v1

    if-gez v1, :cond_30

    goto :goto_f

    :cond_30
    add-int/lit8 v2, v2, 0x1

    move-wide v12, v4

    goto :goto_e

    :cond_31
    move v2, v0

    :goto_f
    sub-int/2addr v0, v2

    int-to-long v1, v2

    add-long/2addr v6, v1

    :cond_32
    :goto_10
    const/4 v1, 0x0

    :goto_11
    if-lez v0, :cond_34

    add-long v1, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v4

    if-ltz v4, :cond_33

    add-int/lit8 v0, v0, -0x1

    move-wide v6, v1

    move v1, v4

    goto :goto_11

    :cond_33
    move-wide v6, v1

    move v1, v4

    :cond_34
    if-nez v0, :cond_35

    const/4 v0, 0x0

    goto/16 :goto_15

    :cond_35
    add-int/lit8 v0, v0, -0x1

    if-ge v1, v11, :cond_38

    if-nez v0, :cond_36

    move v0, v1

    goto/16 :goto_15

    :cond_36
    add-int/lit8 v0, v0, -0x1

    if-lt v1, v14, :cond_43

    add-long v1, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v4

    if-le v4, v10, :cond_37

    goto/16 :goto_14

    :cond_37
    move-wide v6, v1

    goto :goto_10

    :cond_38
    const/16 v2, -0x10

    if-ge v1, v2, :cond_3c

    const/4 v4, 0x2

    if-ge v0, v4, :cond_39

    goto :goto_12

    :cond_39
    add-int/lit8 v0, v0, -0x2

    add-long v4, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v6

    if-gt v6, v10, :cond_43

    const/16 v12, -0x60

    if-ne v1, v11, :cond_3a

    if-lt v6, v12, :cond_43

    :cond_3a
    if-ne v1, v15, :cond_3b

    if-ge v6, v12, :cond_43

    :cond_3b
    add-long v6, v4, v16

    invoke-static {v4, v5, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v1

    if-le v1, v10, :cond_32

    goto :goto_14

    :cond_3c
    const/16 v12, -0x60

    if-ge v0, v9, :cond_41

    :goto_12
    if-eqz v0, :cond_3f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3e

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3d

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v0

    add-long v6, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/yb;->d(III)I

    move-result v0

    goto :goto_15

    :cond_3d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3e
    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/yb;->c(II)I

    move-result v0

    goto :goto_15

    :cond_3f
    sget-object v0, Lcom/google/protobuf/yb;->a:Lcom/google/protobuf/xb;

    const/16 v4, -0xc

    if-le v1, v4, :cond_40

    const/4 v7, -0x1

    goto :goto_13

    :cond_40
    move v7, v1

    :goto_13
    move v0, v7

    goto :goto_15

    :cond_41
    const/16 v4, -0xc

    add-int/lit8 v0, v0, -0x3

    add-long v4, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v6

    if-gt v6, v10, :cond_43

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v6, v6, 0x70

    add-int/2addr v6, v1

    shr-int/lit8 v1, v6, 0x1e

    if-nez v1, :cond_43

    add-long v6, v4, v16

    invoke-static {v4, v5, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v1

    if-gt v1, v10, :cond_43

    add-long v4, v6, v16

    invoke-static {v6, v7, v3}, Lcom/google/protobuf/wb;->h(J[B)B

    move-result v1

    if-le v1, v10, :cond_42

    goto :goto_14

    :cond_42
    move-wide v6, v4

    goto/16 :goto_10

    :cond_43
    :goto_14
    const/4 v0, -0x1

    :goto_15
    return v0

    :cond_44
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v4, v9, [Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v1, "Array length=%d, index=%d, limit=%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c0(IIILjava/nio/ByteBuffer;)I
    .locals 22

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    iget v2, v2, Lcom/google/protobuf/xb;->c:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static/range {p1 .. p4}, Lcom/google/protobuf/c8;->b0(IIILjava/nio/ByteBuffer;)I

    move-result v0

    return v0

    :goto_0
    or-int v2, v1, p3

    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    const/4 v5, 0x2

    if-ltz v2, :cond_23

    sget-object v2, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    sget-wide v7, Lcom/google/protobuf/wb;->g:J

    move-object/from16 v9, p4

    invoke-virtual {v2, v9, v7, v8}, Lcom/google/protobuf/vb;->k(Ljava/lang/Object;J)J

    move-result-wide v7

    int-to-long v9, v1

    add-long/2addr v7, v9

    sub-int v1, p3, v1

    int-to-long v1, v1

    add-long/2addr v1, v7

    const-wide/16 v9, 0x1

    const/16 v12, -0x13

    const/16 v13, -0x3e

    const/16 v14, -0x10

    const/16 v15, -0x60

    const/16 v11, -0x20

    const/16 v6, -0x41

    if-eqz v0, :cond_d

    cmp-long v16, v7, v1

    if-ltz v16, :cond_0

    goto/16 :goto_b

    :cond_0
    int-to-byte v3, v0

    if-ge v3, v11, :cond_2

    if-lt v3, v13, :cond_22

    add-long v17, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v0

    if-le v0, v6, :cond_1

    goto/16 :goto_a

    :cond_1
    move-wide/from16 v7, v17

    goto/16 :goto_2

    :cond_2
    if-ge v3, v14, :cond_7

    shr-int/lit8 v0, v0, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_4

    add-long v17, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v0

    cmp-long v7, v17, v1

    if-ltz v7, :cond_3

    invoke-static {v3, v0}, Lcom/google/protobuf/yb;->c(II)I

    move-result v0

    goto/16 :goto_b

    :cond_3
    move-wide/from16 v7, v17

    :cond_4
    if-gt v0, v6, :cond_22

    if-ne v3, v11, :cond_5

    if-lt v0, v15, :cond_22

    :cond_5
    if-ne v3, v12, :cond_6

    if-ge v0, v15, :cond_22

    :cond_6
    add-long v17, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v0

    if-le v0, v6, :cond_1

    goto/16 :goto_a

    :cond_7
    shr-int/lit8 v4, v0, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    if-nez v4, :cond_9

    add-long v18, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v4

    cmp-long v0, v18, v1

    if-ltz v0, :cond_8

    invoke-static {v3, v4}, Lcom/google/protobuf/yb;->c(II)I

    move-result v0

    goto/16 :goto_b

    :cond_8
    move-wide/from16 v7, v18

    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    :goto_1
    if-nez v0, :cond_b

    add-long v18, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v0

    cmp-long v7, v18, v1

    if-ltz v7, :cond_a

    invoke-static {v3, v4, v0}, Lcom/google/protobuf/yb;->d(III)I

    move-result v0

    goto/16 :goto_b

    :cond_a
    move-wide/from16 v7, v18

    :cond_b
    if-gt v4, v6, :cond_22

    shl-int/lit8 v3, v3, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v4, v3

    shr-int/lit8 v3, v4, 0x1e

    if-nez v3, :cond_22

    if-gt v0, v6, :cond_22

    add-long v3, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v0

    if-le v0, v6, :cond_c

    goto/16 :goto_a

    :cond_c
    move-wide v7, v3

    :cond_d
    :goto_2
    sub-long/2addr v1, v7

    long-to-int v0, v1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_e

    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    neg-long v1, v7

    const-wide/16 v3, 0x7

    and-long/2addr v1, v3

    long-to-int v1, v1

    move v2, v1

    move-wide v3, v7

    :goto_3
    if-lez v2, :cond_10

    add-long v18, v3, v9

    invoke-static {v3, v4}, Lcom/google/protobuf/wb;->g(J)B

    move-result v3

    if-gez v3, :cond_f

    sub-int/2addr v1, v2

    goto :goto_5

    :cond_f
    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v3, v18

    goto :goto_3

    :cond_10
    sub-int v1, v0, v1

    :goto_4
    const/16 v2, 0x8

    if-lt v1, v2, :cond_11

    sget-object v2, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    invoke-virtual {v2, v3, v4}, Lcom/google/protobuf/vb;->j(J)J

    move-result-wide v18

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v2, v18, v20

    if-nez v2, :cond_11

    const-wide/16 v18, 0x8

    add-long v3, v3, v18

    add-int/lit8 v1, v1, -0x8

    goto :goto_4

    :cond_11
    sub-int v1, v0, v1

    :goto_5
    int-to-long v2, v1

    add-long/2addr v7, v2

    sub-int/2addr v0, v1

    :cond_12
    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-lez v0, :cond_14

    add-long v1, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v3

    if-ltz v3, :cond_13

    add-int/lit8 v0, v0, -0x1

    move-wide v7, v1

    move v1, v3

    goto :goto_7

    :cond_13
    move-wide v7, v1

    move v1, v3

    :cond_14
    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_15
    add-int/lit8 v0, v0, -0x1

    if-ge v1, v11, :cond_18

    if-nez v0, :cond_16

    move v0, v1

    goto/16 :goto_b

    :cond_16
    add-int/lit8 v0, v0, -0x1

    if-lt v1, v13, :cond_22

    add-long v1, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v3

    if-le v3, v6, :cond_17

    goto/16 :goto_a

    :cond_17
    move-wide v7, v1

    goto :goto_6

    :cond_18
    if-ge v1, v14, :cond_1c

    if-ge v0, v5, :cond_19

    goto :goto_8

    :cond_19
    add-int/lit8 v0, v0, -0x2

    add-long v2, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v4

    if-gt v4, v6, :cond_22

    if-ne v1, v11, :cond_1a

    if-lt v4, v15, :cond_22

    :cond_1a
    if-ne v1, v12, :cond_1b

    if-ge v4, v15, :cond_22

    :cond_1b
    add-long v7, v2, v9

    invoke-static {v2, v3}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    if-le v1, v6, :cond_12

    goto :goto_a

    :cond_1c
    const/4 v2, 0x3

    if-ge v0, v2, :cond_21

    :goto_8
    if-eqz v0, :cond_1f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1e

    if-ne v0, v5, :cond_1d

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v0

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/yb;->d(III)I

    move-result v0

    goto :goto_b

    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1e
    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/yb;->c(II)I

    move-result v0

    goto :goto_b

    :cond_1f
    sget-object v0, Lcom/google/protobuf/yb;->a:Lcom/google/protobuf/xb;

    const/16 v0, -0xc

    if-le v1, v0, :cond_20

    const/4 v11, -0x1

    goto :goto_9

    :cond_20
    move v11, v1

    :goto_9
    move v0, v11

    goto :goto_b

    :cond_21
    add-int/lit8 v0, v0, -0x3

    add-long v2, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v4

    if-gt v4, v6, :cond_22

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v4, v1

    shr-int/lit8 v1, v4, 0x1e

    if-nez v1, :cond_22

    add-long v7, v2, v9

    invoke-static {v2, v3}, Lcom/google/protobuf/wb;->g(J)B

    move-result v1

    if-gt v1, v6, :cond_22

    add-long v1, v7, v9

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v3

    if-le v3, v6, :cond_17

    :cond_22
    :goto_a
    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_23
    move-object/from16 v9, p4

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g0(II[B)Ljava/lang/String;
    .locals 10

    iget p0, p0, Lcom/google/protobuf/xb;->c:I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    or-int p0, p1, p2

    array-length v0, p3

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    or-int/2addr p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p0, :cond_10

    add-int p0, p1, p2

    new-array p2, p2, [C

    move v2, v0

    :goto_0
    if-ge p1, p0, :cond_2

    aget-byte v3, p3, p1

    if-ltz v3, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v2, 0x1

    int-to-char v3, v3

    aput-char v3, p2, v2

    move v2, v4

    goto :goto_0

    :cond_2
    :goto_2
    move v7, v2

    :cond_3
    :goto_3
    if-ge p1, p0, :cond_f

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p3, p1

    if-ltz p1, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_4
    if-eqz v3, :cond_7

    add-int/lit8 v3, v7, 0x1

    int-to-char p1, p1

    aput-char p1, p2, v7

    move p1, v2

    :goto_5
    move v7, v3

    if-ge p1, p0, :cond_3

    aget-byte v2, p3, p1

    if-ltz v2, :cond_5

    move v3, v1

    goto :goto_6

    :cond_5
    move v3, v0

    :goto_6
    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v7, 0x1

    int-to-char v2, v2

    aput-char v2, p2, v7

    goto :goto_5

    :cond_7
    const/16 v3, -0x20

    if-ge p1, v3, :cond_8

    move v3, v1

    goto :goto_7

    :cond_8
    move v3, v0

    :goto_7
    if-eqz v3, :cond_a

    if-ge v2, p0, :cond_9

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p3, v2

    add-int/lit8 v4, v7, 0x1

    invoke-static {p1, v2, p2, v7}, Lcom/google/protobuf/c8;->M(BB[CI)V

    move p1, v3

    move v7, v4

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_a
    const/16 v3, -0x10

    if-ge p1, v3, :cond_b

    move v3, v1

    goto :goto_8

    :cond_b
    move v3, v0

    :goto_8
    if-eqz v3, :cond_d

    add-int/lit8 v3, p0, -0x1

    if-ge v2, v3, :cond_c

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p3, v2

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p3, v3

    add-int/lit8 v5, v7, 0x1

    invoke-static {p1, v2, v3, p2, v7}, Lcom/google/protobuf/c8;->N(BBB[CI)V

    move p1, v4

    move v7, v5

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_d
    add-int/lit8 v3, p0, -0x2

    if-ge v2, v3, :cond_e

    add-int/lit8 v3, v2, 0x1

    aget-byte v4, p3, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v5, p3, v3

    add-int/lit8 v8, v2, 0x1

    aget-byte v6, p3, v2

    add-int/lit8 v9, v7, 0x1

    move v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/c8;->L(BBBB[CI)V

    add-int/lit8 v7, v9, 0x1

    move p1, v8

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v0, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_9
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/g7;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p3, p1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v1, "\ufffd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    add-int/2addr p2, p1

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_12

    :goto_a
    return-object p0

    :cond_12
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h0(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 17

    move/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p3

    iget v1, v1, Lcom/google/protobuf/xb;->c:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static/range {p1 .. p3}, Lcom/google/protobuf/c8;->P(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_0
    or-int v1, v0, v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    or-int/2addr v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v1, :cond_10

    sget-object v1, Lcom/google/protobuf/wb;->c:Lcom/google/protobuf/vb;

    sget-wide v5, Lcom/google/protobuf/wb;->g:J

    move-object/from16 v7, p1

    invoke-virtual {v1, v7, v5, v6}, Lcom/google/protobuf/vb;->k(Ljava/lang/Object;J)J

    move-result-wide v5

    int-to-long v0, v0

    add-long/2addr v5, v0

    int-to-long v0, v2

    add-long/2addr v0, v5

    new-array v2, v2, [C

    move v7, v3

    :goto_1
    cmp-long v8, v5, v0

    const-wide/16 v13, 0x1

    if-gez v8, :cond_2

    invoke-static {v5, v6}, Lcom/google/protobuf/wb;->g(J)B

    move-result v8

    if-ltz v8, :cond_0

    move v9, v4

    goto :goto_2

    :cond_0
    move v9, v3

    :goto_2
    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    add-long/2addr v5, v13

    add-int/lit8 v9, v7, 0x1

    int-to-char v8, v8

    aput-char v8, v2, v7

    move v7, v9

    goto :goto_1

    :cond_2
    :goto_3
    move v12, v7

    :cond_3
    :goto_4
    cmp-long v7, v5, v0

    if-gez v7, :cond_f

    add-long v7, v5, v13

    invoke-static {v5, v6}, Lcom/google/protobuf/wb;->g(J)B

    move-result v5

    if-ltz v5, :cond_4

    move v6, v4

    goto :goto_5

    :cond_4
    move v6, v3

    :goto_5
    if-eqz v6, :cond_7

    add-int/lit8 v6, v12, 0x1

    int-to-char v5, v5

    aput-char v5, v2, v12

    move v12, v6

    move-wide v5, v7

    :goto_6
    cmp-long v7, v5, v0

    if-gez v7, :cond_3

    invoke-static {v5, v6}, Lcom/google/protobuf/wb;->g(J)B

    move-result v7

    if-ltz v7, :cond_5

    move v8, v4

    goto :goto_7

    :cond_5
    move v8, v3

    :goto_7
    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    add-long/2addr v5, v13

    add-int/lit8 v8, v12, 0x1

    int-to-char v7, v7

    aput-char v7, v2, v12

    move v12, v8

    goto :goto_6

    :cond_7
    const/16 v6, -0x20

    if-ge v5, v6, :cond_8

    move v6, v4

    goto :goto_8

    :cond_8
    move v6, v3

    :goto_8
    if-eqz v6, :cond_a

    cmp-long v6, v7, v0

    if-gez v6, :cond_9

    add-long v9, v7, v13

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v6

    add-int/lit8 v7, v12, 0x1

    invoke-static {v5, v6, v2, v12}, Lcom/google/protobuf/c8;->M(BB[CI)V

    move v12, v7

    move-wide v5, v9

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_a
    const/16 v6, -0x10

    if-ge v5, v6, :cond_b

    move v6, v4

    goto :goto_9

    :cond_b
    move v6, v3

    :goto_9
    if-eqz v6, :cond_d

    sub-long v9, v0, v13

    cmp-long v6, v7, v9

    if-gez v6, :cond_c

    add-long v9, v7, v13

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v6

    add-long v7, v9, v13

    invoke-static {v9, v10}, Lcom/google/protobuf/wb;->g(J)B

    move-result v9

    add-int/lit8 v10, v12, 0x1

    invoke-static {v5, v6, v9, v2, v12}, Lcom/google/protobuf/c8;->N(BBB[CI)V

    move-wide v5, v7

    move v12, v10

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_d
    const-wide/16 v9, 0x2

    sub-long v9, v0, v9

    cmp-long v6, v7, v9

    if-gez v6, :cond_e

    add-long v9, v7, v13

    invoke-static {v7, v8}, Lcom/google/protobuf/wb;->g(J)B

    move-result v8

    add-long v6, v9, v13

    invoke-static {v9, v10}, Lcom/google/protobuf/wb;->g(J)B

    move-result v9

    add-long v15, v6, v13

    invoke-static {v6, v7}, Lcom/google/protobuf/wb;->g(J)B

    move-result v10

    add-int/lit8 v6, v12, 0x1

    move v7, v5

    move-object v11, v2

    invoke-static/range {v7 .. v12}, Lcom/google/protobuf/c8;->L(BBBB[CI)V

    add-int/lit8 v7, v6, 0x1

    move-wide v5, v15

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v12}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_10
    move-object/from16 v7, p1

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const-string v0, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i0(Ljava/lang/CharSequence;[BII)I
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p0

    iget v5, v5, Lcom/google/protobuf/xb;->c:I

    const-string v6, " at index "

    const-string v7, "Failed writing "

    const v8, 0xd800

    const v9, 0xdfff

    const/16 v10, 0x800

    const/16 v11, 0x80

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    add-int v12, v4, v2

    if-ge v12, v3, :cond_0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v11, :cond_0

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_1

    add-int v0, v2, v5

    goto/16 :goto_4

    :cond_1
    add-int/2addr v2, v4

    :goto_1
    if-ge v4, v5, :cond_b

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ge v12, v11, :cond_2

    if-ge v2, v3, :cond_2

    add-int/lit8 v13, v2, 0x1

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    goto :goto_2

    :cond_2
    if-ge v12, v10, :cond_3

    add-int/lit8 v13, v3, -0x2

    if-gt v2, v13, :cond_3

    add-int/lit8 v13, v2, 0x1

    ushr-int/lit8 v14, v12, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    aput-byte v14, v1, v2

    add-int/lit8 v2, v13, 0x1

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    aput-byte v12, v1, v13

    goto :goto_3

    :cond_3
    if-lt v12, v8, :cond_4

    if-ge v9, v12, :cond_5

    :cond_4
    add-int/lit8 v13, v3, -0x3

    if-gt v2, v13, :cond_5

    add-int/lit8 v13, v2, 0x1

    ushr-int/lit8 v14, v12, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    aput-byte v14, v1, v2

    add-int/lit8 v2, v13, 0x1

    ushr-int/lit8 v14, v12, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v13

    add-int/lit8 v13, v2, 0x1

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    :goto_2
    move v2, v13

    goto :goto_3

    :cond_5
    add-int/lit8 v13, v3, -0x4

    if-gt v2, v13, :cond_8

    add-int/lit8 v13, v4, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-eq v13, v14, :cond_7

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v12, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v12, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    add-int/lit8 v12, v2, 0x1

    ushr-int/lit8 v14, v4, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    aput-byte v14, v1, v2

    add-int/lit8 v2, v12, 0x1

    ushr-int/lit8 v14, v4, 0xc

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v12

    add-int/lit8 v12, v2, 0x1

    ushr-int/lit8 v14, v4, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v2

    add-int/lit8 v2, v12, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v11

    int-to-byte v4, v4

    aput-byte v4, v1, v12

    move v4, v13

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_6
    move v4, v13

    :cond_7
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v4, v5}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_8
    if-gt v8, v12, :cond_a

    if-gt v12, v9, :cond_a

    add-int/lit8 v1, v4, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v1, v3, :cond_9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v4, v5}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v2

    :goto_4
    return v0

    :goto_5
    int-to-long v12, v2

    int-to-long v14, v3

    add-long/2addr v14, v12

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt v5, v3, :cond_18

    array-length v4, v1

    sub-int/2addr v4, v3

    if-lt v4, v2, :cond_18

    const/4 v4, 0x0

    :goto_6
    const-wide/16 v2, 0x1

    if-ge v4, v5, :cond_c

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ge v9, v11, :cond_c

    add-long/2addr v2, v12

    int-to-byte v9, v9

    invoke-static {v1, v12, v13, v9}, Lcom/google/protobuf/wb;->p([BJB)V

    add-int/lit8 v4, v4, 0x1

    move-wide v12, v2

    const v9, 0xdfff

    goto :goto_6

    :cond_c
    if-ne v4, v5, :cond_d

    goto/16 :goto_9

    :cond_d
    :goto_7
    if-ge v4, v5, :cond_17

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ge v9, v11, :cond_e

    cmp-long v16, v12, v14

    if-gez v16, :cond_e

    add-long v16, v12, v2

    int-to-byte v9, v9

    invoke-static {v1, v12, v13, v9}, Lcom/google/protobuf/wb;->p([BJB)V

    move-wide v9, v2

    move v8, v11

    move-wide/from16 v18, v14

    move-wide/from16 v12, v16

    goto/16 :goto_8

    :cond_e
    if-ge v9, v10, :cond_f

    const-wide/16 v16, 0x2

    sub-long v16, v14, v16

    cmp-long v16, v12, v16

    if-gtz v16, :cond_f

    add-long v10, v12, v2

    ushr-int/lit8 v8, v9, 0x6

    or-int/lit16 v8, v8, 0x3c0

    int-to-byte v8, v8

    invoke-static {v1, v12, v13, v8}, Lcom/google/protobuf/wb;->p([BJB)V

    add-long v12, v10, v2

    and-int/lit8 v8, v9, 0x3f

    const/16 v9, 0x80

    or-int/2addr v8, v9

    int-to-byte v8, v8

    invoke-static {v1, v10, v11, v8}, Lcom/google/protobuf/wb;->p([BJB)V

    move-wide v9, v2

    move-wide/from16 v18, v14

    const/16 v8, 0x80

    goto/16 :goto_8

    :cond_f
    if-lt v9, v8, :cond_10

    const v8, 0xdfff

    if-ge v8, v9, :cond_11

    :cond_10
    const-wide/16 v10, 0x3

    sub-long v10, v14, v10

    cmp-long v8, v12, v10

    if-gtz v8, :cond_11

    add-long v10, v12, v2

    ushr-int/lit8 v8, v9, 0xc

    or-int/lit16 v8, v8, 0x1e0

    int-to-byte v8, v8

    invoke-static {v1, v12, v13, v8}, Lcom/google/protobuf/wb;->p([BJB)V

    add-long v12, v10, v2

    ushr-int/lit8 v8, v9, 0x6

    and-int/lit8 v8, v8, 0x3f

    const/16 v2, 0x80

    or-int/lit16 v3, v8, 0x80

    int-to-byte v3, v3

    invoke-static {v1, v10, v11, v3}, Lcom/google/protobuf/wb;->p([BJB)V

    const-wide/16 v10, 0x1

    add-long v18, v12, v10

    and-int/lit8 v3, v9, 0x3f

    or-int/2addr v3, v2

    int-to-byte v2, v3

    invoke-static {v1, v12, v13, v2}, Lcom/google/protobuf/wb;->p([BJB)V

    move-wide/from16 v12, v18

    const/16 v8, 0x80

    const-wide/16 v9, 0x1

    move-wide/from16 v18, v14

    goto :goto_8

    :cond_11
    const-wide/16 v2, 0x4

    sub-long v2, v14, v2

    cmp-long v2, v12, v2

    if-gtz v2, :cond_14

    add-int/lit8 v2, v4, 0x1

    if-eq v2, v5, :cond_13

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {v9, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    const-wide/16 v8, 0x1

    add-long v10, v12, v8

    ushr-int/lit8 v4, v3, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    invoke-static {v1, v12, v13, v4}, Lcom/google/protobuf/wb;->p([BJB)V

    add-long v12, v10, v8

    ushr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    const/16 v8, 0x80

    or-int/2addr v4, v8

    int-to-byte v4, v4

    invoke-static {v1, v10, v11, v4}, Lcom/google/protobuf/wb;->p([BJB)V

    move-wide/from16 v18, v14

    const-wide/16 v9, 0x1

    add-long v14, v12, v9

    ushr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v8

    int-to-byte v4, v4

    invoke-static {v1, v12, v13, v4}, Lcom/google/protobuf/wb;->p([BJB)V

    add-long v11, v14, v9

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v8

    int-to-byte v3, v3

    invoke-static {v1, v14, v15, v3}, Lcom/google/protobuf/wb;->p([BJB)V

    move v4, v2

    move-wide v12, v11

    :goto_8
    add-int/lit8 v4, v4, 0x1

    move v11, v8

    move-wide v2, v9

    move-wide/from16 v14, v18

    const v8, 0xd800

    const/16 v10, 0x800

    goto/16 :goto_7

    :cond_12
    move v4, v2

    :cond_13
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v4, v5}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_14
    const v1, 0xd800

    if-gt v1, v9, :cond_16

    const v1, 0xdfff

    if-gt v9, v1, :cond_16

    add-int/lit8 v1, v4, 0x1

    if-eq v1, v5, :cond_15

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v4, v5}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_9
    long-to-int v0, v12

    return v0

    :cond_18
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
