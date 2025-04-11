.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private forEncryption:Z

.field private params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

.field private privKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

.field private pubKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private MGF([BIIZ)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 10

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int v2, p3, v1

    new-array v2, v2, [B

    if-eqz p4, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->calcHash(Lorg/spongycastle/crypto/Digest;[B)[B

    move-result-object p1

    :cond_0
    const/4 p4, 0x0

    move v3, p4

    :goto_0
    if-ge v3, p3, :cond_1

    array-length v4, p1

    invoke-interface {v0, p1, p4, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->putInt(Lorg/spongycastle/crypto/Digest;I)V

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->calcHash(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v4

    mul-int v5, v3, v1

    invoke-static {v4, p4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p3, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    :goto_1
    move v1, p4

    move v4, v1

    :goto_2
    array-length v5, v2

    if-eq v1, v5, :cond_6

    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xf3

    if-lt v5, v6, :cond_2

    goto :goto_4

    :cond_2
    move v6, p4

    :goto_3
    const/4 v7, 0x4

    if-ge v6, v7, :cond_4

    rem-int/lit8 v7, v5, 0x3

    iget-object v8, p3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v9, v7, -0x1

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_3

    return-object p3

    :cond_3
    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, p3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v5, v5, -0x1

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_5

    return-object p3

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-lt v4, p2, :cond_7

    return-object p3

    :cond_7
    array-length v1, p1

    invoke-interface {v0, p1, p4, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->putInt(Lorg/spongycastle/crypto/Digest;I)V

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->calcHash(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private buildSData([B[BI[B[B)[B
    .locals 2

    array-length p0, p1

    add-int/2addr p0, p3

    array-length p3, p4

    add-int/2addr p0, p3

    array-length p3, p5

    add-int/2addr p0, p3

    new-array p0, p0, [B

    array-length p3, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p1

    array-length v1, p2

    invoke-static {p2, v0, p0, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p1

    array-length v1, p2

    add-int/2addr p3, v1

    array-length v1, p4

    invoke-static {p4, v0, p0, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    array-length p2, p4

    add-int/2addr p1, p2

    array-length p2, p5

    invoke-static {p5, v0, p0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private calcHash(Lorg/spongycastle/crypto/Digest;)[B
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object p0
.end method

.method private calcHash(Lorg/spongycastle/crypto/Digest;[B)[B
    .locals 2

    .line 2
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1, p0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object p0
.end method

.method private copyOf([BI)[B
    .locals 1

    new-array p0, p2, [B

    array-length v0, p1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p1

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private decrypt([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v0, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v8, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    iget v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->db:I

    iget v5, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    iget v9, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iget v10, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    iget v11, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iget-boolean v12, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iget-object v13, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    const/16 v0, 0xff

    if-gt v5, v0, :cond_6

    div-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v3, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v6, v0, v1, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->decrypt(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v2

    if-lt v2, v9, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v14

    if-lt v14, v9, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v15

    if-lt v15, v9, :cond_3

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v9, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v9, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    invoke-virtual {v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    const/4 v15, 0x4

    invoke-virtual {v0, v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    invoke-virtual {v0, v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    invoke-direct {v6, v0, v3, v11, v12}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary3Sves()[B

    move-result-object v0

    new-array v11, v4, [B

    invoke-static {v0, v2, v11, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v1, v0, v4

    and-int/lit16 v3, v1, 0xff

    if-gt v3, v5, :cond_2

    new-array v12, v3, [B

    add-int/2addr v4, v14

    invoke-static {v0, v4, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/2addr v4, v3

    sub-int/2addr v1, v4

    new-array v5, v1, [B

    invoke-static {v0, v4, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v1, [B

    invoke-static {v5, v0}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    div-int/lit8 v10, v10, 0x8

    invoke-direct {v6, v0, v10}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v0

    invoke-direct {v6, v0, v12}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    invoke-virtual {v0, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v12

    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Invalid message encoding"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "The message is not followed by zeroes"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Message too long: "

    const-string v2, ">"

    .line 2
    invoke-static {v1, v3, v2, v5}, Landroidx/activity/b;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 1"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 0"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal -1"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "maxMsgLenBytes values bigger than 255 are not supported"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encrypt([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v0, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v9, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v10, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    iget v11, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    iget v12, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->db:I

    iget v13, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    iget v14, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iget v15, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    iget v5, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iget-boolean v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    array-length v2, v7

    const/16 v0, 0xff

    if-gt v11, v0, :cond_4

    if-gt v2, v11, :cond_3

    :goto_0
    div-int/lit8 v0, v12, 0x8

    new-array v1, v0, [B

    move/from16 p2, v4

    iget-object v4, v6, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 v4, v11, 0x1

    sub-int/2addr v4, v2

    move/from16 v16, v5

    new-array v5, v4, [B

    move/from16 v17, v12

    div-int/lit8 v12, v13, 0x8

    new-array v12, v12, [B

    move/from16 v18, v13

    const/4 v13, 0x0

    invoke-static {v1, v13, v12, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v13, v2

    aput-byte v13, v12, v0

    add-int/lit8 v0, v0, 0x1

    array-length v13, v7

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-static {v7, v1, v12, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v7

    add-int/2addr v0, v13

    invoke-static {v5, v1, v12, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v12, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Sves([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v13

    invoke-virtual {v8, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    div-int/lit8 v1, v15, 0x8

    invoke-direct {v6, v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v4, v19

    move-object v1, v3

    move/from16 v19, v2

    move-object/from16 v2, p1

    move-object/from16 v20, v3

    move/from16 v3, v19

    move/from16 v7, p2

    move/from16 p2, v15

    move/from16 v15, v16

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v0

    invoke-direct {v6, v0, v12}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    move-result-object v0

    invoke-interface {v0, v8, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v1

    invoke-direct {v6, v1, v9, v15, v7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v13}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    const/4 v1, -0x1

    invoke-virtual {v13, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v1

    if-ge v1, v14, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v1

    if-ge v1, v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v1

    if-ge v1, v14, :cond_2

    :goto_1
    move v4, v7

    move v5, v15

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v7, p1

    move/from16 v15, p2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v13, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    invoke-virtual {v0, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    invoke-virtual {v0, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    return-object v0

    :cond_3
    move/from16 v19, v2

    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Message too long: "

    const-string v2, ">"

    move/from16 v3, v19

    .line 2
    invoke-static {v1, v3, v2, v11}, Landroidx/activity/b;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "llen values bigger than 1 are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateBlindingCoeffs(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I
    .locals 4

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    new-array p0, p0, [I

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->nextIndex()I

    move-result v2

    aget v3, p0, v2

    if-nez v3, :cond_0

    aput v0, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private generateBlindingPoly([B[B)Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    .locals 3

    new-instance p2, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-direct {p2, p1, v0}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;-><init>([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget p1, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    invoke-direct {p0, p2, p1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance p1, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    invoke-direct {p0, p2, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance v1, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    invoke-direct {p0, p2, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;)V

    return-object p0

    :cond_0
    iget v0, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr:I

    iget-boolean p1, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object p0

    if-eqz p1, :cond_1

    new-instance p1, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {p1, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p1, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    return-object p1
.end method

.method private log2(I)I
    .locals 0

    const/16 p0, 0x800

    if-ne p1, p0, :cond_0

    const/16 p0, 0xb

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "log2 not fully implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private putInt(Lorg/spongycastle/crypto/Digest;I)V
    .locals 0

    shr-int/lit8 p0, p2, 0x18

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    shr-int/lit8 p0, p2, 0x10

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    shr-int/lit8 p0, p2, 0x8

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    int-to-byte p0, p2

    invoke-interface {p1, p0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    return-void
.end method


# virtual methods
.method public decrypt(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    const/4 v2, 0x3

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    invoke-virtual {p2, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    :cond_0
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget p1, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {p0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {p0, p3, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    return-object p2
.end method

.method public encrypt(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p3, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p2

    iget-object p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget p3, p3, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p1, p3}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {p2, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    return-object p2
.end method

.method public getInputBlockSize()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget p0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    return p0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->log2(I)I

    move-result p0

    mul-int/2addr v1, p0

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 0

    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->forEncryption:Z

    if-eqz p1, :cond_1

    instance-of p1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    check-cast p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    :goto_0
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object p1

    goto :goto_1

    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->privKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    return-void
.end method

.method public processBlock([BII)[B
    .locals 2

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->forEncryption:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->encrypt([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->privKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->decrypt([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B

    move-result-object p0

    return-object p0
.end method
