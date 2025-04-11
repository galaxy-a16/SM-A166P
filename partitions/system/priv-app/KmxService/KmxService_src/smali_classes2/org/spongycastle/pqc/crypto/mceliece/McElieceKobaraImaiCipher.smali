.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageEncryptor;


# static fields
.field private static final DEFAULT_PRNG_NAME:Ljava/lang/String; = "SHA1PRNG"

.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.3"

.field public static final PUBLIC_CONSTANT:[B


# instance fields
.field private forEncryption:Z

.field private k:I

.field key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

.field private messDigest:Lorg/spongycastle/crypto/Digest;

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "a predetermined public constant"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    return-void
.end method

.method private initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    return-void
.end method


# virtual methods
.method public getKeySize(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 0

    instance-of p0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 0

    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    if-eqz p1, :cond_1

    instance-of p1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    invoke-direct {p0, p2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    invoke-direct {p0, p2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    :goto_0
    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 8

    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    if-nez v0, :cond_6

    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    shr-int/lit8 v0, v0, 0x3

    array-length v1, p1

    if-lt v1, v0, :cond_5

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    shr-int/lit8 v2, v2, 0x3

    array-length v3, p1

    sub-int/2addr v3, v0

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-lez v3, :cond_0

    invoke-static {p1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object p1

    aget-object v3, p1, v4

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    new-array v3, v4, [B

    :goto_0
    iget v5, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    invoke-static {v5, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v5, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-static {v5, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v5

    aget-object p1, p1, v0

    array-length v6, v5

    if-le v6, v2, :cond_1

    invoke-static {v5, v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object v5

    :cond_1
    iget v2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v2, v6, p1}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->decode(IILorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object p1

    invoke-static {v3, p1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object p1

    invoke-static {p1, v5}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object p1

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object p1

    aget-object v3, p1, v4

    aget-object p1, p1, v0

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    array-length v7, p1

    invoke-interface {v6, p1, v4, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, v5, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    sub-int/2addr v1, v0

    :goto_1
    if-ltz v1, :cond_2

    aget-byte p0, v5, v1

    aget-byte v6, v3, v1

    xor-int/2addr p0, v6

    int-to-byte p0, p0

    aput-byte p0, v5, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    new-array v1, v2, [B

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    add-int/lit8 p0, v2, -0x1

    :goto_2
    if-ltz p0, :cond_3

    aget-byte v3, v1, p0

    aget-byte v5, p1, p0

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_3
    sget-object p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length p1, p0

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object p1

    aget-object v1, p1, v4

    aget-object p1, p1, v0

    invoke-static {p1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p1, "Bad Padding: invalid ciphertext"

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p1, "Bad Padding: Ciphertext too short."

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cipher initialised for decryption"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public messageEncrypt([B)[B
    .locals 11

    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    shr-int/lit8 v1, v1, 0x3

    iget v2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x3

    add-int v3, v1, v2

    sub-int/2addr v3, v0

    sget-object v4, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v5, v4

    sub-int/2addr v3, v5

    array-length v5, p1

    if-le v5, v3, :cond_0

    array-length v3, p1

    :cond_0
    array-length v5, v4

    add-int/2addr v5, v3

    add-int v6, v5, v0

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    new-array v7, v5, [B

    array-length v8, p1

    const/4 v9, 0x0

    invoke-static {p1, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v4

    invoke-static {v4, v9, v7, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v0, [B

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v3, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v4, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-virtual {v3, p1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    new-array v4, v5, [B

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-byte v8, v4, v3

    aget-byte v10, v7, v3

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7, v4, v9, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5, v3, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    aget-byte v5, v3, v0

    aget-byte v7, p1, v0

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-static {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object p1

    new-array v0, v9, [B

    if-lez v6, :cond_3

    new-array v0, v6, [B

    invoke-static {p1, v9, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    new-array v3, v2, [B

    invoke-static {p1, v6, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, v1, [B

    add-int/2addr v2, v6

    invoke-static {p1, v2, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    invoke-static {p1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v1, v2, v3}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v1

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {p0, p1, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object p0

    if-lez v6, :cond_4

    invoke-static {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object p0

    :cond_4
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cipher initialised for decryption"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
