.class public Lorg/spongycastle/cert/ocsp/CertificateID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HASH_SHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private final id:Lorg/spongycastle/asn1/ocsp/CertID;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/cert/ocsp/CertificateID;->HASH_SHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/CertID;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'id\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/spongycastle/operator/DigestCalculator;Lorg/spongycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {p1, p2, v0}, Lorg/spongycastle/cert/ocsp/CertificateID;->createCertID(Lorg/spongycastle/operator/DigestCalculator;Lorg/spongycastle/cert/X509CertificateHolder;Lorg/spongycastle/asn1/ASN1Integer;)Lorg/spongycastle/asn1/ocsp/CertID;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    return-void
.end method

.method private static createCertID(Lorg/spongycastle/operator/DigestCalculator;Lorg/spongycastle/cert/X509CertificateHolder;Lorg/spongycastle/asn1/ASN1Integer;)Lorg/spongycastle/asn1/ocsp/CertID;
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Certificate;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-interface {p0}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-interface {p0}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance p1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-interface {p0}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    new-instance v1, Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-interface {p0}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/spongycastle/asn1/ocsp/CertID;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/ocsp/OCSPException;

    const-string p2, "problem creating ID: "

    invoke-static {p2, p0}, Lcom/google/protobuf/n;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static deriveCertificateID(Lorg/spongycastle/cert/ocsp/CertificateID;Ljava/math/BigInteger;)Lorg/spongycastle/cert/ocsp/CertificateID;
    .locals 5

    new-instance v0, Lorg/spongycastle/cert/ocsp/CertificateID;

    new-instance v1, Lorg/spongycastle/asn1/ocsp/CertID;

    iget-object v2, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    new-instance v4, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v4, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, p0, v4}, Lorg/spongycastle/asn1/ocsp/CertID;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/ocsp/CertificateID;-><init>(Lorg/spongycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/cert/ocsp/CertificateID;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/spongycastle/cert/ocsp/CertificateID;

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    iget-object p1, p1, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getHashAlgOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public getIssuerKeyHash()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public getIssuerNameHash()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/CertID;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->hashCode()I

    move-result p0

    return p0
.end method

.method public matchesIssuer(Lorg/spongycastle/cert/X509CertificateHolder;Lorg/spongycastle/operator/DigestCalculatorProvider;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/spongycastle/operator/DigestCalculatorProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;

    move-result-object p2

    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lorg/spongycastle/cert/ocsp/CertificateID;->createCertID(Lorg/spongycastle/operator/DigestCalculator;Lorg/spongycastle/cert/X509CertificateHolder;Lorg/spongycastle/asn1/ASN1Integer;)Lorg/spongycastle/asn1/ocsp/CertID;

    move-result-object p1

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {p1, p0}, Lorg/spongycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/ocsp/OCSPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unable to create digest calculator: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ocsp/CertID;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    return-object p0
.end method
