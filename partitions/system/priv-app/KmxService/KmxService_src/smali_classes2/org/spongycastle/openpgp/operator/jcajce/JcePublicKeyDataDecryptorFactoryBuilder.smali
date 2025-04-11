.class public Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

.field private fingerprintCalculator:Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

.field private helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

.field private keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    return-void
.end method

.method public static synthetic access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;ILjava/security/PrivateKey;[[B)[B
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->decryptSessionData(ILjava/security/PrivateKey;[[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;Lorg/spongycastle/openpgp/PGPPrivateKey;[[B)[B
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->decryptSessionData(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;Lorg/spongycastle/openpgp/PGPPrivateKey;[[B)[B

    move-result-object p0

    return-object p0
.end method

.method private decryptSessionData(ILjava/security/PrivateKey;[[B)[B
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createPublicKeyCipher(I)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_2

    :cond_0
    check-cast p2, Ljavax/crypto/interfaces/DHKey;

    invoke-interface {p2}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    new-array p2, p1, [B

    aget-object v3, p3, v1

    array-length v4, v3

    sub-int/2addr v4, v0

    const/4 v5, 0x3

    if-le v4, p1, :cond_1

    array-length v4, v3

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v5, v4}, Ljavax/crypto/Cipher;->update([BII)[B

    goto :goto_0

    :cond_1
    array-length v4, v3

    sub-int/2addr v4, v0

    sub-int v4, p1, v4

    array-length v6, v3

    sub-int/2addr v6, v0

    invoke-static {v3, v0, p2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->update([B)[B

    :goto_0
    aget-object p3, p3, v2

    move v2, v1

    :goto_1
    if-eq v2, p1, :cond_2

    aput-byte v1, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    array-length v1, p3

    sub-int/2addr v1, v0

    if-le v1, p1, :cond_3

    array-length p1, p3

    sub-int/2addr p1, v5

    invoke-virtual {p0, p3, v5, p1}, Ljavax/crypto/Cipher;->update([BII)[B

    goto :goto_3

    :cond_3
    array-length v1, p3

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    array-length v1, p3

    sub-int/2addr v1, v0

    invoke-static {p3, v0, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->update([B)[B

    goto :goto_3

    :cond_4
    :goto_2
    aget-object p1, p3, v1

    array-length p2, p1

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, v0, p2}, Ljavax/crypto/Cipher;->update([BII)[B

    :goto_3
    :try_start_1
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "exception decrypting session data"

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "error setting asymmetric cipher"

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private decryptSessionData(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;Lorg/spongycastle/openpgp/PGPPrivateKey;[[B)[B
    .locals 11

    .line 2
    const-string v0, "error setting asymmetric cipher"

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    const/4 v4, 0x0

    aget-object p3, p3, v4

    aget-byte v5, p3, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v7, p3, v6

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    new-array v7, v5, [B

    const/4 v8, 0x2

    invoke-static {p3, v8, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v8

    aget-byte v8, p3, v5

    new-array v9, v8, [B

    add-int/2addr v5, v6

    invoke-static {p3, v5, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p3

    invoke-virtual {p3, v7}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p3

    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-static {v1, v3}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-static {v1}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->getAgreementAlgorithm(Lorg/spongycastle/bcpg/PublicKeyPacket;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    invoke-virtual {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    new-instance v4, Lorg/spongycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-direct {v4, v3}, Lorg/spongycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    invoke-virtual {v1, p2, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p2, Lorg/spongycastle/openpgp/PGPPublicKey;

    new-instance v3, Lorg/spongycastle/bcpg/PublicKeyPacket;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    new-instance v5, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v8

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v10

    invoke-direct {v5, v7, p3, v8, v10}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;II)V

    const/16 p3, 0x12

    invoke-direct {v3, p3, v4, v5}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V

    iget-object p3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {p2, v3, p3}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-virtual {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v1, p1, v6}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->getKeyEncryptionOID(I)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p2

    invoke-virtual {p0, p2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyWrapper(I)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string p1, "Session"

    const/4 p2, 0x3

    invoke-virtual {p0, v9, p1, p2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/openpgp/operator/PGPPad;->unpadSessionData([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public build(Ljava/security/PrivateKey;)Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public build(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;
    .locals 1

    .line 2
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/spongycastle/openpgp/PGPPrivateKey;)V

    return-object v0
.end method

.method public setContentProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setContentProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    .line 2
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    .line 2
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method
