.class public Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyFactorySpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;

    if-eqz v0, :cond_0

    new-instance p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    check-cast p1, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;

    if-eqz v0, :cond_0

    new-instance p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    check-cast p1, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 2

    const-class v0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/GOST3410Key;->getParameters()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object p0

    invoke-interface {p0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->getPublicKeyParameters()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object p0

    new-instance p2, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;

    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p2, p1, v0, v1, p0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    :cond_0
    const-class v0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/GOST3410Key;->getParameters()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object p0

    invoke-interface {p0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->getPublicKeyParameters()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object p0

    new-instance p2, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;

    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p2, p1, v0, v1, p0}, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 0

    instance-of p0, p1, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    if-eqz p0, :cond_0

    new-instance p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    check-cast p1, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    if-eqz p0, :cond_1

    new-instance p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    check-cast p1, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "key type unknown"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generatePrivate(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 2

    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    sget-object v0, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "algorithm identifier "

    const-string v1, " in key not recognised"

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/cert/a;->d(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generatePublic(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 2

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    sget-object v0, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "algorithm identifier "

    const-string v1, " in key not recognised"

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/cert/a;->d(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
