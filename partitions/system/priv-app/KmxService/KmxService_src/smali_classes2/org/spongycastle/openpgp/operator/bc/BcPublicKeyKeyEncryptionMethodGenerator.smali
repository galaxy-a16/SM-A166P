.class public Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;
.super Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;
.source "SourceFile"


# instance fields
.field private keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    new-instance p1, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {p1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    return-void
.end method


# virtual methods
.method public encryptSessionInfo(Lorg/spongycastle/openpgp/PGPPublicKey;[B)[B
    .locals 9

    const-string v0, "exception encrypting session info: "

    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createPublicKeyCipher(I)Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-virtual {v2, p1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    :cond_0
    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, p1, p0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v4, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    array-length p0, p2

    invoke-interface {v1, p2, v3, p0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    new-instance v5, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    new-instance v6, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v6}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    new-instance v7, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v8, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v7, v5, v8}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v6, v7}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    new-instance v5, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v7, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator$1;

    invoke-direct {v7, p0}, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator$1;-><init>(Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;)V

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/spongycastle/crypto/KeyEncoder;)V

    invoke-virtual {v5}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/spongycastle/crypto/EphemeralKeyPair;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->decodePoint(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    new-instance v6, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;

    new-instance v7, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {v7}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;-><init>()V

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v8

    invoke-virtual {v7, v8}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v7

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;-><init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    new-instance v8, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v8}, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    invoke-static {p1, v8}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->createKey(Lorg/spongycastle/math/ec/ECPoint;[B)[B

    move-result-object p1

    invoke-direct {v7, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createWrapper(I)Lorg/spongycastle/crypto/Wrapper;

    move-result-object p1

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v7, p0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {p1, v4, v1}, Lorg/spongycastle/crypto/Wrapper;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    invoke-static {p2}, Lorg/spongycastle/openpgp/operator/PGPPad;->padSessionData([B)[B

    move-result-object p0

    array-length p2, p0

    invoke-interface {p1, p0, v3, p2}, Lorg/spongycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p0

    new-instance p1, Lorg/spongycastle/bcpg/MPInteger;

    new-instance p2, Ljava/math/BigInteger;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v1

    invoke-direct {p2, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p1, p2}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object p1

    array-length p2, p1

    add-int/2addr p2, v4

    array-length v1, p0

    add-int/2addr p2, v1

    new-array p2, p2, [B

    array-length v1, p1

    invoke-static {p1, v3, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    array-length v2, p0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    array-length p1, p1

    add-int/2addr p1, v4

    array-length v1, p0

    invoke-static {p0, v3, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
