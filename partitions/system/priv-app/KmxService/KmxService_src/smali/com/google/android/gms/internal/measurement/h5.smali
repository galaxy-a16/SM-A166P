.class public final Lcom/google/android/gms/internal/measurement/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p5;


# static fields
.field public static final l:[I

.field public static final m:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/measurement/g5;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Lcom/google/android/gms/internal/measurement/w4;

.field public final k:Lcom/google/android/gms/internal/measurement/t5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/h5;->l:[I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a6;->k()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/g5;Z[IIILcom/google/android/gms/internal/measurement/w4;Lcom/google/android/gms/internal/measurement/t5;Lcom/google/android/gms/internal/measurement/f4;Lcom/google/android/gms/internal/measurement/c5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/h5;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/h5;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/h5;->d:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/h5;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/h5;->g:[I

    iput p8, p0, Lcom/google/android/gms/internal/measurement/h5;->h:I

    iput p9, p0, Lcom/google/android/gms/internal/measurement/h5;->i:I

    iput-object p10, p0, Lcom/google/android/gms/internal/measurement/h5;->j:Lcom/google/android/gms/internal/measurement/w4;

    iput-object p11, p0, Lcom/google/android/gms/internal/measurement/h5;->k:Lcom/google/android/gms/internal/measurement/t5;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/h5;->e:Lcom/google/android/gms/internal/measurement/g5;

    return-void
.end method

.method public static C(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static k(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final w(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/d4;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/c4;->j(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/d4;->f(ILcom/google/android/gms/internal/measurement/zzjd;)V

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/s5;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/measurement/l4;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    sget-object v1, Lcom/google/android/gms/internal/measurement/s5;->f:Lcom/google/android/gms/internal/measurement/s5;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/s5;->b()Lcom/google/android/gms/internal/measurement/s5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    :cond_0
    return-object v0
.end method

.method public static z(Lcom/google/android/gms/internal/measurement/o5;Lcom/google/android/gms/internal/measurement/w4;Lcom/google/android/gms/internal/measurement/t5;Lcom/google/android/gms/internal/measurement/f4;Lcom/google/android/gms/internal/measurement/c5;)Lcom/google/android/gms/internal/measurement/h5;
    .locals 33

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/o5;->b()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/o5;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_4

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_3

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_2

    :cond_3
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_4
    if-nez v6, :cond_5

    sget-object v6, Lcom/google/android/gms/internal/measurement/h5;->l:[I

    move v8, v3

    move v9, v8

    move v11, v9

    move v12, v11

    move v14, v12

    move/from16 v16, v14

    move-object v13, v6

    move/from16 v6, v16

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_7

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_3
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_6

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_3

    :cond_6
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_7
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_9

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_8
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_9
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_a
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_c
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_e
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_11

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_10
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_11
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_12
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_13
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_15

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_14
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_15
    add-int v16, v14, v12

    add-int v13, v16, v13

    new-array v13, v13, [I

    add-int v16, v4, v4

    add-int v16, v16, v6

    move v6, v4

    move v4, v15

    move/from16 v32, v14

    move v14, v12

    move/from16 v12, v32

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/o5;->d()[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/o5;->a()Lcom/google/android/gms/internal/measurement/g5;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    mul-int/lit8 v7, v11, 0x3

    new-array v7, v7, [I

    add-int/2addr v11, v11

    new-array v11, v11, [Ljava/lang/Object;

    add-int/2addr v14, v12

    move/from16 v20, v12

    move/from16 v21, v14

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_c
    if-ge v4, v2, :cond_32

    add-int/lit8 v22, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_17

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v1, v22

    const/16 v22, 0xd

    :goto_d
    add-int/lit8 v24, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_16

    and-int/lit16 v1, v1, 0x1fff

    shl-int v1, v1, v22

    or-int/2addr v4, v1

    add-int/lit8 v22, v22, 0xd

    move/from16 v1, v24

    goto :goto_d

    :cond_16
    shl-int v1, v1, v22

    or-int/2addr v4, v1

    move/from16 v1, v24

    goto :goto_e

    :cond_17
    move/from16 v1, v22

    :goto_e
    add-int/lit8 v22, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_19

    and-int/lit16 v1, v1, 0x1fff

    move/from16 v5, v22

    const/16 v22, 0xd

    :goto_f
    add-int/lit8 v25, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_18

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v22

    or-int/2addr v1, v2

    add-int/lit8 v22, v22, 0xd

    move/from16 v5, v25

    move/from16 v2, v26

    goto :goto_f

    :cond_18
    shl-int v2, v5, v22

    or-int/2addr v1, v2

    move/from16 v2, v25

    goto :goto_10

    :cond_19
    move/from16 v26, v2

    move/from16 v2, v22

    :goto_10
    and-int/lit16 v5, v1, 0xff

    move/from16 v22, v14

    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_1a

    add-int/lit8 v14, v18, 0x1

    aput v19, v13, v18

    move/from16 v18, v14

    :cond_1a
    sget-object v14, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    move/from16 v29, v12

    const/16 v12, 0x33

    if-lt v5, v12, :cond_22

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v25, v12

    const v12, 0xd800

    if-lt v2, v12, :cond_1c

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v12, v25

    const/16 v25, 0xd

    :goto_11
    add-int/lit8 v30, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move/from16 v31, v9

    const v9, 0xd800

    if-lt v12, v9, :cond_1b

    and-int/lit16 v9, v12, 0x1fff

    shl-int v9, v9, v25

    or-int/2addr v2, v9

    add-int/lit8 v25, v25, 0xd

    move/from16 v12, v30

    move/from16 v9, v31

    goto :goto_11

    :cond_1b
    shl-int v9, v12, v25

    or-int/2addr v2, v9

    move/from16 v12, v30

    goto :goto_12

    :cond_1c
    move/from16 v31, v9

    move/from16 v12, v25

    :goto_12
    add-int/lit8 v9, v5, -0x33

    move/from16 v25, v12

    const/16 v12, 0x9

    if-eq v9, v12, :cond_1e

    const/16 v12, 0x11

    if-ne v9, v12, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v12, 0xc

    if-ne v9, v12, :cond_1f

    if-nez v10, :cond_1f

    div-int/lit8 v9, v19, 0x3

    add-int/lit8 v12, v16, 0x1

    add-int/2addr v9, v9

    const/16 v23, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v16, v15, v16

    aput-object v16, v11, v9

    goto :goto_14

    :cond_1e
    :goto_13
    div-int/lit8 v9, v19, 0x3

    add-int/lit8 v12, v16, 0x1

    add-int/2addr v9, v9

    const/16 v23, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v16, v15, v16

    aput-object v16, v11, v9

    :goto_14
    move/from16 v16, v12

    :cond_1f
    add-int/2addr v2, v2

    aget-object v9, v15, v2

    instance-of v12, v9, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_20

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_20
    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/h5;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v15, v2

    :goto_15
    move v12, v8

    invoke-virtual {v14, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/lit8 v2, v2, 0x1

    aget-object v9, v15, v2

    move/from16 v27, v8

    instance-of v8, v9, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_21

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/h5;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v15, v2

    :goto_16
    invoke-virtual {v14, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v2, v8

    move v9, v2

    move/from16 v28, v25

    move/from16 v8, v27

    const/4 v2, 0x0

    const/16 v23, 0x1

    move/from16 v27, v16

    move/from16 v16, v12

    move-object v12, v15

    goto/16 :goto_21

    :cond_22
    move v12, v8

    move/from16 v31, v9

    add-int/lit8 v8, v16, 0x1

    aget-object v9, v15, v16

    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/h5;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move/from16 v16, v12

    const/16 v12, 0x9

    if-eq v5, v12, :cond_2a

    const/16 v12, 0x11

    if-ne v5, v12, :cond_23

    goto :goto_1b

    :cond_23
    const/16 v12, 0x1b

    if-eq v5, v12, :cond_29

    const/16 v12, 0x31

    if-ne v5, v12, :cond_24

    goto :goto_1a

    :cond_24
    const/16 v12, 0xc

    if-eq v5, v12, :cond_28

    const/16 v12, 0x1e

    if-eq v5, v12, :cond_28

    const/16 v12, 0x2c

    if-ne v5, v12, :cond_25

    goto :goto_19

    :cond_25
    const/16 v12, 0x32

    if-ne v5, v12, :cond_27

    add-int/lit8 v12, v20, 0x1

    aput v19, v13, v20

    div-int/lit8 v20, v19, 0x3

    add-int v20, v20, v20

    add-int/lit8 v27, v8, 0x1

    aget-object v8, v15, v8

    aput-object v8, v11, v20

    and-int/lit16 v8, v1, 0x800

    if-eqz v8, :cond_26

    add-int/lit8 v8, v27, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-object v27, v15, v27

    aput-object v27, v11, v20

    goto :goto_17

    :cond_26
    move/from16 v8, v27

    :goto_17
    move/from16 v20, v12

    :cond_27
    :goto_18
    const/16 v23, 0x1

    goto :goto_1c

    :cond_28
    :goto_19
    if-nez v10, :cond_27

    div-int/lit8 v12, v19, 0x3

    add-int/lit8 v27, v8, 0x1

    add-int/2addr v12, v12

    const/16 v23, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-object v8, v15, v8

    aput-object v8, v11, v12

    move/from16 v8, v27

    goto :goto_18

    :cond_29
    :goto_1a
    div-int/lit8 v12, v19, 0x3

    add-int/lit8 v27, v8, 0x1

    add-int/2addr v12, v12

    const/16 v23, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-object v8, v15, v8

    aput-object v8, v11, v12

    move/from16 v8, v27

    goto :goto_1c

    :cond_2a
    :goto_1b
    const/16 v23, 0x1

    div-int/lit8 v12, v19, 0x3

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v11, v12

    :goto_1c
    move v12, v8

    invoke-virtual {v14, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    and-int/lit16 v9, v1, 0x1000

    move/from16 v27, v12

    const/16 v12, 0x1000

    if-ne v9, v12, :cond_2e

    const/16 v9, 0x11

    if-gt v5, v9, :cond_2e

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v12, 0xd800

    if-lt v2, v12, :cond_2c

    and-int/lit16 v2, v2, 0x1fff

    const/16 v24, 0xd

    :goto_1d
    add-int/lit8 v28, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v12, :cond_2b

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v24

    or-int/2addr v2, v9

    add-int/lit8 v24, v24, 0xd

    move/from16 v9, v28

    goto :goto_1d

    :cond_2b
    shl-int v9, v9, v24

    or-int/2addr v2, v9

    goto :goto_1e

    :cond_2c
    move/from16 v28, v9

    :goto_1e
    add-int v9, v6, v6

    div-int/lit8 v24, v2, 0x20

    add-int v24, v24, v9

    aget-object v9, v15, v24

    instance-of v12, v9, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_2d

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_1f

    :cond_2d
    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/h5;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v15, v24

    :goto_1f
    move-object v12, v15

    invoke-virtual {v14, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v9, v14

    rem-int/lit8 v2, v2, 0x20

    goto :goto_20

    :cond_2e
    move-object v12, v15

    const v9, 0xfffff

    move/from16 v28, v2

    const/4 v2, 0x0

    :goto_20
    const/16 v14, 0x12

    if-lt v5, v14, :cond_2f

    const/16 v14, 0x31

    if-gt v5, v14, :cond_2f

    add-int/lit8 v14, v21, 0x1

    aput v8, v13, v21

    move/from16 v21, v14

    :cond_2f
    :goto_21
    add-int/lit8 v14, v19, 0x1

    aput v4, v7, v19

    add-int/lit8 v4, v14, 0x1

    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_30

    const/high16 v15, 0x20000000

    goto :goto_22

    :cond_30
    const/4 v15, 0x0

    :goto_22
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_31

    const/high16 v1, 0x10000000

    goto :goto_23

    :cond_31
    const/4 v1, 0x0

    :goto_23
    or-int/2addr v1, v15

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v1, v5

    or-int/2addr v1, v8

    aput v1, v7, v14

    add-int/lit8 v19, v4, 0x1

    shl-int/lit8 v1, v2, 0x14

    or-int/2addr v1, v9

    aput v1, v7, v4

    move-object v15, v12

    move/from16 v8, v16

    move/from16 v14, v22

    move/from16 v2, v26

    move/from16 v16, v27

    move/from16 v4, v28

    move/from16 v12, v29

    move/from16 v9, v31

    const v5, 0xd800

    goto/16 :goto_c

    :cond_32
    move/from16 v16, v8

    move/from16 v31, v9

    move/from16 v29, v12

    move/from16 v22, v14

    new-instance v0, Lcom/google/android/gms/internal/measurement/h5;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/o5;->a()Lcom/google/android/gms/internal/measurement/g5;

    move-result-object v9

    move-object v4, v0

    move-object v5, v7

    move-object v6, v11

    move/from16 v7, v16

    move/from16 v8, v31

    move-object v11, v13

    move/from16 v13, v22

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/internal/measurement/h5;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/g5;Z[IIILcom/google/android/gms/internal/measurement/w4;Lcom/google/android/gms/internal/measurement/t5;Lcom/google/android/gms/internal/measurement/f4;Lcom/google/android/gms/internal/measurement/c5;)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const v2, 0xfffff

    move v6, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    array-length v9, v8

    if-ge v4, v9, :cond_5

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v9

    aget v10, v8, v4

    ushr-int/lit8 v11, v9, 0x14

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x11

    const/4 v13, 0x1

    sget-object v14, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    if-gt v11, v12, :cond_0

    add-int/lit8 v12, v4, 0x2

    aget v8, v8, v12

    and-int v12, v8, v2

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v13, v8

    if-eq v12, v6, :cond_1

    int-to-long v6, v12

    invoke-virtual {v14, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v6, v12

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_1
    and-int/2addr v9, v2

    int-to-long v2, v9

    const/16 v9, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_a

    :pswitch_1
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v8

    add-long v10, v2, v2

    shr-long/2addr v2, v9

    xor-long/2addr v2, v10

    goto/16 :goto_12

    :pswitch_2
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    add-int v8, v2, v2

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v8

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v2

    goto/16 :goto_10

    :pswitch_7
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :pswitch_8
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_c

    :pswitch_9
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzjd;

    if-eqz v3, :cond_2

    :goto_3
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjd;

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v8

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    goto/16 :goto_9

    :cond_2
    check-cast v2, Ljava/lang/String;

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->q(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_10

    :pswitch_a
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_e

    :pswitch_b
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_6

    :pswitch_c
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_7

    :pswitch_d
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_4
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->p(I)I

    move-result v2

    goto/16 :goto_10

    :pswitch_e
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_5

    :pswitch_f
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_5
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v8

    goto/16 :goto_12

    :pswitch_10
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_6
    goto/16 :goto_13

    :pswitch_11
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_7
    goto/16 :goto_14

    :pswitch_12
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/h5;->m(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/c5;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_13
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/measurement/q5;->F(ILjava/util/List;Lcom/google/android/gms/internal/measurement/p5;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_14
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->P(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_15
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->N(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_16
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->E(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_17
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->C(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_18
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->A(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_19
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->S(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_1a
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->x(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1b
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->C(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1c
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->E(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1d
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->H(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1e
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->U(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1f
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->J(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_20
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->C(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_21
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->E(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    :goto_8
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/c4;->r(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v8

    add-int/2addr v8, v3

    add-int/2addr v8, v2

    :goto_9
    add-int/2addr v5, v8

    goto/16 :goto_16

    :pswitch_22
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/q5;->O(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_23
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/q5;->M(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_24
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/q5;->z(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_25
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/q5;->R(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_26
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/measurement/q5;->y(Ljava/util/List;I)I

    move-result v2

    goto/16 :goto_15

    :pswitch_27
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/measurement/q5;->L(ILjava/util/List;Lcom/google/android/gms/internal/measurement/p5;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_28
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/measurement/q5;->Q(Ljava/util/List;I)I

    move-result v2

    goto/16 :goto_15

    :pswitch_29
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/q5;->v(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2a
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/q5;->G(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2b
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/q5;->T(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2c
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/q5;->I(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2d
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/q5;->B(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2e
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/q5;->D(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2f
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_a
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/g5;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/measurement/c4;->o(ILcom/google/android/gms/internal/measurement/g5;Lcom/google/android/gms/internal/measurement/p5;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_30
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v8

    add-long v10, v2, v2

    shr-long/2addr v2, v9

    xor-long/2addr v2, v10

    goto/16 :goto_12

    :pswitch_31
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    add-int v8, v2, v2

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v8

    goto :goto_b

    :pswitch_32
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto/16 :goto_14

    :pswitch_33
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto/16 :goto_13

    :pswitch_34
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    goto/16 :goto_f

    :pswitch_35
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    :goto_b
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v2

    goto/16 :goto_10

    :pswitch_36
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_d

    :pswitch_37
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_c
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v3

    invoke-static {v10, v3, v2}, Lcom/google/android/gms/internal/measurement/q5;->K(ILcom/google/android/gms/internal/measurement/p5;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_38
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzjd;

    if-eqz v3, :cond_3

    :goto_d
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjd;

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v8

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    add-int/2addr v5, v8

    goto/16 :goto_16

    :cond_3
    check-cast v2, Ljava/lang/String;

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->q(Ljava/lang/String;)I

    move-result v2

    goto :goto_10

    :pswitch_39
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    :goto_e
    shl-int/lit8 v2, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v2

    add-int/2addr v2, v13

    goto :goto_15

    :pswitch_3a
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto :goto_13

    :pswitch_3b
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto :goto_14

    :pswitch_3c
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_f
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->p(I)I

    move-result v2

    :goto_10
    add-int/2addr v2, v3

    goto :goto_15

    :pswitch_3d
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    goto :goto_11

    :pswitch_3e
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_11
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v8

    :goto_12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/c4;->b(J)I

    move-result v2

    add-int/2addr v2, v8

    goto :goto_15

    :pswitch_3f
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    :goto_13
    shl-int/lit8 v2, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    goto :goto_15

    :pswitch_40
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    :goto_14
    shl-int/lit8 v2, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    :goto_15
    add-int/2addr v5, v2

    :cond_4
    :goto_16
    add-int/lit8 v4, v4, 0x3

    const v2, 0xfffff

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h5;->k:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/t5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/s5;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/t5;->a(Lcom/google/android/gms/internal/measurement/s5;)I

    move-result v0

    add-int/2addr v0, v5

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final B(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v3

    ushr-int/lit8 v4, v3, 0x14

    and-int/lit16 v4, v4, 0xff

    aget v5, v2, v0

    const v6, 0xfffff

    and-int/2addr v3, v6

    int-to-long v6, v3

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzjw;->zzJ:Lcom/google/android/gms/internal/measurement/zzjw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjw;->zza()I

    move-result v3

    if-lt v4, v3, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzjw;->zzW:Lcom/google/android/gms/internal/measurement/zzjw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjw;->zza()I

    move-result v3

    if-gt v4, v3, :cond_0

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_17

    :pswitch_0
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v2

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_15

    :pswitch_4
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_5
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_7

    :pswitch_7
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_9

    :pswitch_8
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzjd;

    if-eqz v3, :cond_1

    goto/16 :goto_b

    :pswitch_a
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_d

    :pswitch_b
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_c
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_15

    :pswitch_d
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_f

    :pswitch_e
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :pswitch_f
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v2

    goto/16 :goto_12

    :pswitch_10
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_11
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_15

    :pswitch_12
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/h5;->m(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/c5;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_13
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/q5;->F(ILjava/util/List;Lcom/google/android/gms/internal/measurement/p5;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_14
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->P(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->N(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_16
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->E(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->C(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_18
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->A(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_19
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->S(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_1a
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->x(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1b
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->C(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1c
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->E(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1d
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->H(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1e
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->U(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1f
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->J(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_20
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->C(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_21
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q5;->E(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    :goto_3
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/c4;->r(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    goto/16 :goto_c

    :pswitch_22
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->O(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_23
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->M(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_24
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->z(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_25
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->R(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_26
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/measurement/q5;->y(Ljava/util/List;I)I

    move-result v2

    goto/16 :goto_16

    :pswitch_27
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/q5;->L(ILjava/util/List;Lcom/google/android/gms/internal/measurement/p5;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_28
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/measurement/q5;->Q(Ljava/util/List;I)I

    move-result v2

    goto/16 :goto_16

    :pswitch_29
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->v(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2a
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->G(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2b
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->T(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2c
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->I(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2d
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->B(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2e
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->D(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2f
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_4
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/g5;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/c4;->o(ILcom/google/android/gms/internal/measurement/g5;Lcom/google/android/gms/internal/measurement/p5;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_30
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v2

    :goto_5
    shl-int/lit8 v4, v5, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v4

    add-long v5, v2, v2

    const/16 v7, 0x3f

    shr-long/2addr v2, v7

    xor-long/2addr v2, v5

    goto/16 :goto_13

    :pswitch_31
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v2

    :goto_6
    shl-int/lit8 v3, v5, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    add-int v4, v2, v2

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v4

    goto :goto_8

    :pswitch_32
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_15

    :pswitch_33
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_34
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_e

    :pswitch_35
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v2

    :goto_7
    shl-int/lit8 v3, v5, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v2

    goto/16 :goto_10

    :pswitch_36
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_9
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b

    :pswitch_37
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_a
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v3

    invoke-static {v5, v3, v2}, Lcom/google/android/gms/internal/measurement/q5;->K(ILcom/google/android/gms/internal/measurement/p5;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_38
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzjd;

    if-eqz v3, :cond_1

    :goto_b
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjd;

    shl-int/lit8 v3, v5, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    :goto_c
    add-int/2addr v1, v4

    goto/16 :goto_17

    :cond_1
    check-cast v2, Ljava/lang/String;

    shl-int/lit8 v3, v5, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->q(Ljava/lang/String;)I

    move-result v2

    goto :goto_10

    :pswitch_39
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_d
    shl-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :pswitch_3a
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_14

    :pswitch_3b
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_15

    :pswitch_3c
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_e
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v2

    :goto_f
    shl-int/lit8 v3, v5, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->p(I)I

    move-result v2

    :goto_10
    add-int/2addr v2, v3

    goto :goto_16

    :pswitch_3d
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_11

    :pswitch_3e
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_11
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v2

    :goto_12
    shl-int/lit8 v4, v5, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v4

    :goto_13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/c4;->b(J)I

    move-result v2

    add-int/2addr v2, v4

    goto :goto_16

    :pswitch_3f
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_14
    shl-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    goto :goto_16

    :pswitch_40
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_15
    shl-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    :goto_16
    add-int/2addr v1, v2

    :cond_2
    :goto_17
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->k:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/t5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/s5;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/t5;->a(Lcom/google/android/gms/internal/measurement/s5;)I

    move-result p0

    add-int/2addr p0, v1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final D(Ljava/lang/Object;IJ)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/h5;->m(I)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, p3, p4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlf;->zze()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlf;->zza()Lcom/google/android/gms/internal/measurement/zzlf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlf;->zzb()Lcom/google/android/gms/internal/measurement/zzlf;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/c5;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzlf;

    invoke-virtual {p2, p1, p3, p4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final E(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/w3;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    add-int/lit8 v7, v6, 0x2

    iget-object v12, v0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    aget v7, v12, v7

    const v12, 0xfffff

    and-int/2addr v7, v12

    int-to-long v12, v7

    const/4 v7, 0x3

    const/4 v15, 0x1

    sget-object v14, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    if-ne v5, v7, :cond_12

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v0

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/d3;->m(Lcom/google/android/gms/internal/measurement/p5;[BIIILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    invoke-virtual {v14, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_0

    invoke-virtual {v14, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_7

    goto/16 :goto_3

    :pswitch_1
    if-eqz v5, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/measurement/w3;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/d3;->n(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_2
    if-eqz v5, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/measurement/w3;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/d3;->h(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_3
    if-nez v5, :cond_12

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/w3;->a:I

    div-int/lit8 v5, v6, 0x3

    add-int/2addr v5, v5

    add-int/2addr v5, v15

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h5;->b:[Ljava/lang/Object;

    aget-object v0, v0, v5

    check-cast v0, Lcom/google/android/gms/internal/measurement/n4;

    if-eqz v0, :cond_4

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/measurement/n4;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/h5;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/s5;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/s5;->c(ILjava/lang/Object;)V

    goto/16 :goto_9

    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_4
    const/4 v2, 0x2

    if-eq v5, v2, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/d3;->b([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_5
    const/4 v2, 0x2

    if-ne v5, v2, :cond_12

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v3, v4, v2, v11}, Lcom/google/android/gms/internal/measurement/d3;->r(Lcom/google/android/gms/internal/measurement/p5;[BIILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    invoke-virtual {v14, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_6

    invoke-virtual {v14, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_7

    :goto_3
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/r4;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v2

    goto :goto_4

    :pswitch_6
    const/4 v0, 0x2

    if-ne v5, v0, :cond_12

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-nez v2, :cond_8

    const-string v2, ""

    :goto_4
    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_8
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_a

    add-int v4, v0, v2

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/b6;->c(II[B)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzc()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_a
    :goto_5
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/measurement/r4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v14, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_6
    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v0

    goto/16 :goto_9

    :pswitch_7
    if-nez v5, :cond_12

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/measurement/w3;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    :goto_7
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_8
    const/4 v0, 0x5

    if-eq v5, v0, :cond_c

    goto/16 :goto_8

    :cond_c
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_9
    if-eq v5, v15, :cond_d

    goto :goto_8

    :cond_d
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    :pswitch_a
    if-eqz v5, :cond_e

    goto :goto_8

    :cond_e
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/measurement/w3;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_b
    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/measurement/w3;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_c
    const/4 v0, 0x5

    if-eq v5, v0, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v14, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_d
    if-eq v5, v15, :cond_11

    goto :goto_8

    :cond_11
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v14, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    :cond_12
    :goto_8
    move v3, v4

    :goto_9
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final F(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/w3;)V
    .locals 32

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    move/from16 v0, p3

    move v2, v8

    move v6, v2

    const/4 v1, -0x1

    const v5, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_17

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/measurement/d3;->H(I[BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/measurement/w3;->a:I

    move v4, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v16, 0x3

    and-int/lit8 v0, v16, 0x7

    iget v10, v15, Lcom/google/android/gms/internal/measurement/h5;->d:I

    iget v7, v15, Lcom/google/android/gms/internal/measurement/h5;->c:I

    if-le v3, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    if-lt v3, v7, :cond_2

    if-gt v3, v10, :cond_2

    invoke-virtual {v15, v3, v2}, Lcom/google/android/gms/internal/measurement/h5;->H(II)I

    move-result v1

    goto :goto_2

    :cond_1
    if-lt v3, v7, :cond_2

    if-gt v3, v10, :cond_2

    invoke-virtual {v15, v3, v8}, Lcom/google/android/gms/internal/measurement/h5;->H(II)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    move v10, v1

    const/4 v7, -0x1

    if-ne v10, v7, :cond_3

    move/from16 v20, v3

    move v2, v4

    move/from16 v28, v5

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v29, v9

    move-object v15, v14

    goto/16 :goto_15

    :cond_3
    add-int/lit8 v1, v10, 0x1

    iget-object v2, v15, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    aget v1, v2, v1

    ushr-int/lit8 v7, v1, 0x14

    and-int/lit16 v7, v7, 0xff

    const v17, 0xfffff

    and-int v8, v1, v17

    move/from16 v20, v3

    move/from16 p3, v4

    int-to-long v3, v8

    const/16 v8, 0x11

    move/from16 v21, v1

    if-gt v7, v8, :cond_d

    add-int/lit8 v8, v10, 0x2

    aget v2, v2, v8

    ushr-int/lit8 v8, v2, 0x14

    const/4 v1, 0x1

    shl-int v8, v1, v8

    const v13, 0xfffff

    and-int/2addr v2, v13

    if-eq v2, v5, :cond_6

    if-eq v5, v13, :cond_4

    move/from16 v23, v2

    int-to-long v1, v5

    invoke-virtual {v9, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v1, v23

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    if-eq v1, v13, :cond_5

    int-to-long v5, v1

    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v6, v2

    :cond_5
    move/from16 v23, v6

    move v6, v1

    goto :goto_4

    :cond_6
    move/from16 v23, v6

    move v6, v5

    :goto_4
    const/4 v1, 0x5

    packed-switch v7, :pswitch_data_0

    move/from16 v7, p3

    move/from16 v24, v13

    move/from16 v13, p4

    goto/16 :goto_f

    :pswitch_0
    move/from16 v5, p3

    if-nez v0, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v7

    iget-wide v0, v11, Lcom/google/android/gms/internal/measurement/w3;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/d3;->n(J)J

    move-result-wide v16

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v23, v8

    move/from16 v24, v13

    move/from16 v13, p4

    goto/16 :goto_c

    :pswitch_1
    move/from16 v5, p3

    if-nez v0, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/w3;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/d3;->h(I)I

    move-result v1

    goto :goto_5

    :pswitch_2
    move/from16 v5, p3

    if-nez v0, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/w3;->a:I

    :goto_5
    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v7, v0

    move/from16 v24, v13

    move/from16 v13, p4

    goto/16 :goto_b

    :pswitch_3
    move/from16 v5, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/d3;->b([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    move/from16 v24, v13

    move/from16 v13, p4

    goto :goto_6

    :pswitch_4
    move/from16 v5, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v0

    move/from16 v24, v13

    move/from16 v13, p4

    invoke-static {v0, v12, v5, v13, v11}, Lcom/google/android/gms/internal/measurement/d3;->r(Lcom/google/android/gms/internal/measurement/p5;[BIILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_6
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    goto :goto_7

    :cond_7
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/r4;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v1

    goto :goto_7

    :cond_8
    move/from16 v24, v13

    move/from16 v13, p4

    goto :goto_9

    :pswitch_5
    move/from16 v5, p3

    move/from16 v24, v13

    const/4 v1, 0x2

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_9

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/d3;->z([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    goto :goto_6

    :cond_9
    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/d3;->B([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    goto :goto_6

    :goto_7
    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_6
    move/from16 v5, p3

    move/from16 v24, v13

    move/from16 v13, p4

    if-nez v0, :cond_b

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/measurement/w3;->b:J

    const-wide/16 v21, 0x0

    cmp-long v1, v1, v21

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    invoke-static {v14, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/a6;->m(Ljava/lang/Object;JZ)V

    goto :goto_a

    :cond_b
    :goto_9
    move v7, v5

    goto/16 :goto_f

    :pswitch_7
    move/from16 v5, p3

    move/from16 v24, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v4, v5, 0x4

    goto/16 :goto_e

    :pswitch_8
    move/from16 v5, p3

    move/from16 v24, v13

    const/4 v1, 0x1

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v16

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v3

    move v7, v5

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_d

    :pswitch_9
    move/from16 v7, p3

    move/from16 v24, v13

    move/from16 v13, p4

    if-nez v0, :cond_c

    invoke-static {v12, v7, v11}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/w3;->a:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    move v7, v0

    goto :goto_b

    :pswitch_a
    move/from16 v7, p3

    move/from16 v24, v13

    move/from16 v13, p4

    if-nez v0, :cond_c

    invoke-static {v12, v7, v11}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v7

    iget-wide v1, v11, Lcom/google/android/gms/internal/measurement/w3;->b:J

    move-object v0, v9

    move-wide/from16 v16, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_b
    or-int v0, v23, v8

    :goto_c
    move v5, v6

    move v6, v0

    move v0, v7

    goto/16 :goto_11

    :pswitch_b
    move/from16 v7, p3

    move/from16 v24, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_c

    invoke-static {v7, v12}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v3, v4, v0}, Lcom/google/android/gms/internal/measurement/a6;->p(Ljava/lang/Object;JF)V

    add-int/lit8 v4, v7, 0x4

    goto :goto_e

    :pswitch_c
    move/from16 v7, p3

    move/from16 v24, v13

    const/4 v1, 0x1

    move/from16 v13, p4

    if-ne v0, v1, :cond_c

    invoke-static {v7, v12}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v3, v4, v0, v1}, Lcom/google/android/gms/internal/measurement/a6;->o(Ljava/lang/Object;JD)V

    :goto_d
    add-int/lit8 v4, v7, 0x8

    :goto_e
    move v7, v4

    goto :goto_b

    :cond_c
    :goto_f
    move/from16 v28, v6

    move v2, v7

    move-object/from16 v29, v9

    move v8, v10

    move-object v15, v14

    move/from16 v6, v23

    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_15

    :cond_d
    move/from16 v8, p3

    const v24, 0xfffff

    const/16 v1, 0x1b

    if-ne v7, v1, :cond_11

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/q4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->c()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xa

    goto :goto_10

    :cond_e
    add-int/2addr v1, v1

    :goto_10
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/q4;->i(I)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_f
    move-object v7, v0

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v4, p4

    move v8, v5

    move-object v5, v7

    move v7, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/d3;->u(Lcom/google/android/gms/internal/measurement/p5;I[BIILcom/google/android/gms/internal/measurement/q4;Lcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    move v6, v7

    move v5, v8

    :goto_11
    move v2, v10

    move/from16 v1, v20

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_10
    move v7, v6

    move/from16 v28, v5

    move/from16 v27, v7

    move v15, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_12

    :cond_11
    move/from16 v31, v6

    move v6, v5

    move/from16 v5, v31

    const/16 v1, 0x31

    if-gt v7, v1, :cond_13

    move/from16 v1, v21

    int-to-long v1, v1

    move/from16 p3, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v25, v3

    move v3, v8

    move/from16 v4, p4

    move/from16 v27, v5

    move/from16 v5, v16

    move/from16 v28, v6

    move/from16 v6, v20

    move/from16 v17, v7

    const/16 v18, -0x1

    move/from16 v7, p3

    move v15, v8

    const/16 v19, 0x0

    move v8, v10

    move-object/from16 v29, v9

    move/from16 v30, v10

    move-wide/from16 v9, v21

    move/from16 v11, v17

    move-wide/from16 v12, v25

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/h5;->G(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    if-eq v0, v15, :cond_12

    move-object/from16 v15, p1

    move/from16 v17, v30

    goto/16 :goto_13

    :cond_12
    move-object/from16 v15, p1

    move v4, v0

    move/from16 v17, v30

    goto/16 :goto_14

    :cond_13
    move/from16 p3, v0

    move-wide/from16 v25, v3

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v17, v7

    move v15, v8

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v1, v21

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v0, 0x32

    move/from16 v9, v17

    if-ne v9, v0, :cond_15

    move/from16 v7, p3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_14

    :goto_12
    move v4, v15

    move/from16 v17, v30

    move-object/from16 v15, p1

    goto :goto_14

    :cond_14
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v10, v25

    move/from16 v13, v30

    invoke-virtual {v14, v15, v13, v10, v11}, Lcom/google/android/gms/internal/measurement/h5;->D(Ljava/lang/Object;IJ)V

    const/4 v0, 0x0

    throw v0

    :cond_15
    move-object/from16 v14, p0

    move/from16 v7, p3

    move v12, v15

    move-wide/from16 v10, v25

    move/from16 v13, v30

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v20

    move v14, v12

    move v12, v13

    move/from16 v17, v13

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/h5;->E(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    if-eq v0, v14, :cond_16

    :goto_13
    move/from16 v2, v17

    move/from16 v6, v27

    goto :goto_16

    :cond_16
    move v4, v0

    :goto_14
    move v2, v4

    move/from16 v8, v17

    move/from16 v6, v27

    :goto_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/h5;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/s5;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d3;->D(I[BIILcom/google/android/gms/internal/measurement/s5;Lcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    move v2, v8

    :goto_16
    move/from16 v5, v28

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v8, v19

    move/from16 v1, v20

    move-object/from16 v9, v29

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_17
    move/from16 v27, v6

    move-object/from16 v29, v9

    move-object v15, v14

    const v1, 0xfffff

    if-eq v5, v1, :cond_18

    int-to-long v1, v5

    move/from16 v6, v27

    move-object/from16 v3, v29

    invoke-virtual {v3, v15, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_18
    move/from16 v1, p4

    if-ne v0, v1, :cond_19

    return-void

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zze()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/w3;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/q4;

    check-cast v12, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/u3;->c()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v13, v13

    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/measurement/q4;->i(I)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v12

    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    if-ne v6, v9, :cond_42

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/d3;->m(Lcom/google/android/gms/internal/measurement/p5;[BIIILcom/google/android/gms/internal/measurement/w3;)I

    move-result v4

    goto/16 :goto_19

    :pswitch_0
    if-ne v6, v14, :cond_4

    check-cast v12, Lcom/google/android/gms/internal/measurement/y4;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    add-int/2addr v1, v0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/w3;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/d3;->n(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/y4;->e(J)V

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    goto/16 :goto_1c

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzf()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_4
    if-nez v6, :cond_42

    check-cast v12, Lcom/google/android/gms/internal/measurement/y4;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    :goto_2
    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/w3;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/d3;->n(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/y4;->e(J)V

    if-ge v0, v5, :cond_6

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-eq v2, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    goto :goto_2

    :cond_6
    :goto_3
    return v0

    :pswitch_1
    if-ne v6, v14, :cond_9

    check-cast v12, Lcom/google/android/gms/internal/measurement/m4;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    add-int/2addr v1, v0

    :goto_4
    if-ge v0, v1, :cond_7

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v2, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/d3;->h(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/m4;->e(I)V

    goto :goto_4

    :cond_7
    if-ne v0, v1, :cond_8

    goto/16 :goto_1c

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzf()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_9
    if-nez v6, :cond_42

    check-cast v12, Lcom/google/android/gms/internal/measurement/m4;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    :goto_5
    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/d3;->h(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/m4;->e(I)V

    if-ge v0, v5, :cond_b

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-eq v2, v4, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    goto :goto_5

    :cond_b
    :goto_6
    return v0

    :pswitch_2
    if-ne v6, v14, :cond_c

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/measurement/d3;->x([BILcom/google/android/gms/internal/measurement/q4;Lcom/google/android/gms/internal/measurement/w3;)I

    move-result v2

    goto :goto_7

    :cond_c
    if-nez v6, :cond_42

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/d3;->J(I[BIILcom/google/android/gms/internal/measurement/q4;Lcom/google/android/gms/internal/measurement/w3;)I

    move-result v2

    :goto_7
    check-cast v1, Lcom/google/android/gms/internal/measurement/l4;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    sget-object v4, Lcom/google/android/gms/internal/measurement/s5;->f:Lcom/google/android/gms/internal/measurement/s5;

    if-ne v3, v4, :cond_d

    goto :goto_8

    :cond_d
    move-object v13, v3

    :goto_8
    div-int/lit8 v3, v8, 0x3

    add-int/2addr v3, v3

    add-int/2addr v3, v10

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/h5;->b:[Ljava/lang/Object;

    aget-object v3, v4, v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/n4;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h5;->k:Lcom/google/android/gms/internal/measurement/t5;

    move/from16 v4, p6

    invoke-static {v4, v12, v3, v13, v0}, Lcom/google/android/gms/internal/measurement/q5;->a(ILcom/google/android/gms/internal/measurement/q4;Lcom/google/android/gms/internal/measurement/n4;Lcom/google/android/gms/internal/measurement/s5;Lcom/google/android/gms/internal/measurement/t5;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v2

    goto/16 :goto_1c

    :cond_e
    check-cast v0, Lcom/google/android/gms/internal/measurement/s5;

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    return v2

    :pswitch_3
    if-ne v6, v14, :cond_42

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-ltz v1, :cond_15

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_14

    if-nez v1, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjd;->zzl([BII)Lcom/google/android/gms/internal/measurement/zzjd;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v1

    :goto_9
    if-ge v0, v5, :cond_13

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-eq v2, v4, :cond_10

    goto :goto_b

    :cond_10
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-ltz v1, :cond_12

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_11

    if-nez v1, :cond_f

    :goto_a
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjd;->zzb:Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzf()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzd()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_13
    :goto_b
    return v0

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzf()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzd()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :pswitch_4
    if-eq v6, v14, :cond_16

    goto/16 :goto_1b

    :cond_16
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/measurement/d3;->u(Lcom/google/android/gms/internal/measurement/p5;I[BIILcom/google/android/gms/internal/measurement/q4;Lcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    return v0

    :pswitch_5
    if-ne v6, v14, :cond_42

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    const-string v1, ""

    if-nez v0, :cond_1b

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-ltz v4, :cond_1a

    if-nez v4, :cond_17

    goto :goto_e

    :cond_17
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/measurement/r4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_c
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v4

    :goto_d
    if-ge v0, v5, :cond_43

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-ne v2, v6, :cond_43

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-ltz v4, :cond_19

    if-nez v4, :cond_18

    :goto_e
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_18
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/measurement/r4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_c

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzd()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzd()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_1b
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-ltz v4, :cond_22

    if-nez v4, :cond_1c

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_f

    :cond_1c
    add-int v6, v0, v4

    invoke-static {v0, v6, v3}, Lcom/google/android/gms/internal/measurement/b6;->c(II[B)Z

    move-result v8

    if-eqz v8, :cond_21

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/measurement/r4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    if-ge v6, v5, :cond_20

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-ne v2, v4, :cond_20

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v6

    iget v0, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-ltz v0, :cond_1f

    if-nez v0, :cond_1d

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1d
    add-int v4, v6, v0

    invoke-static {v6, v4, v3}, Lcom/google/android/gms/internal/measurement/b6;->c(II[B)Z

    move-result v8

    if-eqz v8, :cond_1e

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/measurement/r4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v6, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_f

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzc()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzd()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_20
    move v0, v6

    goto/16 :goto_1c

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzc()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzd()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :pswitch_6
    if-ne v6, v14, :cond_25

    invoke-static {v12}, Landroidx/activity/b;->y(Lcom/google/android/gms/internal/measurement/q4;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_24

    if-ne v0, v1, :cond_23

    goto/16 :goto_1c

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzf()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_24
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    throw v13

    :cond_25
    if-eqz v6, :cond_26

    goto/16 :goto_1b

    :cond_26
    invoke-static {v12}, Landroidx/activity/b;->y(Lcom/google/android/gms/internal/measurement/q4;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    throw v13

    :pswitch_7
    if-ne v6, v14, :cond_29

    check-cast v12, Lcom/google/android/gms/internal/measurement/m4;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    add-int/2addr v1, v0

    :goto_10
    if-ge v0, v1, :cond_27

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/m4;->e(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_10

    :cond_27
    if-ne v0, v1, :cond_28

    goto/16 :goto_1c

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzf()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_29
    if-ne v6, v11, :cond_42

    check-cast v12, Lcom/google/android/gms/internal/measurement/m4;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/measurement/m4;->e(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_11
    if-ge v0, v5, :cond_2b

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-eq v2, v4, :cond_2a

    goto :goto_12

    :cond_2a
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/measurement/m4;->e(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_11

    :cond_2b
    :goto_12
    return v0

    :pswitch_8
    if-ne v6, v14, :cond_2e

    check-cast v12, Lcom/google/android/gms/internal/measurement/y4;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    add-int/2addr v1, v0

    :goto_13
    if-ge v0, v1, :cond_2c

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/y4;->e(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_13

    :cond_2c
    if-ne v0, v1, :cond_2d

    goto/16 :goto_1c

    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzf()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_2e
    if-ne v6, v10, :cond_42

    check-cast v12, Lcom/google/android/gms/internal/measurement/y4;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/google/android/gms/internal/measurement/y4;->e(J)V

    add-int/lit8 v0, v4, 0x8

    :goto_14
    if-ge v0, v5, :cond_30

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-eq v2, v4, :cond_2f

    goto :goto_15

    :cond_2f
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/y4;->e(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_14

    :cond_30
    :goto_15
    return v0

    :pswitch_9
    if-ne v6, v14, :cond_31

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/measurement/d3;->x([BILcom/google/android/gms/internal/measurement/q4;Lcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    goto/16 :goto_1c

    :cond_31
    if-eqz v6, :cond_32

    goto/16 :goto_1b

    :cond_32
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/measurement/d3;->J(I[BIILcom/google/android/gms/internal/measurement/q4;Lcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    return v0

    :pswitch_a
    if-ne v6, v14, :cond_35

    check-cast v12, Lcom/google/android/gms/internal/measurement/y4;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    add-int/2addr v1, v0

    :goto_16
    if-ge v0, v1, :cond_33

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/w3;->b:J

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/y4;->e(J)V

    goto :goto_16

    :cond_33
    if-ne v0, v1, :cond_34

    goto/16 :goto_1c

    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzf()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_35
    if-nez v6, :cond_42

    check-cast v12, Lcom/google/android/gms/internal/measurement/y4;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    :goto_17
    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/w3;->b:J

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/y4;->e(J)V

    if-ge v0, v5, :cond_37

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-eq v2, v4, :cond_36

    goto :goto_18

    :cond_36
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    goto :goto_17

    :cond_37
    :goto_18
    return v0

    :pswitch_b
    if-ne v6, v14, :cond_3a

    invoke-static {v12}, Landroidx/activity/b;->y(Lcom/google/android/gms/internal/measurement/q4;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_39

    if-ne v0, v1, :cond_38

    goto/16 :goto_1c

    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzf()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_39
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v13

    :cond_3a
    if-eq v6, v11, :cond_3b

    goto :goto_1b

    :cond_3b
    invoke-static {v12}, Landroidx/activity/b;->y(Lcom/google/android/gms/internal/measurement/q4;)V

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v13

    :pswitch_c
    if-ne v6, v14, :cond_3e

    invoke-static {v12}, Landroidx/activity/b;->y(Lcom/google/android/gms/internal/measurement/q4;)V

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_3d

    if-ne v0, v1, :cond_3c

    goto :goto_1c

    :cond_3c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zzf()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_3d
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v13

    :cond_3e
    if-eq v6, v10, :cond_3f

    goto :goto_1b

    :cond_3f
    invoke-static {v12}, Landroidx/activity/b;->y(Lcom/google/android/gms/internal/measurement/q4;)V

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v13

    :goto_19
    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_41

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/w3;->a:I

    if-eq v2, v8, :cond_40

    goto :goto_1a

    :cond_40
    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/d3;->m(Lcom/google/android/gms/internal/measurement/p5;[BIIILcom/google/android/gms/internal/measurement/w3;)I

    move-result v4

    goto :goto_19

    :cond_41
    :goto_1a
    return v4

    :cond_42
    :goto_1b
    move v0, v4

    :cond_43
    :goto_1c
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final H(II)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, p0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h5;->h:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/h5;->g:[I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/h5;->i:I

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzlf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlf;->zzc()V

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/gms/internal/measurement/a6;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, v1, v2

    int-to-long v3, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/h5;->j:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/measurement/w4;->a(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->k:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/measurement/l4;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/s5;->e:Z

    return-void
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/h5;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/h5;->B(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/h5;->A(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v3, v3

    aget v1, v1, v0

    ushr-int/lit8 v2, v2, 0x14

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->p(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/google/android/gms/internal/measurement/a6;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->r(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/q5;->a:Ljava/lang/Class;

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/c5;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzlf;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/measurement/a6;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/h5;->j:Lcom/google/android/gms/internal/measurement/w4;

    invoke-virtual {v1, v3, v4, p1, p2}, Lcom/google/android/gms/internal/measurement/w4;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_c
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->o(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/measurement/a6;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_e
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/a6;->u(JLjava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/a6;->m(Ljava/lang/Object;JZ)V

    goto :goto_5

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_3
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/measurement/a6;->q(IJLjava/lang/Object;)V

    goto :goto_5

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_4
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/a6;->r(Ljava/lang/Object;JJ)V

    goto :goto_5

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/a6;->f(JLjava/lang/Object;)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/a6;->p(Ljava/lang/Object;JF)V

    goto :goto_5

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/a6;->e(JLjava/lang/Object;)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/a6;->o(Ljava/lang/Object;JD)V

    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/h5;->q(ILjava/lang/Object;)V

    :cond_0
    :goto_6
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->k:Lcom/google/android/gms/internal/measurement/t5;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/q5;->b(Lcom/google/android/gms/internal/measurement/t5;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->e:Lcom/google/android/gms/internal/measurement/g5;

    check-cast p0, Lcom/google/android/gms/internal/measurement/l4;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/l4;->k(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/d4;)V
    .locals 10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/h5;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v4

    aget v5, v0, v3

    ushr-int/lit8 v6, v4, 0x14

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x1

    const v8, 0xfffff

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v6

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v6

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_5

    :pswitch_5
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_6

    :pswitch_6
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_7

    :pswitch_7
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_9

    :pswitch_9
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_a

    :pswitch_a
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto/16 :goto_b

    :pswitch_b
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_c

    :pswitch_c
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v6

    goto/16 :goto_d

    :pswitch_d
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_e

    :pswitch_e
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v6

    goto/16 :goto_f

    :pswitch_f
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v6

    goto/16 :goto_10

    :pswitch_10
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto/16 :goto_11

    :pswitch_11
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto/16 :goto_12

    :pswitch_12
    and-int/2addr v4, v8

    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_13

    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/h5;->m(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_13
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v6

    invoke-static {v5, v4, p2, v6}, Lcom/google/android/gms/internal/measurement/q5;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Lcom/google/android/gms/internal/measurement/p5;)V

    goto/16 :goto_13

    :pswitch_14
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_15
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_16
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_17
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_18
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_19
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_1a
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_1b
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_1c
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_1d
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_1e
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->t(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_1f
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_20
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_21
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/measurement/q5;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_22
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_23
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_24
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_25
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_26
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_27
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_28
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/measurement/q5;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;)V

    goto/16 :goto_13

    :pswitch_29
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v6

    invoke-static {v5, v4, p2, v6}, Lcom/google/android/gms/internal/measurement/q5;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Lcom/google/android/gms/internal/measurement/p5;)V

    goto/16 :goto_13

    :pswitch_2a
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/measurement/q5;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;)V

    goto/16 :goto_13

    :pswitch_2b
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_2c
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_2d
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_2e
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_2f
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->t(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_30
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_31
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_32
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/measurement/q5;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_13

    :pswitch_33
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v6

    invoke-virtual {p2, v5, v6, v4}, Lcom/google/android/gms/internal/measurement/d4;->l(ILcom/google/android/gms/internal/measurement/p5;Ljava/lang/Object;)V

    goto/16 :goto_13

    :pswitch_34
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v6

    :goto_2
    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/d4;->b(IJ)V

    goto/16 :goto_13

    :pswitch_35
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    :goto_3
    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/measurement/d4;->a(II)V

    goto/16 :goto_13

    :pswitch_36
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v6

    :goto_4
    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/d4;->q(IJ)V

    goto/16 :goto_13

    :pswitch_37
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    :goto_5
    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/measurement/d4;->p(II)V

    goto/16 :goto_13

    :pswitch_38
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    :goto_6
    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/measurement/d4;->h(II)V

    goto/16 :goto_13

    :pswitch_39
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    :goto_7
    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/measurement/d4;->c(II)V

    goto/16 :goto_13

    :pswitch_3a
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_8
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/measurement/d4;->f(ILcom/google/android/gms/internal/measurement/zzjd;)V

    goto/16 :goto_13

    :pswitch_3b
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_9
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v6

    invoke-virtual {p2, v5, v6, v4}, Lcom/google/android/gms/internal/measurement/d4;->o(ILcom/google/android/gms/internal/measurement/p5;Ljava/lang/Object;)V

    goto/16 :goto_13

    :pswitch_3c
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_a
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/measurement/h5;->w(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/d4;)V

    goto/16 :goto_13

    :pswitch_3d
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->u(JLjava/lang/Object;)Z

    move-result v4

    :goto_b
    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/measurement/d4;->e(IZ)V

    goto/16 :goto_13

    :pswitch_3e
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    :goto_c
    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/measurement/d4;->i(II)V

    goto :goto_13

    :pswitch_3f
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v6

    :goto_d
    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/d4;->j(IJ)V

    goto :goto_13

    :pswitch_40
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    :goto_e
    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/measurement/d4;->m(II)V

    goto :goto_13

    :pswitch_41
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v6

    :goto_f
    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/d4;->d(IJ)V

    goto :goto_13

    :pswitch_42
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v6

    :goto_10
    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/d4;->n(IJ)V

    goto :goto_13

    :pswitch_43
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->f(JLjava/lang/Object;)F

    move-result v4

    :goto_11
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/d4;->k(FI)V

    goto :goto_13

    :pswitch_44
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->e(JLjava/lang/Object;)D

    move-result-wide v6

    :goto_12
    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/d4;->g(ID)V

    :cond_1
    :goto_13
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->k:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/measurement/l4;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/s5;->d(Lcom/google/android/gms/internal/measurement/d4;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->s(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/d4;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/w3;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/h5;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/measurement/h5;->F(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/w3;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/h5;->x(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/w3;)I

    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    ushr-int/lit8 v4, v4, 0x14

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v4, v3, 0x2

    aget v4, v0, v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v8

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    if-ne v8, v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/q5;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/q5;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/q5;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/q5;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/q5;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/q5;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->u(JLjava/lang/Object;)Z

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->u(JLjava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_2

    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->f(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->f(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->t(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->e(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/a6;->e(JLjava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->k:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/measurement/l4;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    check-cast p2, Lcom/google/android/gms/internal/measurement/l4;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/s5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/measurement/h5;->h:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_f

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/h5;->g:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_5

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v7

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    ushr-int/lit8 v10, v9, 0x14

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x9

    if-eq v10, v11, :cond_b

    const/16 v11, 0x11

    if-eq v10, v11, :cond_b

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_9

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_8

    const/16 v6, 0x44

    if-eq v10, v6, :cond_8

    const/16 v6, 0x31

    if-eq v10, v6, :cond_9

    const/16 v6, 0x32

    if-eq v10, v6, :cond_6

    goto/16 :goto_5

    :cond_6
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzlf;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/h5;->m(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/measurement/p5;->h(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v1

    :cond_9
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v5

    move v7, v1

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/measurement/p5;->h(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    return v1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    if-ne v3, v0, :cond_c

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_4

    :cond_c
    and-int/2addr v7, v4

    if-eqz v7, :cond_d

    goto :goto_4

    :cond_d
    move v6, v1

    :goto_4
    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/measurement/p5;->h(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v1

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return v6
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    ushr-int/lit8 v4, v4, 0x14

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto/16 :goto_7

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_b

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v4

    goto/16 :goto_a

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_8

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_9

    :pswitch_12
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_4

    :goto_3
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_b

    :pswitch_14
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_5

    :cond_0
    const/16 v4, 0x25

    :goto_5
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v4

    goto :goto_c

    :goto_6
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_b

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->u(JLjava/lang/Object;)Z

    move-result v4

    :goto_7
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/r4;->a(Z)I

    move-result v4

    goto :goto_b

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result v4

    goto :goto_b

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide v4

    goto :goto_a

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->f(JLjava/lang/Object;)F

    move-result v4

    :goto_8
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_b

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/a6;->e(JLjava/lang/Object;)D

    move-result-wide v4

    :goto_9
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_a
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/r4;->b(J)I

    move-result v4

    :goto_b
    add-int/2addr v4, v3

    move v3, v4

    :cond_1
    :goto_c
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v3, v3, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->k:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/measurement/l4;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/s5;->hashCode()I

    move-result p0

    add-int/2addr p0, v3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final l(I)Lcom/google/android/gms/internal/measurement/p5;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/p5;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/m5;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/m5;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final m(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final o(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, p3}, Lcom/google/android/gms/internal/measurement/r4;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p3

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    :goto_1
    invoke-static {v0, v1, p2, p3}, Lcom/google/android/gms/internal/measurement/a6;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->q(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final p(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    aget v1, v1, p1

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v3, p3}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/r4;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p3

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    :goto_2
    invoke-static {v2, v3, p2, p3}, Lcom/google/android/gms/internal/measurement/a6;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->r(IILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final q(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result p1

    ushr-int/lit8 p0, p0, 0x14

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->q(IJLjava/lang/Object;)V

    return-void
.end method

.method public final r(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/measurement/a6;->q(IJLjava/lang/Object;)V

    return-void
.end method

.method public final s(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/d4;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    array-length v4, v3

    const v5, 0xfffff

    move v8, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v4, :cond_5

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v10

    aget v11, v3, v7

    ushr-int/lit8 v12, v10, 0x14

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x11

    const/4 v14, 0x1

    sget-object v15, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    if-gt v12, v13, :cond_1

    add-int/lit8 v13, v7, 0x2

    aget v13, v3, v13

    and-int v6, v13, v5

    if-eq v6, v8, :cond_0

    int-to-long v8, v6

    invoke-virtual {v15, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    move v8, v6

    :cond_0
    ushr-int/lit8 v6, v13, 0x14

    shl-int v6, v14, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-int/2addr v10, v5

    move/from16 v16, v6

    int-to-long v5, v10

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v6

    invoke-virtual {v2, v11, v6, v5}, Lcom/google/android/gms/internal/measurement/d4;->l(ILcom/google/android/gms/internal/measurement/p5;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->b(IJ)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->a(II)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->q(IJ)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->p(II)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->h(II)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->c(II)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->f(ILcom/google/android/gms/internal/measurement/zzjd;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v6

    invoke-virtual {v2, v11, v6, v5}, Lcom/google/android/gms/internal/measurement/d4;->o(ILcom/google/android/gms/internal/measurement/p5;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5, v2}, Lcom/google/android/gms/internal/measurement/h5;->w(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/d4;)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->e(IZ)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->i(II)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->j(IJ)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->C(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->m(II)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->d(IJ)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/h5;->k(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->n(IJ)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2, v5, v11}, Lcom/google/android/gms/internal/measurement/d4;->k(FI)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {v0, v11, v7, v1}, Lcom/google/android/gms/internal/measurement/h5;->v(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->g(ID)V

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/h5;->m(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_13
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v6

    invoke-static {v10, v5, v2, v6}, Lcom/google/android/gms/internal/measurement/q5;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Lcom/google/android/gms/internal/measurement/p5;)V

    goto/16 :goto_2

    :pswitch_14
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_15
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_16
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_17
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_18
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_19
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_1a
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_1b
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_1c
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_1d
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_1e
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->t(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_2

    :pswitch_1f
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto :goto_2

    :pswitch_20
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto :goto_2

    :pswitch_21
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v14}, Lcom/google/android/gms/internal/measurement/q5;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto :goto_2

    :pswitch_22
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/q5;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto :goto_2

    :pswitch_23
    const/4 v11, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/q5;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto :goto_2

    :pswitch_24
    const/4 v11, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/q5;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto :goto_2

    :pswitch_25
    const/4 v11, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/q5;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto :goto_2

    :pswitch_26
    const/4 v11, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/q5;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto :goto_2

    :pswitch_27
    const/4 v11, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v11}, Lcom/google/android/gms/internal/measurement/q5;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    :cond_3
    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_3

    :pswitch_28
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;)V

    goto :goto_2

    :pswitch_29
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v6

    invoke-static {v10, v5, v2, v6}, Lcom/google/android/gms/internal/measurement/q5;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Lcom/google/android/gms/internal/measurement/p5;)V

    goto :goto_2

    :pswitch_2a
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2}, Lcom/google/android/gms/internal/measurement/q5;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;)V

    goto :goto_2

    :pswitch_2b
    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/q5;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_3

    :pswitch_2c
    const/4 v12, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/q5;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_3

    :pswitch_2d
    const/4 v12, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/q5;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_3

    :pswitch_2e
    const/4 v12, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/q5;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_3

    :pswitch_2f
    const/4 v12, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/q5;->t(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_3

    :pswitch_30
    const/4 v12, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/q5;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_3

    :pswitch_31
    const/4 v12, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/q5;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_3

    :pswitch_32
    const/4 v12, 0x0

    aget v10, v3, v7

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v10, v5, v2, v12}, Lcom/google/android/gms/internal/measurement/q5;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d4;Z)V

    goto/16 :goto_3

    :pswitch_33
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v6

    invoke-virtual {v2, v11, v6, v5}, Lcom/google/android/gms/internal/measurement/d4;->l(ILcom/google/android/gms/internal/measurement/p5;Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_34
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->b(IJ)V

    goto/16 :goto_3

    :pswitch_35
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->a(II)V

    goto/16 :goto_3

    :pswitch_36
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->q(IJ)V

    goto/16 :goto_3

    :pswitch_37
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->p(II)V

    goto/16 :goto_3

    :pswitch_38
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->h(II)V

    goto/16 :goto_3

    :pswitch_39
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->c(II)V

    goto/16 :goto_3

    :pswitch_3a
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->f(ILcom/google/android/gms/internal/measurement/zzjd;)V

    goto/16 :goto_3

    :pswitch_3b
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v6

    invoke-virtual {v2, v11, v6, v5}, Lcom/google/android/gms/internal/measurement/d4;->o(ILcom/google/android/gms/internal/measurement/p5;Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3c
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v5, v2}, Lcom/google/android/gms/internal/measurement/h5;->w(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/d4;)V

    goto/16 :goto_3

    :pswitch_3d
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/a6;->u(JLjava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->e(IZ)V

    goto :goto_3

    :pswitch_3e
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->i(II)V

    goto :goto_3

    :pswitch_3f
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->j(IJ)V

    goto :goto_3

    :pswitch_40
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v2, v11, v5}, Lcom/google/android/gms/internal/measurement/d4;->m(II)V

    goto :goto_3

    :pswitch_41
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->d(IJ)V

    goto :goto_3

    :pswitch_42
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-virtual {v15, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->n(IJ)V

    goto :goto_3

    :pswitch_43
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/a6;->f(JLjava/lang/Object;)F

    move-result v5

    invoke-virtual {v2, v5, v11}, Lcom/google/android/gms/internal/measurement/d4;->k(FI)V

    goto :goto_3

    :pswitch_44
    const/4 v12, 0x0

    and-int v10, v9, v16

    if-eqz v10, :cond_4

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/measurement/a6;->e(JLjava/lang/Object;)D

    move-result-wide v5

    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/gms/internal/measurement/d4;->g(ID)V

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x3

    const v5, 0xfffff

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h5;->k:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/t5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/s5;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/t5;->c(Lcom/google/android/gms/internal/measurement/s5;Lcom/google/android/gms/internal/measurement/d4;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/h5;->u(ILjava/lang/Object;)Z

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzjd;->zzb:Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjd;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/zzjd;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzjd;->zzb:Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzjd;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->u(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->f(JLjava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/a6;->e(JLjava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result p0

    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v6, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/measurement/a6;->g(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/w3;)I
    .locals 33

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v12, p4

    move-object/from16 v13, p6

    sget-object v11, Lcom/google/android/gms/internal/measurement/h5;->m:Lsun/misc/Unsafe;

    move-object/from16 v4, p2

    move/from16 v0, p3

    move/from16 v1, p5

    move v6, v12

    move-object v3, v13

    const/4 v2, -0x1

    const v5, 0xfffff

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    iget-object v8, v15, Lcom/google/android/gms/internal/measurement/h5;->b:[Ljava/lang/Object;

    const/16 v19, 0x0

    iget-object v10, v15, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    if-ge v0, v6, :cond_21

    add-int/lit8 v9, v0, 0x1

    aget-byte v0, v4, v0

    if-gez v0, :cond_0

    invoke-static {v0, v4, v9, v3}, Lcom/google/android/gms/internal/measurement/d3;->H(I[BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v9, v3, Lcom/google/android/gms/internal/measurement/w3;->a:I

    move/from16 v32, v9

    move v9, v0

    move/from16 v0, v32

    :cond_0
    move/from16 v22, v6

    ushr-int/lit8 v6, v0, 0x3

    move-object/from16 v23, v3

    and-int/lit8 v3, v0, 0x7

    move/from16 v17, v0

    iget v0, v15, Lcom/google/android/gms/internal/measurement/h5;->d:I

    move/from16 v24, v1

    iget v1, v15, Lcom/google/android/gms/internal/measurement/h5;->c:I

    const/4 v12, 0x3

    if-le v6, v2, :cond_2

    div-int/lit8 v2, v16, 0x3

    if-lt v6, v1, :cond_1

    if-gt v6, v0, :cond_1

    invoke-virtual {v15, v6, v2}, Lcom/google/android/gms/internal/measurement/h5;->H(II)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    move v1, v0

    const/4 v0, -0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    if-lt v6, v1, :cond_3

    if-gt v6, v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v15, v6, v2}, Lcom/google/android/gms/internal/measurement/h5;->H(II)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    const/4 v0, -0x1

    :goto_2
    move v1, v0

    const/4 v0, -0x1

    :goto_3
    if-ne v1, v0, :cond_4

    move/from16 v21, v0

    move/from16 v18, v2

    move/from16 v22, v5

    move-object/from16 v20, v8

    move-object/from16 v25, v10

    move-object/from16 v31, v11

    move-object v15, v14

    move/from16 v8, v17

    const/16 v16, 0x1

    move/from16 v17, v6

    move/from16 v6, v24

    move v2, v9

    move/from16 v9, v18

    goto/16 :goto_1c

    :cond_4
    add-int/lit8 v16, v1, 0x1

    aget v12, v10, v16

    ushr-int/lit8 v0, v12, 0x14

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v6

    const v6, 0xfffff

    and-int v2, v12, v6

    move/from16 v25, v7

    int-to-long v6, v2

    const/16 v2, 0x11

    move/from16 v26, v12

    if-gt v0, v2, :cond_16

    add-int/lit8 v2, v1, 0x2

    aget v2, v10, v2

    ushr-int/lit8 v23, v2, 0x14

    const/16 v27, 0x1

    shl-int v23, v27, v23

    const v12, 0xfffff

    and-int/2addr v2, v12

    if-eq v2, v5, :cond_6

    if-eq v5, v12, :cond_5

    int-to-long v12, v5

    move/from16 v5, v25

    invoke-virtual {v11, v14, v12, v13, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v12, v2

    invoke-virtual {v11, v14, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v12, v2

    move v13, v5

    goto :goto_4

    :cond_6
    move/from16 v12, v25

    move v13, v12

    move v12, v5

    :goto_4
    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_0

    move-object/from16 v5, p6

    move v4, v1

    move-object/from16 v20, v8

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-ne v3, v0, :cond_14

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v0

    shl-int/lit8 v1, v21, 0x3

    or-int/lit8 v8, v1, 0x4

    move-object/from16 v1, p2

    move v2, v9

    move/from16 v3, p4

    move v9, v4

    move v4, v8

    move-object v8, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d3;->m(Lcom/google/android/gms/internal/measurement/p5;[BIIILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    and-int v1, v13, v23

    if-nez v1, :cond_15

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    goto/16 :goto_13

    :pswitch_0
    if-nez v3, :cond_7

    move-object/from16 v5, p6

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v8

    iget-wide v2, v5, Lcom/google/android/gms/internal/measurement/w3;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/d3;->n(J)J

    move-result-wide v9

    move/from16 v2, v17

    const/16 v16, -0x1

    move-object v0, v11

    move v3, v1

    move-object/from16 v1, p1

    move v15, v3

    move/from16 v17, v12

    const/16 v18, 0x0

    move v12, v2

    move-wide v2, v6

    move-object v6, v4

    move-object v7, v5

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v13, v23

    move-object v4, v6

    move-object v5, v7

    goto/16 :goto_7

    :cond_7
    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    move-object/from16 v15, p0

    move v4, v1

    move-object/from16 v20, v8

    const/4 v2, 0x1

    move-object/from16 v8, p6

    goto/16 :goto_16

    :pswitch_1
    move-object/from16 v5, p6

    move v15, v1

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-nez v3, :cond_a

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v5, Lcom/google/android/gms/internal/measurement/w3;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/d3;->h(I)I

    move-result v1

    :cond_8
    :goto_5
    invoke-virtual {v11, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_2
    move-object/from16 v5, p6

    move v15, v1

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-nez v3, :cond_a

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget v1, v5, Lcom/google/android/gms/internal/measurement/w3;->a:I

    div-int/lit8 v2, v15, 0x3

    add-int/2addr v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-object v2, v8, v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n4;

    if-eqz v2, :cond_8

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/n4;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/h5;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/s5;

    move-result-object v2

    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Lcom/google/android/gms/internal/measurement/s5;->c(ILjava/lang/Object;)V

    move v7, v13

    goto :goto_8

    :pswitch_3
    move-object/from16 v5, p6

    move v15, v1

    const/4 v0, 0x2

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-ne v3, v0, :cond_a

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/d3;->b([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget-object v1, v5, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    invoke-virtual {v11, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    move v8, v0

    or-int v0, v13, v23

    :goto_7
    move v7, v0

    move v0, v8

    :goto_8
    move/from16 v6, p4

    move/from16 v1, p5

    move-object v3, v5

    move-object v13, v3

    move/from16 v16, v15

    move/from16 v5, v17

    move/from16 v2, v21

    move-object/from16 v15, p0

    move/from16 v17, v12

    move v12, v6

    goto/16 :goto_0

    :cond_a
    move-object/from16 v20, v8

    move v4, v15

    const/4 v2, 0x1

    move-object/from16 v15, p0

    goto/16 :goto_12

    :pswitch_4
    move-object/from16 v5, p6

    move v15, v1

    const/4 v0, 0x2

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-ne v3, v0, :cond_c

    move v1, v15

    move-object/from16 v15, p0

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v4, v9, v2, v5}, Lcom/google/android/gms/internal/measurement/d3;->r(Lcom/google/android/gms/internal/measurement/p5;[BIILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    and-int v3, v13, v23

    if-nez v3, :cond_b

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    goto :goto_9

    :cond_b
    invoke-virtual {v11, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/measurement/r4;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v3

    :goto_9
    move/from16 v22, v2

    goto :goto_b

    :cond_c
    move/from16 v2, p4

    move v1, v15

    move-object/from16 v15, p0

    goto/16 :goto_e

    :pswitch_5
    move/from16 v2, p4

    move-object/from16 v5, p6

    const/4 v0, 0x2

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-ne v3, v0, :cond_f

    const/high16 v0, 0x20000000

    and-int v0, v26, v0

    if-nez v0, :cond_d

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/d3;->z([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    goto :goto_a

    :cond_d
    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/d3;->B([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    :goto_a
    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    :goto_b
    invoke-virtual {v11, v14, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :pswitch_6
    move/from16 v2, p4

    move-object/from16 v5, p6

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-nez v3, :cond_f

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    iget-wide v8, v5, Lcom/google/android/gms/internal/measurement/w3;->b:J

    const-wide/16 v19, 0x0

    cmp-long v3, v8, v19

    if-eqz v3, :cond_e

    const/4 v10, 0x1

    goto :goto_c

    :cond_e
    move/from16 v10, v18

    :goto_c
    invoke-static {v14, v6, v7, v10}, Lcom/google/android/gms/internal/measurement/a6;->m(Ljava/lang/Object;JZ)V

    :goto_d
    or-int v7, v13, v23

    move/from16 v16, v1

    move-object v3, v5

    move-object v13, v3

    move/from16 v5, v17

    move/from16 v6, v22

    move/from16 v1, p5

    move/from16 v17, v12

    move v12, v2

    move/from16 v2, v21

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v5, p6

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-ne v3, v2, :cond_f

    invoke-static {v9, v4}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v0

    invoke-virtual {v11, v14, v6, v7, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v9, v9, 0x4

    or-int v7, v13, v23

    move-object v3, v5

    move-object v8, v3

    move v0, v9

    move/from16 v5, v17

    move/from16 v17, v21

    move/from16 v6, v22

    const v21, 0xfffff

    move v9, v1

    goto/16 :goto_18

    :cond_f
    :goto_e
    move v4, v1

    goto :goto_f

    :pswitch_8
    move-object/from16 v5, p6

    const/4 v0, 0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-ne v3, v0, :cond_10

    invoke-static {v9, v4}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v19

    move-object v0, v11

    move v8, v1

    move-object/from16 v1, p1

    move-wide v2, v6

    move-object v7, v4

    move-object v6, v5

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v9, v9, 0x8

    move-object v5, v6

    move v4, v8

    move-object v8, v7

    goto/16 :goto_11

    :cond_10
    move v2, v0

    move v4, v1

    move-object/from16 v20, v8

    goto/16 :goto_12

    :pswitch_9
    move-object/from16 v5, p6

    move-object v2, v4

    const/16 v16, -0x1

    const/16 v18, 0x0

    move v4, v1

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-nez v3, :cond_11

    invoke-static {v2, v9, v5}, Lcom/google/android/gms/internal/measurement/d3;->F([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v9

    iget v0, v5, Lcom/google/android/gms/internal/measurement/w3;->a:I

    invoke-virtual {v11, v14, v6, v7, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v2

    goto/16 :goto_11

    :cond_11
    :goto_f
    move-object/from16 v20, v8

    const/4 v2, 0x1

    goto/16 :goto_12

    :pswitch_a
    move-object/from16 v5, p6

    move-object v2, v4

    const/16 v16, -0x1

    const/16 v18, 0x0

    move v4, v1

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-nez v3, :cond_12

    invoke-static {v2, v9, v5}, Lcom/google/android/gms/internal/measurement/d3;->L([BILcom/google/android/gms/internal/measurement/w3;)I

    move-result v8

    iget-wide v9, v5, Lcom/google/android/gms/internal/measurement/w3;->b:J

    move-object v0, v11

    move-object/from16 v1, p1

    move/from16 p3, v8

    move-object v8, v2

    move-wide v2, v6

    move v7, v4

    move-object v6, v5

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v13, v23

    move/from16 v1, p3

    move v9, v7

    move-object v4, v8

    move v7, v0

    move-object v8, v6

    move/from16 v6, v22

    goto/16 :goto_15

    :cond_12
    move-object/from16 v20, v8

    goto :goto_10

    :pswitch_b
    move-object/from16 v5, p6

    move-object/from16 v20, v8

    const/16 v16, -0x1

    const/16 v18, 0x0

    move-object v8, v4

    move v4, v1

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-ne v3, v2, :cond_13

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/measurement/d3;->i(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v6, v7, v0}, Lcom/google/android/gms/internal/measurement/a6;->p(Ljava/lang/Object;JF)V

    add-int/lit8 v9, v9, 0x4

    goto :goto_11

    :cond_13
    :goto_10
    move-object v8, v5

    const/4 v2, 0x1

    goto :goto_16

    :pswitch_c
    move-object/from16 v5, p6

    move-object/from16 v20, v8

    const/4 v2, 0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    move-object v8, v4

    move v4, v1

    move/from16 v32, v17

    move/from16 v17, v12

    move/from16 v12, v32

    if-ne v3, v2, :cond_14

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/measurement/d3;->M(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v6, v7, v0, v1}, Lcom/google/android/gms/internal/measurement/a6;->o(Ljava/lang/Object;JD)V

    add-int/lit8 v9, v9, 0x8

    :goto_11
    or-int v0, v13, v23

    move v1, v9

    move/from16 v6, v22

    move v9, v4

    move-object v4, v8

    move-object v8, v5

    goto :goto_14

    :cond_14
    :goto_12
    move-object v8, v5

    goto :goto_16

    :cond_15
    invoke-virtual {v11, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/w3;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/r4;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v1

    :goto_13
    invoke-virtual {v11, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v1, v13, v23

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v32, v1

    move v1, v0

    move/from16 v0, v32

    :goto_14
    move v7, v0

    :goto_15
    move v0, v1

    move-object v3, v8

    move/from16 v5, v17

    move/from16 v17, v21

    const v21, 0xfffff

    goto/16 :goto_18

    :goto_16
    move/from16 v6, p5

    move-object/from16 v25, v10

    move-object/from16 v31, v11

    move v8, v12

    move v7, v13

    move-object v15, v14

    move/from16 v22, v17

    move/from16 v17, v21

    move/from16 v21, v16

    move/from16 v16, v2

    move v2, v9

    move v9, v4

    goto/16 :goto_1c

    :cond_16
    move v4, v1

    move-object/from16 v20, v8

    move-object v8, v13

    move/from16 v12, v17

    move/from16 v13, v25

    const/4 v2, 0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1a

    const/4 v1, 0x2

    if-ne v3, v1, :cond_19

    invoke-virtual {v11, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/q4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->c()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0xa

    goto :goto_17

    :cond_17
    add-int/2addr v1, v1

    :goto_17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/q4;->i(I)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    invoke-virtual {v11, v14, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_18
    move-object v6, v0

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/measurement/h5;->l(I)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v0

    move v1, v12

    move-object/from16 v2, p2

    move-object/from16 v7, v23

    move v3, v9

    move v9, v4

    move/from16 v4, p4

    move/from16 v22, v5

    move-object v5, v6

    move/from16 v17, v21

    const v21, 0xfffff

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/d3;->u(Lcom/google/android/gms/internal/measurement/p5;I[BIILcom/google/android/gms/internal/measurement/q4;Lcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object v3, v7

    move v7, v13

    move/from16 v5, v22

    :goto_18
    move/from16 v1, p5

    move-object v13, v8

    move/from16 v16, v9

    move/from16 v2, v17

    move/from16 v17, v12

    move/from16 v12, p4

    goto/16 :goto_0

    :cond_19
    move/from16 v22, v5

    move/from16 v17, v21

    move/from16 v27, v4

    move v15, v9

    move-object/from16 v25, v10

    move-object/from16 v31, v11

    move/from16 v23, v12

    move/from16 v30, v13

    move/from16 v21, v16

    move/from16 v16, v2

    goto/16 :goto_19

    :cond_1a
    move/from16 v22, v5

    move/from16 v17, v21

    const v21, 0xfffff

    move v5, v4

    const/16 v1, 0x31

    if-gt v0, v1, :cond_1c

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    move/from16 v4, v26

    int-to-long v10, v4

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v24, v2

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v9

    move/from16 v26, v4

    move/from16 v4, p4

    move/from16 v27, v5

    move v5, v12

    move-wide/from16 v28, v6

    move/from16 v6, v17

    move/from16 v30, v13

    move/from16 v7, p3

    move/from16 v13, v21

    move/from16 v8, v27

    move v15, v9

    move/from16 v21, v16

    move/from16 v16, v24

    move-wide v9, v10

    move-object/from16 v31, v23

    move/from16 v11, v26

    move/from16 v23, v12

    move-wide/from16 v12, v28

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/h5;->G(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    if-eq v0, v15, :cond_1b

    move-object/from16 v15, p1

    move/from16 v24, v27

    goto/16 :goto_1a

    :cond_1b
    move-object/from16 v15, p1

    move v9, v0

    move/from16 v24, v27

    goto/16 :goto_1b

    :cond_1c
    move/from16 p3, v3

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move v15, v9

    move-object/from16 v25, v10

    move-object/from16 v31, v11

    move/from16 v23, v12

    move/from16 v30, v13

    move/from16 v21, v16

    move/from16 v4, v26

    move/from16 v26, v0

    move/from16 v16, v2

    const/16 v0, 0x32

    move/from16 v9, v26

    if-ne v9, v0, :cond_1e

    move/from16 v7, p3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_1d

    :goto_19
    move v9, v15

    move/from16 v24, v27

    move-object/from16 v15, p1

    goto :goto_1b

    :cond_1d
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v13, v27

    move-wide/from16 v10, v28

    invoke-virtual {v14, v15, v13, v10, v11}, Lcom/google/android/gms/internal/measurement/h5;->D(Ljava/lang/Object;IJ)V

    throw v19

    :cond_1e
    move-object/from16 v14, p0

    move/from16 v7, p3

    move v12, v15

    move/from16 v13, v27

    move-wide/from16 v10, v28

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move v8, v4

    move/from16 v4, p4

    move/from16 v5, v23

    move/from16 v6, v17

    move v14, v12

    move v12, v13

    move/from16 v24, v13

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/h5;->E(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    if-eq v0, v14, :cond_1f

    :goto_1a
    move/from16 v1, p5

    move/from16 v5, v22

    move/from16 v8, v23

    move/from16 v16, v24

    move/from16 v7, v30

    goto :goto_1d

    :cond_1f
    move v9, v0

    :goto_1b
    move/from16 v6, p5

    move v2, v9

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v7, v30

    :goto_1c
    if-ne v8, v6, :cond_20

    if-eqz v6, :cond_20

    move v0, v2

    move v1, v6

    move/from16 v5, v22

    goto :goto_1e

    :cond_20
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/h5;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/s5;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d3;->D(I[BIILcom/google/android/gms/internal/measurement/s5;Lcom/google/android/gms/internal/measurement/w3;)I

    move-result v0

    move v1, v6

    move/from16 v16, v9

    move/from16 v5, v22

    :goto_1d
    move-object/from16 v4, p2

    move/from16 v6, p4

    move v12, v6

    move-object/from16 v3, p6

    move-object v13, v3

    move-object v14, v15

    move/from16 v2, v17

    move-object/from16 v11, v31

    move-object/from16 v15, p0

    move/from16 v17, v8

    goto/16 :goto_0

    :cond_21
    move/from16 v24, v1

    move/from16 v22, v5

    move/from16 v30, v7

    move-object/from16 v20, v8

    move-object/from16 v25, v10

    move-object/from16 v31, v11

    move-object v15, v14

    const/16 v16, 0x1

    move/from16 v8, v17

    :goto_1e
    const v2, 0xfffff

    if-eq v5, v2, :cond_22

    int-to-long v3, v5

    move-object/from16 v5, v31

    invoke-virtual {v5, v15, v3, v4, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_22
    move-object/from16 v3, p0

    iget v4, v3, Lcom/google/android/gms/internal/measurement/h5;->h:I

    :goto_1f
    iget v5, v3, Lcom/google/android/gms/internal/measurement/h5;->i:I

    if-ge v4, v5, :cond_25

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/h5;->g:[I

    aget v5, v5, v4

    aget v6, v25, v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/h5;->j(I)I

    move-result v6

    and-int/2addr v6, v2

    int-to-long v6, v6

    invoke-static {v6, v7, v15}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_23

    goto :goto_20

    :cond_23
    div-int/lit8 v7, v5, 0x3

    add-int/2addr v7, v7

    add-int/lit8 v7, v7, 0x1

    aget-object v7, v20, v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/n4;

    if-nez v7, :cond_24

    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_24
    check-cast v6, Lcom/google/android/gms/internal/measurement/zzlf;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/h5;->m(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v19

    :cond_25
    move/from16 v2, p4

    if-nez v1, :cond_27

    if-ne v0, v2, :cond_26

    goto :goto_21

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zze()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    :cond_27
    if-gt v0, v2, :cond_28

    if-ne v8, v1, :cond_28

    :goto_21
    return v0

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zze()Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
