.class public Lorg/spongycastle/cert/cmp/CertificateStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private certStatus:Lorg/spongycastle/asn1/cmp/CertStatus;

.field private digestAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/spongycastle/asn1/cmp/CertStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/cmp/CertificateStatus;->digestAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    iput-object p2, p0, Lorg/spongycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/spongycastle/asn1/cmp/CertStatus;

    return-void
.end method


# virtual methods
.method public getCertRequestID()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/spongycastle/asn1/cmp/CertStatus;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cmp/CertStatus;->getCertReqId()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getStatusInfo()Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/spongycastle/asn1/cmp/CertStatus;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cmp/CertStatus;->getStatusInfo()Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object p0

    return-object p0
.end method

.method public isVerified(Lorg/spongycastle/cert/X509CertificateHolder;Lorg/spongycastle/operator/DigestCalculatorProvider;)Z
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/cert/cmp/CertificateStatus;->digestAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p2, v0}, Lorg/spongycastle/operator/DigestCalculatorProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;

    move-result-object p2
    :try_end_0
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/cert/cmp/CMPUtil;->derEncodeToStream(Lorg/spongycastle/asn1/ASN1Encodable;Ljava/io/OutputStream;)V

    iget-object p0, p0, Lorg/spongycastle/cert/cmp/CertificateStatus;->certStatus:Lorg/spongycastle/asn1/cmp/CertStatus;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cmp/CertStatus;->getCertHash()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/cmp/CMPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unable to create digester: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lorg/spongycastle/cert/cmp/CMPException;

    const-string p1, "cannot find algorithm for digest from signature"

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
