.class public Lorg/spongycastle/cms/SignerInformationVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private digestProvider:Lorg/spongycastle/operator/DigestCalculatorProvider;

.field private sigAlgorithmFinder:Lorg/spongycastle/operator/SignatureAlgorithmIdentifierFinder;

.field private sigNameGenerator:Lorg/spongycastle/cms/CMSSignatureAlgorithmNameGenerator;

.field private verifierProvider:Lorg/spongycastle/operator/ContentVerifierProvider;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/spongycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/spongycastle/operator/ContentVerifierProvider;Lorg/spongycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInformationVerifier;->sigNameGenerator:Lorg/spongycastle/cms/CMSSignatureAlgorithmNameGenerator;

    iput-object p2, p0, Lorg/spongycastle/cms/SignerInformationVerifier;->sigAlgorithmFinder:Lorg/spongycastle/operator/SignatureAlgorithmIdentifierFinder;

    iput-object p3, p0, Lorg/spongycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/spongycastle/operator/ContentVerifierProvider;

    iput-object p4, p0, Lorg/spongycastle/cms/SignerInformationVerifier;->digestProvider:Lorg/spongycastle/operator/DigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public getAssociatedCertificate()Lorg/spongycastle/cert/X509CertificateHolder;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/spongycastle/operator/ContentVerifierProvider;

    invoke-interface {p0}, Lorg/spongycastle/operator/ContentVerifierProvider;->getAssociatedCertificate()Lorg/spongycastle/cert/X509CertificateHolder;

    move-result-object p0

    return-object p0
.end method

.method public getContentVerifier(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/ContentVerifier;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformationVerifier;->sigNameGenerator:Lorg/spongycastle/cms/CMSSignatureAlgorithmNameGenerator;

    invoke-interface {v0, p2, p1}, Lorg/spongycastle/cms/CMSSignatureAlgorithmNameGenerator;->getSignatureName(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformationVerifier;->sigAlgorithmFinder:Lorg/spongycastle/operator/SignatureAlgorithmIdentifierFinder;

    invoke-interface {v0, p2}, Lorg/spongycastle/operator/SignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/spongycastle/operator/ContentVerifierProvider;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-interface {p0, v0}, Lorg/spongycastle/operator/ContentVerifierProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/ContentVerifier;

    move-result-object p0

    return-object p0
.end method

.method public getDigestCalculator(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInformationVerifier;->digestProvider:Lorg/spongycastle/operator/DigestCalculatorProvider;

    invoke-interface {p0, p1}, Lorg/spongycastle/operator/DigestCalculatorProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;

    move-result-object p0

    return-object p0
.end method

.method public hasAssociatedCertificate()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/spongycastle/operator/ContentVerifierProvider;

    invoke-interface {p0}, Lorg/spongycastle/operator/ContentVerifierProvider;->hasAssociatedCertificate()Z

    move-result p0

    return p0
.end method
