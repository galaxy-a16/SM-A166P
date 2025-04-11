.class public Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;


# instance fields
.field private keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

.field private privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    return-void
.end method


# virtual methods
.method public createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;
    .locals 0

    invoke-static {p2}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createDataDecryptor(ZLorg/spongycastle/crypto/BlockCipher;[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p0

    return-object p0
.end method

.method public recoverSessionData(I[[B)[B
    .locals 8

    const/16 v0, 0x12

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createPublicKeyCipher(I)Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move-result-object v0

    iget-object v4, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    iget-object v5, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v4, v5}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    new-instance v5, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-direct {v5, v0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    invoke-virtual {v5, v3, v4}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {p1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1, p0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    new-array p1, p0, [B

    aget-object v0, p2, v3

    array-length v4, v0

    sub-int/2addr v4, v2

    const/4 v6, 0x3

    if-le v4, p0, :cond_1

    array-length v4, v0

    sub-int/2addr v4, v6

    invoke-virtual {v5, v0, v6, v4}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_0

    :cond_1
    array-length v4, v0

    sub-int/2addr v4, v2

    sub-int v4, p0, v4

    array-length v7, v0

    sub-int/2addr v7, v2

    invoke-static {v0, v2, p1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, p1, v3, p0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    :goto_0
    aget-object p2, p2, v1

    move v0, v3

    :goto_1
    if-eq v0, p0, :cond_2

    aput-byte v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length v0, p2

    sub-int/2addr v0, v2

    if-le v0, p0, :cond_3

    array-length p0, p2

    sub-int/2addr p0, v6

    invoke-virtual {v5, p2, v6, p0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_3

    :cond_3
    array-length v0, p2

    sub-int/2addr v0, v2

    sub-int v0, p0, v0

    array-length v1, p2

    sub-int/2addr v1, v2

    invoke-static {p2, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, p1, v3, p0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_3

    :cond_4
    :goto_2
    aget-object p0, p2, v3

    array-length p1, p0

    sub-int/2addr p1, v2

    invoke-virtual {v5, p0, v2, p1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    :goto_3
    invoke-virtual {v5}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->doFinal()[B

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    aget-object p2, p2, v3

    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    new-array v5, v4, [B

    invoke-static {p2, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v2

    aget-byte v2, p2, v4

    new-array v6, v2, [B

    add-int/2addr v4, v1

    invoke-static {p2, v4, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p2

    invoke-static {p2}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createWrapper(I)Lorg/spongycastle/crypto/Wrapper;

    move-result-object p2

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;

    new-instance v4, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {v4}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-direct {v1, v4, p1}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;-><init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    new-instance p1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p0

    new-instance v4, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v4}, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    invoke-static {p0, v4}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->createKey(Lorg/spongycastle/math/ec/ECPoint;[B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {p2, v3, p1}, Lorg/spongycastle/crypto/Wrapper;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    invoke-interface {p2, v6, v3, v2}, Lorg/spongycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/PGPPad;->unpadSessionData([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception encrypting session info: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception creating user keying material: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
