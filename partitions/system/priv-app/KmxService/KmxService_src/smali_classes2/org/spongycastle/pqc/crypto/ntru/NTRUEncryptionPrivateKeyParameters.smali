.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;
.source "SourceFile"


# instance fields
.field public fp:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

.field public h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

.field public t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    iget v1, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    if-ne v1, v0, :cond_1

    iget v3, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v4, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->df1:I

    iget v5, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->df2:I

    iget v6, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->df3:I

    iget-boolean v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v0, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v7, v0

    :goto_0
    iget p2, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-static {p1, v3, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->fromBinary(Ljava/io/InputStream;IIIII)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    goto :goto_2

    :cond_1
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v1, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-static {p1, v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    invoke-static {p1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Tight(Ljava/io/InputStream;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    iget-boolean p2, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    if-eqz p2, :cond_2

    new-instance p2, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p2, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p2, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    :goto_1
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    :goto_2
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;-><init>(Ljava/io/InputStream;Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object p0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, p0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-interface {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->invertF3()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v2, :cond_5

    iget-object v2, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object p1, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getEncoded()[B
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    instance-of v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    if-eqz v1, :cond_0

    check-cast p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->toBinary()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary3Tight()[B

    move-result-object p0

    :goto_0
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
