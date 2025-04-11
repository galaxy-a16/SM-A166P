.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hashAlg:Lorg/spongycastle/crypto/Digest;

.field private params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

.field private signingKeyPair:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

.field private verificationKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    return-void
.end method

.method private sign(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 7

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->N:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    iget p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->B:I

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getPublicKey()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v3, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    :goto_0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    invoke-virtual {p2, p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v4

    iget-object v4, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {p2, p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v5

    iget-object v5, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-interface {v4, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    invoke-interface {v5, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v6

    invoke-interface {v5, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    invoke-interface {v4, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v3, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {p2, p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object p1

    iget-object p1, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-le p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    invoke-virtual {p2, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    goto :goto_1

    :cond_0
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    :goto_1
    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v6, p1, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {p2, p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object p0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-interface {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    invoke-interface {p0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    invoke-interface {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    invoke-interface {v0, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v3, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v3, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    return-object v3
.end method

.method private signHash([BLorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;)[B
    .locals 5

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getPublicKey()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->createMsgRep([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->sign(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, v2, v3, v4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verify(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-virtual {v3, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object p0

    array-length p1, p0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Signing failed: too many retries (max="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    const-string v0, ")"

    invoke-static {p2, p0, v0}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verify(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Z
    .locals 7

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    iget-wide v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->betaSq:D

    invoke-virtual {p3, p2, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {p2, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v3, p1

    double-to-long p0, v3

    long-to-double p0, p0

    cmpg-double p0, p0, v1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private verifyHash([B[BLorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)Z
    .locals 3

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length p2, p2

    add-int/lit8 p2, p2, -0x4

    new-array p2, p2, [B

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v2, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->N:I

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-static {p2, v2, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->createMsgRep([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    iget-object p3, p3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verify(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public createMsgRep([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 7

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->N:I

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v3, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    array-length v4, p1

    const/4 v5, 0x4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    new-instance p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSignerPrng;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSignerPrng;-><init>([BLorg/spongycastle/crypto/Digest;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_0

    invoke-virtual {p1, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSignerPrng;->nextBytes(I)[B

    move-result-object p2

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p2, v4

    mul-int/lit8 v6, v2, 0x8

    sub-int/2addr v6, v0

    shr-int/2addr v4, v6

    shl-int/2addr v4, v6

    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    int-to-byte v4, v4

    aput-byte v4, p2, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p2, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    aput v4, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public generateSignature()[B
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->signingKeyPair:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->signingKeyPair:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->signHash([BLorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call initSign first!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->signingKeyPair:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verificationKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    :goto_0
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget-object p1, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call initSign or initVerify first!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call initSign or initVerify first!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifySignature([B)Z
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verificationKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verificationKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigner;->verifyHash([B[BLorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call initVerify first!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
