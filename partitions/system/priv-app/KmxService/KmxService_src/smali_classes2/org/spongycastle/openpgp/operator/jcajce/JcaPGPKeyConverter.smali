.class public Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

.field private helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method private getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method private getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p2, "EC"

    invoke-virtual {p0, p2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    new-instance p2, Ljava/security/spec/ECGenParameterSpec;

    invoke-static {p1}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    const-class p1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    check-cast p0, Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method


# virtual methods
.method public getPGPPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/spongycastle/openpgp/PGPPrivateKey;
    .locals 2

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown key class"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p2, Ljava/security/interfaces/ECPrivateKey;

    new-instance p0, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/security/interfaces/DSAPrivateKey;

    new-instance p0, Lorg/spongycastle/bcpg/DSASecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/spongycastle/bcpg/DSASecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljavax/crypto/interfaces/DHPrivateKey;

    new-instance p0, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-interface {p2}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    new-instance p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p0, v0, v1, p2}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    new-instance p2, Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1, p0}, Lorg/spongycastle/openpgp/PGPPrivateKey;-><init>(JLorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/BCPGKey;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPGPPublicKey(ILjava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPGPPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public getPGPPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 3

    .line 2
    instance-of v0, p3, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/security/interfaces/RSAPublicKey;

    new-instance p2, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    invoke-interface {p3}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p3, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {p3}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p2

    new-instance v0, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p3}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {v0, v1, v2, p2, p3}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    move-object p2, v0

    goto/16 :goto_1

    :cond_1
    instance-of v0, p3, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_2

    check-cast p3, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {p3}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    new-instance v0, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p3}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_2
    instance-of v0, p3, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/security/Key;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p3

    invoke-virtual {p3}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p3

    invoke-direct {v2, p3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    new-instance p3, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-direct {p3, v1, v2}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    const/16 v1, 0x12

    if-ne p1, v1, :cond_4

    check-cast p2, Lorg/spongycastle/openpgp/PGPKdfParameters;

    if-nez p2, :cond_3

    new-instance p2, Lorg/spongycastle/openpgp/PGPKdfParameters;

    const/16 v1, 0x8

    const/4 v2, 0x7

    invoke-direct {p2, v1, v2}, Lorg/spongycastle/openpgp/PGPKdfParameters;-><init>(II)V

    :cond_3
    new-instance v1, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {p3}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPKdfParameters;->getHashAlgorithm()I

    move-result v2

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPKdfParameters;->getSymmetricWrapAlgorithm()I

    move-result p2

    invoke-direct {v1, v0, p3, v2, p2}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;II)V

    move-object p2, v1

    goto :goto_1

    :cond_4
    const/16 p2, 0x13

    if-ne p1, p2, :cond_5

    new-instance p2, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-virtual {p3}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;)V

    :goto_1
    new-instance p3, Lorg/spongycastle/openpgp/PGPPublicKey;

    new-instance v0, Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, p1, p4, p2}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {p3, v0, p0}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object p3

    :cond_5
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown EC algorithm"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown key class"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;
    .locals 11

    instance-of v0, p1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    :try_start_0
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown public key algorithm encountered"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;

    check-cast p1, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p1, "ECDSA"

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    check-cast p1, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p1, "ECDH"

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    check-cast p1, Lorg/spongycastle/bcpg/DSASecretBCPGKey;

    new-instance v1, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSASecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p1, "DSA"

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    check-cast p1, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;

    new-instance v1, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p1, "ElGamal"

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    check-cast p1, Lorg/spongycastle/bcpg/RSASecretBCPGKey;

    new-instance v10, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p1, "RSA"

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v10}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "Exception constructing key"

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;
    .locals 5

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown public key algorithm encountered"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->decodePoint(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p1, "ECDSA"

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaJcePGPUtil;->decodePoint(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p1, "ECDH"

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p1, "DSA"

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p1, "ElGamal"

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string p1, "RSA"

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "exception constructing public key"

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 2

    .line 2
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method
