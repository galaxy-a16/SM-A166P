.class public Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lorg/bouncycastle/crypto/PBEParametersGenerator;
.source "SourceFile"


# static fields
.field public static final IV_MATERIAL:I = 0x2

.field public static final KEY_MATERIAL:I = 0x1

.field public static final MAC_MATERIAL:I = 0x3


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    instance-of v0, p1, Lorg/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    check-cast p1, Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Digest "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unsupported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private adjust([BI[B)V
    .locals 4

    array-length p0, p3

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p3, p0

    and-int/lit16 p0, p0, 0xff

    array-length v0, p3

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    array-length v0, p3

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    ushr-int/lit8 p0, p0, 0x8

    array-length v0, p3

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p3, v0

    and-int/lit16 v1, v1, 0xff

    add-int v2, p2, v0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/2addr v1, p0

    int-to-byte p0, v1

    aput-byte p0, p1, v2

    ushr-int/lit8 p0, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateDerivedKey(II)[B
    .locals 13

    iget v0, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v1, v0, [B

    new-array v2, p2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-eq v4, v0, :cond_0

    int-to-byte v5, p1

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    array-length v5, p1

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    array-length p1, p1

    add-int/2addr p1, v5

    sub-int/2addr p1, v4

    div-int/2addr p1, v5

    mul-int/2addr p1, v5

    new-array v5, p1, [B

    move v6, v3

    :goto_1
    if-eq v6, p1, :cond_2

    iget-object v7, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v8, v7

    rem-int v8, v6, v8

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-array v5, v3, [B

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    if-eqz p1, :cond_3

    array-length v6, p1

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    array-length p1, p1

    add-int/2addr p1, v6

    sub-int/2addr p1, v4

    div-int/2addr p1, v6

    mul-int/2addr p1, v6

    new-array v6, p1, [B

    move v7, v3

    :goto_2
    if-eq v7, p1, :cond_4

    iget-object v8, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v9, v8

    rem-int v9, v7, v9

    aget-byte v8, v8, v9

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    new-array v6, v3, [B

    :cond_4
    array-length p1, v5

    array-length v7, v6

    add-int/2addr p1, v7

    new-array v7, p1, [B

    array-length v8, v5

    invoke-static {v5, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    array-length v8, v6

    invoke-static {v6, v3, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v6, v5, [B

    iget v8, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int v9, p2, v8

    sub-int/2addr v9, v4

    div-int/2addr v9, v8

    new-array v10, v8, [B

    move v11, v4

    :goto_3
    if-gt v4, v9, :cond_9

    iget-object v12, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v12, v1, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v12, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v12, v7, v3, p1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v12, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v12, v10, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :goto_4
    iget v12, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    if-ge v11, v12, :cond_5

    iget-object v12, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v12, v10, v3, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v12, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v12, v10, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    move v11, v3

    :goto_5
    if-eq v11, v5, :cond_6

    rem-int v12, v11, v8

    aget-byte v12, v10, v12

    aput-byte v12, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    iget v11, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int v12, p1, v11

    if-eq v3, v12, :cond_7

    mul-int/2addr v11, v3

    invoke-direct {p0, v7, v11, v6}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    if-ne v4, v9, :cond_8

    add-int/lit8 v3, v4, -0x1

    iget v11, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int v12, v3, v11

    mul-int/2addr v3, v11

    sub-int v3, p2, v3

    const/4 v11, 0x0

    invoke-static {v10, v11, v2, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v11

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    add-int/lit8 v11, v4, -0x1

    iget v12, p0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v11, v12

    invoke-static {v10, v3, v2, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_9
    return-object v2
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 2

    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 4

    .line 2
    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, p0, v3, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
