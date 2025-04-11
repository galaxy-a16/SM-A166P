.class public abstract La2/b;
.super La2/a;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, La2/a;-><init>()V

    return-void
.end method

.method public static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/CharSequence;II)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()J
.end method

.method public final d(Ljava/lang/CharSequence;I)J
    .locals 26

    move-object/from16 v1, p1

    const/4 v0, 0x0

    add-int/lit8 v2, p2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-wide/16 v4, -0x1

    if-le v2, v3, :cond_0

    return-wide v4

    :cond_0
    invoke-static {v1, v0, v2}, La2/b;->f(Ljava/lang/CharSequence;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    return-wide v4

    :cond_1
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    move v9, v8

    goto :goto_0

    :cond_2
    move v9, v0

    :goto_0
    const/16 v10, 0x2b

    if-nez v9, :cond_3

    if-ne v6, v10, :cond_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v2, :cond_4

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    goto :goto_1

    :cond_4
    move v6, v0

    :goto_1
    if-nez v6, :cond_5

    return-wide v4

    :cond_5
    const/16 v11, 0x66

    const/16 v12, 0x49

    if-lt v6, v12, :cond_9

    const/16 v0, 0x4e

    if-ne v6, v0, :cond_6

    add-int/lit8 v6, v3, 0x2

    if-ge v6, v2, :cond_8

    add-int/lit8 v7, v3, 0x1

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-ne v7, v8, :cond_8

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_8

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1, v3, v2}, La2/b;->f(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-virtual/range {p0 .. p0}, La2/b;->b()J

    move-result-wide v4

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v3, 0x7

    if-ge v0, v2, :cond_8

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_8

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x6e

    if-ne v6, v7, :cond_8

    add-int/lit8 v6, v3, 0x2

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_8

    add-int/lit8 v6, v3, 0x3

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v8, 0x69

    if-ne v6, v8, :cond_8

    add-int/lit8 v6, v3, 0x4

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_8

    add-int/lit8 v6, v3, 0x5

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_8

    add-int/lit8 v6, v3, 0x6

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x74

    if-ne v6, v7, :cond_8

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x79

    if-ne v0, v6, :cond_8

    add-int/lit8 v3, v3, 0x8

    invoke-static {v1, v3, v2}, La2/b;->f(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ne v0, v2, :cond_8

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, La2/b;->c()J

    move-result-wide v0

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, La2/b;->e()J

    move-result-wide v0

    :goto_2
    move-wide v4, v0

    :cond_8
    :goto_3
    return-wide v4

    :cond_9
    const/16 v4, 0x30

    if-ne v6, v4, :cond_a

    move v0, v8

    :cond_a
    const/16 v5, 0x400

    if-eqz v0, :cond_27

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v2, :cond_b

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    const/16 v13, 0x78

    if-eq v6, v13, :cond_c

    const/16 v13, 0x58

    if-ne v6, v13, :cond_27

    :cond_c
    add-int/2addr v3, v8

    const/4 v0, 0x0

    const/4 v6, 0x0

    move v13, v3

    const-wide/16 v14, 0x0

    const/16 v16, -0x1

    :goto_5
    sget-object v17, La2/a;->a:[B

    const/16 v4, 0x7f

    const/16 v18, 0x4

    if-ge v13, v2, :cond_10

    invoke-interface {v1, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-le v0, v4, :cond_d

    const/4 v4, -0x1

    goto :goto_6

    :cond_d
    aget-byte v4, v17, v0

    :goto_6
    if-ltz v4, :cond_e

    shl-long v14, v14, v18

    int-to-long v11, v4

    or-long/2addr v14, v11

    goto :goto_8

    :cond_e
    const/4 v11, -0x4

    if-ne v4, v11, :cond_10

    if-ltz v16, :cond_f

    move v4, v8

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    :goto_7
    or-int/2addr v4, v6

    move v6, v4

    move/from16 v16, v13

    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_10
    sub-int v4, v13, v3

    if-gez v16, :cond_11

    const/4 v11, 0x0

    move/from16 v16, v13

    goto :goto_9

    :cond_11
    add-int/lit8 v4, v4, -0x1

    sub-int v11, v16, v13

    add-int/2addr v11, v8

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    mul-int/lit8 v11, v11, 0x4

    :goto_9
    const/16 v12, 0x70

    if-eq v0, v12, :cond_13

    const/16 v12, 0x50

    if-ne v0, v12, :cond_12

    goto :goto_a

    :cond_12
    const/4 v12, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    move v12, v8

    :goto_b
    if-eqz v12, :cond_1d

    add-int/lit8 v0, v13, 0x1

    if-ge v0, v2, :cond_14

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    goto :goto_c

    :cond_14
    const/16 v21, 0x0

    :goto_c
    move/from16 v5, v21

    if-ne v5, v7, :cond_15

    move v7, v8

    goto :goto_d

    :cond_15
    const/4 v7, 0x0

    :goto_d
    if-nez v7, :cond_16

    if-ne v5, v10, :cond_18

    :cond_16
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_17

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_e

    :cond_17
    const/4 v5, 0x0

    :cond_18
    :goto_e
    invoke-static {v5}, La2/b;->a(C)Z

    move-result v10

    xor-int/2addr v10, v8

    or-int/2addr v10, v6

    const/4 v6, 0x0

    :goto_f
    const/16 v8, 0x400

    if-ge v6, v8, :cond_19

    const/16 v8, 0xa

    move/from16 v23, v3

    const/16 v3, -0x30

    invoke-static {v6, v8, v5, v3}, Landroidx/activity/b;->B(IIII)I

    move-result v3

    move v6, v3

    goto :goto_10

    :cond_19
    move/from16 v23, v3

    :goto_10
    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-ge v0, v2, :cond_1a

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_11

    :cond_1a
    const/4 v5, 0x0

    :goto_11
    invoke-static {v5}, La2/b;->a(C)Z

    move-result v8

    if-nez v8, :cond_1c

    if-eqz v7, :cond_1b

    neg-int v6, v6

    :cond_1b
    add-int/2addr v11, v6

    move v3, v6

    move v6, v10

    goto :goto_12

    :cond_1c
    move/from16 v3, v23

    goto :goto_f

    :cond_1d
    move/from16 v23, v3

    const/4 v3, 0x0

    move v5, v0

    move v0, v13

    :goto_12
    if-ge v0, v2, :cond_1f

    const/16 v7, 0x64

    if-eq v5, v7, :cond_1e

    const/16 v7, 0x44

    if-eq v5, v7, :cond_1e

    const/16 v7, 0x66

    if-eq v5, v7, :cond_1e

    const/16 v7, 0x46

    if-ne v5, v7, :cond_1f

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    :cond_1f
    invoke-static {v1, v0, v2}, La2/b;->f(Ljava/lang/CharSequence;II)I

    move-result v0

    if-nez v6, :cond_26

    if-lt v0, v2, :cond_26

    if-eqz v4, :cond_26

    if-nez v12, :cond_20

    goto :goto_18

    :cond_20
    const/16 v5, 0x10

    if-le v4, v5, :cond_25

    const/4 v0, 0x0

    move/from16 v4, v23

    const-wide/16 v5, 0x0

    :goto_13
    if-ge v4, v13, :cond_23

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x7f

    if-le v7, v8, :cond_21

    const/4 v7, -0x1

    goto :goto_14

    :cond_21
    aget-byte v7, v17, v7

    :goto_14
    if-ltz v7, :cond_22

    const-wide v14, 0xde0b6b3a7640000L

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v8

    if-gez v8, :cond_23

    shl-long v5, v5, v18

    int-to-long v7, v7

    or-long/2addr v5, v7

    goto :goto_15

    :cond_22
    add-int/lit8 v0, v0, 0x1

    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_23
    if-ge v4, v13, :cond_24

    const/4 v7, 0x1

    goto :goto_16

    :cond_24
    const/4 v7, 0x0

    :goto_16
    move-wide v14, v5

    move/from16 v25, v4

    move v4, v0

    move/from16 v0, v25

    goto :goto_17

    :cond_25
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v5

    :goto_17
    sub-int v16, v16, v0

    add-int v16, v16, v4

    add-int v8, v16, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    move-wide v4, v14

    move v6, v11

    invoke-virtual/range {v0 .. v8}, La2/b;->h(Ljava/lang/CharSequence;IZJIZI)J

    move-result-wide v0

    goto :goto_19

    :cond_26
    :goto_18
    const-wide/16 v0, -0x1

    :goto_19
    return-wide v0

    :cond_27
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    const-wide/16 v7, 0x0

    const/4 v10, -0x1

    :goto_1a
    const/16 v11, 0x2e

    const-wide/16 v12, 0x30

    const-wide/16 v14, 0xa

    if-ge v6, v2, :cond_2e

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, La2/b;->a(C)Z

    move-result v16

    if-eqz v16, :cond_28

    mul-long/2addr v7, v14

    int-to-long v14, v4

    add-long/2addr v7, v14

    sub-long/2addr v7, v12

    const/4 v11, 0x1

    move/from16 v17, v4

    const-wide/16 v19, 0x0

    goto/16 :goto_1f

    :cond_28
    if-ne v4, v11, :cond_2d

    if-ltz v10, :cond_29

    const/4 v10, 0x1

    goto :goto_1b

    :cond_29
    const/4 v10, 0x0

    :goto_1b
    or-int/2addr v5, v10

    move v10, v6

    :goto_1c
    add-int/lit8 v11, v2, -0x8

    if-ge v10, v11, :cond_2c

    add-int/lit8 v11, v10, 0x1

    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    int-to-long v12, v12

    add-int/lit8 v14, v11, 0x1

    invoke-interface {v1, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    int-to-long v14, v14

    const/16 v16, 0x10

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    add-int/lit8 v14, v11, 0x2

    invoke-interface {v1, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    int-to-long v14, v14

    const/16 v16, 0x20

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    add-int/lit8 v14, v11, 0x3

    invoke-interface {v1, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    int-to-long v14, v14

    const/16 v17, 0x30

    shl-long v14, v14, v17

    or-long/2addr v12, v14

    add-int/lit8 v14, v11, 0x4

    invoke-interface {v1, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    int-to-long v14, v14

    move/from16 v17, v4

    add-int/lit8 v4, v11, 0x5

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move/from16 v18, v5

    int-to-long v4, v4

    const/16 v21, 0x10

    shl-long v4, v4, v21

    or-long/2addr v4, v14

    add-int/lit8 v14, v11, 0x6

    invoke-interface {v1, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    int-to-long v14, v14

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    add-int/lit8 v11, v11, 0x7

    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    int-to-long v14, v11

    const/16 v11, 0x30

    shl-long/2addr v14, v11

    or-long/2addr v4, v14

    const-wide v14, 0x30003000300030L

    sub-long v21, v12, v14

    sub-long v14, v4, v14

    const-wide v23, 0x46004600460046L    # 2.447700077935472E-307

    add-long v12, v12, v23

    or-long v11, v12, v21

    add-long v4, v4, v23

    or-long/2addr v4, v14

    or-long/2addr v4, v11

    const-wide v11, -0x7f007f007f0080L

    and-long/2addr v4, v11

    const-wide/16 v19, 0x0

    cmp-long v4, v4, v19

    if-eqz v4, :cond_2a

    const/4 v4, -0x1

    goto :goto_1d

    :cond_2a
    const-wide v4, 0x3e80064000a0001L

    mul-long/2addr v14, v4

    const/16 v11, 0x30

    ushr-long v12, v14, v11

    long-to-int v12, v12

    mul-long v21, v21, v4

    ushr-long v4, v21, v11

    long-to-int v4, v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/2addr v4, v12

    :goto_1d
    if-gez v4, :cond_2b

    goto :goto_1e

    :cond_2b
    const-wide/32 v11, 0x5f5e100

    mul-long/2addr v7, v11

    int-to-long v4, v4

    add-long/2addr v7, v4

    add-int/lit8 v10, v10, 0x8

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_1c

    :cond_2c
    move/from16 v17, v4

    move/from16 v18, v5

    const-wide/16 v19, 0x0

    :goto_1e
    const/4 v11, 0x1

    move/from16 v5, v18

    move/from16 v25, v10

    move v10, v6

    move/from16 v6, v25

    :goto_1f
    add-int/2addr v6, v11

    move/from16 v4, v17

    goto/16 :goto_1a

    :cond_2d
    move/from16 v17, v4

    :cond_2e
    const-wide/16 v19, 0x0

    sub-int v11, v6, v3

    if-gez v10, :cond_2f

    const/4 v10, 0x0

    move/from16 v16, v10

    move v10, v6

    goto :goto_20

    :cond_2f
    add-int/lit8 v11, v11, -0x1

    sub-int v16, v10, v6

    add-int/lit8 v16, v16, 0x1

    :goto_20
    const/16 v12, 0x65

    if-eq v4, v12, :cond_31

    const/16 v12, 0x45

    if-ne v4, v12, :cond_30

    goto :goto_21

    :cond_30
    const/4 v12, 0x0

    const/4 v13, 0x1

    move v14, v13

    move v13, v12

    move v12, v5

    move v5, v4

    move v4, v6

    goto :goto_28

    :cond_31
    :goto_21
    add-int/lit8 v4, v6, 0x1

    if-ge v4, v2, :cond_32

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    goto :goto_22

    :cond_32
    const/4 v12, 0x0

    :goto_22
    const/16 v13, 0x2d

    if-ne v12, v13, :cond_33

    const/4 v13, 0x1

    goto :goto_23

    :cond_33
    const/4 v13, 0x0

    :goto_23
    if-nez v13, :cond_34

    const/16 v14, 0x2b

    if-ne v12, v14, :cond_36

    :cond_34
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v2, :cond_35

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    goto :goto_24

    :cond_35
    const/4 v12, 0x0

    :cond_36
    :goto_24
    invoke-static {v12}, La2/b;->a(C)Z

    move-result v14

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    or-int/2addr v5, v14

    const/16 v14, 0x400

    const/4 v15, 0x0

    :goto_25
    if-ge v15, v14, :cond_37

    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v12

    add-int/lit8 v15, v15, -0x30

    :cond_37
    const/4 v12, 0x1

    add-int/2addr v4, v12

    if-ge v4, v2, :cond_38

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    goto :goto_26

    :cond_38
    const/16 v23, 0x0

    :goto_26
    invoke-static/range {v23 .. v23}, La2/b;->a(C)Z

    move-result v24

    if-nez v24, :cond_42

    if-eqz v13, :cond_39

    neg-int v13, v15

    goto :goto_27

    :cond_39
    move v13, v15

    :goto_27
    add-int v16, v16, v13

    move v14, v12

    move v12, v5

    move/from16 v5, v23

    :goto_28
    if-ge v4, v2, :cond_3b

    const/16 v15, 0x64

    if-eq v5, v15, :cond_3a

    const/16 v15, 0x44

    if-eq v5, v15, :cond_3a

    const/16 v15, 0x66

    if-eq v5, v15, :cond_3a

    const/16 v15, 0x46

    if-ne v5, v15, :cond_3b

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    :cond_3b
    invoke-static {v1, v4, v2}, La2/b;->f(Ljava/lang/CharSequence;II)I

    move-result v4

    if-nez v12, :cond_41

    if-lt v4, v2, :cond_41

    if-nez v0, :cond_3c

    if-nez v11, :cond_3c

    goto :goto_2d

    :cond_3c
    const/16 v0, 0x13

    if-le v11, v0, :cond_40

    const/4 v0, 0x0

    move-wide/from16 v11, v19

    :goto_29
    if-ge v3, v6, :cond_3e

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_3d

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v17, 0x30

    const-wide/16 v21, 0xa

    goto :goto_2a

    :cond_3d
    const-wide v7, 0xde0b6b3a7640000L

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v5

    if-gez v5, :cond_3e

    const-wide/16 v21, 0xa

    mul-long v11, v11, v21

    int-to-long v4, v4

    add-long/2addr v11, v4

    const-wide/16 v17, 0x30

    sub-long v11, v11, v17

    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_3e
    if-ge v3, v6, :cond_3f

    goto :goto_2b

    :cond_3f
    const/4 v14, 0x0

    :goto_2b
    sub-int/2addr v10, v3

    add-int/2addr v10, v0

    add-int/2addr v10, v13

    move v8, v10

    move-wide v4, v11

    move v7, v14

    goto :goto_2c

    :cond_40
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-wide v4, v7

    move v7, v0

    move v8, v3

    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v8}, La2/b;->g(Ljava/lang/CharSequence;IZJIZI)J

    move-result-wide v0

    goto :goto_2e

    :cond_41
    :goto_2d
    const-wide/16 v0, -0x1

    :goto_2e
    return-wide v0

    :cond_42
    const-wide/16 v17, 0x30

    const-wide/16 v21, 0xa

    move/from16 v12, v23

    goto/16 :goto_25
.end method

.method public abstract e()J
.end method

.method public abstract g(Ljava/lang/CharSequence;IZJIZI)J
.end method

.method public abstract h(Ljava/lang/CharSequence;IZJIZI)J
.end method
