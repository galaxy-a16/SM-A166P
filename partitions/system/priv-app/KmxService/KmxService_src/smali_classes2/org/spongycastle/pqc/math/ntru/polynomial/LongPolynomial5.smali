.class public Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private coeffs:[J

.field private numCoeffs:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    add-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    aget-wide v5, v4, v2

    iget-object v7, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v7, v7, v1

    int-to-long v7, v7

    shl-long/2addr v7, v3

    or-long/2addr v5, v7

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0xc

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    iput p2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    return-void
.end method


# virtual methods
.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v1, v1

    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;->size()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    const/4 v4, 0x5

    div-int/2addr v2, v4

    add-int/2addr v2, v1

    const/4 v1, 0x1

    sub-int/2addr v2, v1

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v2, v5, v1

    const/4 v2, 0x0

    aput v4, v5, v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;->getOnes()[I

    move-result-object v6

    move v7, v2

    :goto_0
    array-length v8, v6

    const-wide v9, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    if-eq v7, v8, :cond_1

    aget v8, v6, v7

    div-int/lit8 v11, v8, 0x5

    mul-int/lit8 v12, v11, 0x5

    sub-int/2addr v8, v12

    move v12, v2

    :goto_1
    iget-object v13, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v14, v13

    if-ge v12, v14, :cond_0

    aget-object v14, v5, v8

    aget-wide v15, v14, v11

    aget-wide v17, v13, v12

    add-long v15, v15, v17

    and-long/2addr v15, v9

    aput-wide v15, v14, v11

    add-int/2addr v11, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;->getNegOnes()[I

    move-result-object v6

    move v7, v2

    :goto_2
    array-length v8, v6

    if-eq v7, v8, :cond_3

    aget v8, v6, v7

    div-int/lit8 v11, v8, 0x5

    mul-int/lit8 v12, v11, 0x5

    sub-int/2addr v8, v12

    move v12, v2

    :goto_3
    iget-object v13, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v14, v13

    if-ge v12, v14, :cond_2

    aget-object v14, v5, v8

    const-wide v15, 0x800800800800800L

    aget-wide v17, v14, v11

    add-long v17, v17, v15

    aget-wide v15, v13, v12

    sub-long v17, v17, v15

    and-long v15, v17, v9

    aput-wide v15, v14, v11

    add-int/2addr v11, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    aget-object v6, v5, v2

    array-length v7, v6

    add-int/2addr v7, v1

    invoke-static {v6, v7}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    move v7, v1

    :goto_4
    if-gt v7, v3, :cond_5

    mul-int/lit8 v8, v7, 0xc

    rsub-int/lit8 v11, v8, 0x3c

    const-wide/16 v12, 0x1

    shl-long v14, v12, v11

    sub-long/2addr v14, v12

    aget-object v12, v5, v7

    array-length v12, v12

    move v13, v2

    :goto_5
    if-ge v13, v12, :cond_4

    aget-object v16, v5, v7

    aget-wide v16, v16, v13

    shr-long v18, v16, v11

    and-long v16, v16, v14

    aget-wide v20, v6, v13

    shl-long v16, v16, v8

    add-long v20, v20, v16

    and-long v16, v20, v9

    aput-wide v16, v6, v13

    add-int/lit8 v13, v13, 0x1

    aget-wide v16, v6, v13

    add-long v16, v16, v18

    and-long v16, v16, v9

    aput-wide v16, v6, v13

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    iget v3, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    rem-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0xc

    iget-object v5, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v5, v5

    sub-int/2addr v5, v1

    :goto_6
    array-length v7, v6

    if-ge v5, v7, :cond_9

    iget-object v7, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v8, v7

    sub-int/2addr v8, v1

    if-ne v5, v8, :cond_7

    iget v8, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    if-ne v8, v4, :cond_6

    const-wide/16 v11, 0x0

    goto :goto_7

    :cond_6
    aget-wide v11, v6, v5

    shr-long/2addr v11, v3

    :goto_7
    move v8, v2

    goto :goto_8

    :cond_7
    aget-wide v11, v6, v5

    mul-int/lit8 v8, v5, 0x5

    iget v13, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    sub-int/2addr v8, v13

    :goto_8
    div-int/lit8 v13, v8, 0x5

    mul-int/lit8 v14, v13, 0x5

    sub-int/2addr v8, v14

    mul-int/lit8 v14, v8, 0xc

    shl-long v14, v11, v14

    rsub-int/lit8 v8, v8, 0x5

    mul-int/lit8 v8, v8, 0xc

    shr-long/2addr v11, v8

    aget-wide v16, v6, v13

    add-long v16, v16, v14

    and-long v14, v16, v9

    aput-wide v14, v6, v13

    add-int/2addr v13, v1

    array-length v7, v7

    if-ge v13, v7, :cond_8

    aget-wide v7, v6, v13

    add-long/2addr v7, v11

    and-long/2addr v7, v9

    aput-wide v7, v6, v13

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    new-instance v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;

    iget v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    invoke-direct {v1, v6, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;-><init>([JI)V

    return-object v1
.end method

.method public toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 9

    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    aget-wide v5, v5, v3

    shr-long/2addr v5, v4

    const-wide/16 v7, 0x7ff

    and-long/2addr v5, v7

    long-to-int v5, v5

    aput v5, v0, v2

    add-int/lit8 v4, v4, 0xc

    const/16 v5, 0x3c

    if-lt v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v4, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object p0
.end method
