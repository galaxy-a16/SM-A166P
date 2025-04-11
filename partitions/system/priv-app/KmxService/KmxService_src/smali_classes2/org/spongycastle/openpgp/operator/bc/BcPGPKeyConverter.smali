.class public Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPGPPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/openpgp/PGPPrivateKey;
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
    check-cast p2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    new-instance p0, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    new-instance p0, Lorg/spongycastle/bcpg/DSASecretBCPGKey;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/spongycastle/bcpg/DSASecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    new-instance p0, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    new-instance p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

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

.method public getPGPPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 2

    instance-of p0, p3, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz p0, :cond_0

    check-cast p3, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    new-instance p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :cond_0
    instance-of p0, p3, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz p0, :cond_1

    check-cast p3, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/DSAKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object p0

    new-instance p2, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p2, v0, v1, p0, p3}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    move-object p0, p2

    goto/16 :goto_1

    :cond_1
    instance-of p0, p3, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    if-eqz p0, :cond_2

    check-cast p3, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object p0

    new-instance p2, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p2, v0, p0, p3}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_2
    instance-of p0, p3, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz p0, :cond_6

    :try_start_0
    invoke-static {p3}, Lorg/spongycastle/crypto/util/SubjectPublicKeyInfoFactory;->createSubjectPublicKeyInfo(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p3

    invoke-virtual {p3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p3

    invoke-static {p3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p3

    invoke-static {p3}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    new-instance p0, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    const/16 v0, 0x12

    if-ne p1, v0, :cond_4

    check-cast p2, Lorg/spongycastle/openpgp/PGPKdfParameters;

    if-nez p2, :cond_3

    new-instance p2, Lorg/spongycastle/openpgp/PGPKdfParameters;

    const/16 v0, 0x8

    const/4 v1, 0x7

    invoke-direct {p2, v0, v1}, Lorg/spongycastle/openpgp/PGPKdfParameters;-><init>(II)V

    :cond_3
    new-instance v0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPKdfParameters;->getHashAlgorithm()I

    move-result v1

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPKdfParameters;->getSymmetricWrapAlgorithm()I

    move-result p2

    invoke-direct {v0, p3, p0, v1, p2}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;II)V

    move-object p0, v0

    goto :goto_1

    :cond_4
    const/16 p2, 0x13

    if-ne p1, p2, :cond_5

    new-instance p2, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;)V

    goto :goto_0

    :goto_1
    new-instance p2, Lorg/spongycastle/openpgp/PGPPublicKey;

    new-instance p3, Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-direct {p3, p1, p4, p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V

    new-instance p0, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    invoke-direct {p2, p3, p0}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object p2

    :cond_5
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown EC algorithm"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to encode key: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_6
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown key class"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 10

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

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
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;

    check-cast p1, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v8, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p1, v8}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-object v1

    :pswitch_1
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    check-cast p1, Lorg/spongycastle/bcpg/DSASecretBCPGKey;

    new-instance v0, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSASecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, Lorg/spongycastle/crypto/params/DSAParameters;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    check-cast p1, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;

    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    check-cast p1, Lorg/spongycastle/bcpg/RSASecretBCPGKey;

    new-instance v9, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "Exception constructing key"

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 9

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "unknown public key algorithm encountered"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object p1

    new-instance v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->decodePoint(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    new-instance v8, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    new-instance p1, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/crypto/params/DSAParameters;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v0, v1}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    new-instance p1, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v0, v1}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    new-instance p1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "exception constructing public key"

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
