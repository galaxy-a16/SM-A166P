.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$IESwithAESCBC;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$IESwithDESedeCBC;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$IES;
    }
.end annotation


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private dhaesMode:Z

.field private engine:Lorg/spongycastle/crypto/engines/IESEngine;

.field private engineParam:Ljava/security/AlgorithmParameters;

.field private engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

.field private final helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

.field private final ivLength:I

.field private key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private random:Ljava/security/SecureRandom;

.field private state:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/engines/IESEngine;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    new-instance v0, Lorg/spongycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->dhaesMode:Z

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    iput v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->ivLength:I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/engines/IESEngine;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    new-instance v0, Lorg/spongycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->dhaesMode:Z

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    iput p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->ivLength:I

    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineDoFinal([BII)[B

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    invoke-static {p0, p2, p4, p5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    return p0
.end method

.method public engineDoFinal([BII)[B
    .locals 5

    .line 2
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance p2, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {p3}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getDerivationV()[B

    move-result-object p3

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getEncodingV()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getMacKeySize()I

    move-result v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getCipherKeySize()I

    move-result v2

    invoke-direct {p2, p3, v0, v1, v2}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;-><init>([B[BII)V

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {p3}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getNonce()[B

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance p3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getNonce()[B

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object p2, p3

    :cond_1
    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast p3, Lorg/spongycastle/crypto/params/DHKeyParameters;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object p3

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v1, 0x3

    const-string v2, "unable to process block"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    iget p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-eq p3, v3, :cond_3

    if-ne p3, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {p3, v4, v1, v0, p2}, Lorg/spongycastle/crypto/engines/IESEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {p3, v3, v0, v1, p2}, Lorg/spongycastle/crypto/engines/IESEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    :goto_1
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length p2, p1

    invoke-virtual {p0, p1, v4, p2}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {p1, v2, p0}, Lorg/spongycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-eq v0, v3, :cond_8

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p3, 0x2

    if-eq v0, p3, :cond_7

    const/4 p3, 0x4

    if-ne v0, p3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IESCipher not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    :try_start_1
    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    new-instance v1, Lorg/spongycastle/crypto/parsers/DHIESPublicKeyParser;

    move-object v3, v0

    check-cast v3, Lorg/spongycastle/crypto/params/DHKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/spongycastle/crypto/parsers/DHIESPublicKeyParser;-><init>(Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {p3, v0, p2, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/KeyParser;)V

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length p2, p1

    invoke-virtual {p0, p1, v4, p2}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object p0
    :try_end_1
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {p1, v2, p0}, Lorg/spongycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_8
    :goto_3
    new-instance v0, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;-><init>()V

    new-instance v1, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, p3}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    new-instance p3, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$1;

    invoke-direct {v1, p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$1;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;)V

    invoke-direct {p3, v0, v1}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/spongycastle/crypto/KeyEncoder;)V

    :try_start_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v0, v1, p2, p3}, Lorg/spongycastle/crypto/engines/IESEngine;->init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;)V

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length p2, p1

    invoke-virtual {p0, p1, v4, p2}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Lorg/spongycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {p1, v2, p0}, Lorg/spongycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public engineGetBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public engineGetIV()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getNonce()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    instance-of p0, p1, Ljavax/crypto/interfaces/DHKey;

    if-eqz p0, :cond_0

    check-cast p1, Ljavax/crypto/interfaces/DHKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not a DH key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetOutputSize(I)I
    .locals 8

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    const-string v1, "cipher not initialised"

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->getMac()Lorg/spongycastle/crypto/Mac;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v2, Lorg/spongycastle/crypto/params/DHKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    iget v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-eq v5, v4, :cond_5

    if-ne v5, v7, :cond_2

    goto :goto_2

    :cond_2
    if-eq v5, v3, :cond_4

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v2

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v1

    :goto_3
    invoke-virtual {v1, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result p1

    :goto_4
    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-eq v1, v4, :cond_9

    if-ne v1, v7, :cond_6

    goto :goto_7

    :cond_6
    if-eq v1, v3, :cond_8

    if-ne v1, v6, :cond_7

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IESCipher not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_5
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    sub-int/2addr p0, v0

    sub-int/2addr p0, v2

    :goto_6
    add-int/2addr p0, p1

    return p0

    :cond_9
    :goto_7
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    add-int/2addr p0, v0

    add-int/2addr p0, v2

    goto :goto_6

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    const-string v1, "IES"

    invoke-interface {v0, v1}, Lorg/spongycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1

    if-eqz p3, :cond_0

    :try_start_0
    const-class v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "cannot recognise parameters: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p2}, Lcom/google/protobuf/n;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "cannot handle supplied parameter spec: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    const/4 v0, 0x1

    if-nez p3, :cond_1

    iget p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->ivLength:I

    if-eqz p3, :cond_0

    if-ne p1, v0, :cond_0

    new-array p3, p3, [B

    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/IESUtil;->guessParameterSpec(Lorg/spongycastle/crypto/BufferedBlockCipher;[B)Lorg/spongycastle/jce/spec/IESParameterSpec;

    move-result-object p3

    goto :goto_1

    :cond_1
    instance-of v1, p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v1, :cond_c

    check-cast p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    :goto_1
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {p3}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getNonce()[B

    move-result-object p3

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->ivLength:I

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    array-length p3, p3

    if-ne p3, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "NONCE in IES Parameters needs to be "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->ivLength:I

    const-string p3, " bytes long"

    .line 7
    invoke-static {p2, p0, p3}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    if-eq p1, v0, :cond_9

    const/4 p3, 0x3

    if-ne p1, p3, :cond_4

    goto :goto_5

    :cond_4
    const/4 p3, 0x2

    if-eq p1, p3, :cond_6

    const/4 p3, 0x4

    if-ne p1, p3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "must be passed EC key"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    instance-of p3, p2, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p3, :cond_7

    check-cast p2, Ljava/security/PrivateKey;

    goto :goto_4

    :cond_7
    instance-of p3, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-eqz p3, :cond_8

    check-cast p2, Lorg/spongycastle/jce/interfaces/IESKey;

    invoke-interface {p2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object p3

    invoke-static {p3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p3

    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    :goto_4
    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    goto :goto_6

    :cond_8
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "must be passed recipient\'s private DH key for decryption"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    instance-of p3, p2, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz p3, :cond_a

    check-cast p2, Ljava/security/PublicKey;

    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    :goto_6
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_7

    :cond_a
    instance-of p3, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-eqz p3, :cond_b

    check-cast p2, Lorg/spongycastle/jce/interfaces/IESKey;

    invoke-interface {p2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object p3

    invoke-static {p3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p3

    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    :goto_7
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->random:Ljava/security/SecureRandom;

    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :cond_b
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "must be passed recipient\'s public DH key for encryption"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "must be passed IES parameters"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "DHAES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->dhaesMode:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t support mode "

    invoke-static {v0, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "NOPADDING"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "PKCS5PADDING"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PKCS7PADDING"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string p1, "padding not available with IESCipher"

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public engineUpdate([BII[BI)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return p0
.end method

.method public engineUpdate([BII)[B
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return-object p0
.end method
