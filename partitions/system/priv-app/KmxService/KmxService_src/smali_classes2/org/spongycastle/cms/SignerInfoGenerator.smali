.class public Lorg/spongycastle/cms/SignerInfoGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private calculatedDigest:[B

.field private certHolder:Lorg/spongycastle/cert/X509CertificateHolder;

.field private final digAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

.field private final digester:Lorg/spongycastle/operator/DigestCalculator;

.field private final sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

.field private final sigEncAlgFinder:Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private final signer:Lorg/spongycastle/operator/ContentSigner;

.field private final signerIdentifier:Lorg/spongycastle/asn1/cms/SignerIdentifier;

.field private final unsAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/operator/DigestCalculatorProvider;Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/cms/SignerInfoGenerator;-><init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/operator/DigestCalculatorProvider;Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/operator/DigestCalculatorProvider;Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lorg/spongycastle/cms/CMSAttributeTableGenerator;Lorg/spongycastle/cms/CMSAttributeTableGenerator;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    iput-object p2, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    if-eqz p3, :cond_0

    invoke-interface {p2}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/spongycastle/operator/DigestCalculatorProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    :goto_0
    iput-object p5, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    iput-object p6, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    iput-object p4, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/operator/DigestCalculatorProvider;Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Z)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    iput-object p2, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    if-eqz p3, :cond_0

    invoke-interface {p2}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/spongycastle/operator/DigestCalculatorProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    :goto_0
    if-eqz p5, :cond_1

    iput-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/spongycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {p1}, Lorg/spongycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    :goto_1
    iput-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    iput-object p4, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/cms/SignerInfoGenerator;Lorg/spongycastle/cms/CMSAttributeTableGenerator;Lorg/spongycastle/cms/CMSAttributeTableGenerator;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iget-object v0, p1, Lorg/spongycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    iget-object v0, p1, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    iget-object v0, p1, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    iget-object p1, p1, Lorg/spongycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iput-object p2, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    iput-object p3, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method

.method private getAttributeSet(Lorg/spongycastle/asn1/cms/AttributeTable;)Lorg/spongycastle/asn1/ASN1Set;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lorg/spongycastle/asn1/DERSet;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getBaseParameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "contentType"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "digestAlgID"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "signatureAlgID"

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "digest"

    invoke-static {p4}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public generate(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/cms/SignerInfo;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v1}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/cms/CMSSignatureEncryptionAlgorithmFinder;->findEncryptionAlgorithm(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iget-object v2, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v2, v6, v3}, Lorg/spongycastle/cms/SignerInfoGenerator;->getBaseParameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/spongycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/cms/SignerInfoGenerator;->getAttributeSet(Lorg/spongycastle/asn1/cms/AttributeTable;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v3}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    move-object v4, v0

    move-object v5, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    iget-object v2, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v2}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    :goto_0
    move-object v4, v0

    move-object v5, v1

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/spongycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v4, v6, v1}, Lorg/spongycastle/cms/SignerInfoGenerator;->getBaseParameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object p1

    const-string v1, "encryptedDigest"

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/spongycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cms/SignerInfoGenerator;->getAttributeSet(Lorg/spongycastle/asn1/cms/AttributeTable;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    move-object v8, p1

    goto :goto_2

    :cond_2
    move-object v8, v1

    :goto_2
    new-instance p1, Lorg/spongycastle/asn1/cms/SignerInfo;

    iget-object v3, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    new-instance v7, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/spongycastle/asn1/cms/SignerInfo;-><init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "encoding error."

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public getAssociatedCertificate()Lorg/spongycastle/cert/X509CertificateHolder;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->certHolder:Lorg/spongycastle/cert/X509CertificateHolder;

    return-object p0
.end method

.method public getCalculatedDigest()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCalculatingOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    if-nez v1, :cond_0

    new-instance v0, Lorg/spongycastle/util/io/TeeOutputStream;

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {p0}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {p0}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digester:Lorg/spongycastle/operator/DigestCalculator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signer:Lorg/spongycastle/operator/ContentSigner;

    invoke-interface {p0}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public getGeneratedVersion()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getSID()Lorg/spongycastle/asn1/cms/SignerIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    return-object p0
.end method

.method public getSignedAttributeTableGenerator()Lorg/spongycastle/cms/CMSAttributeTableGenerator;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method

.method public getUnsignedAttributeTableGenerator()Lorg/spongycastle/cms/CMSAttributeTableGenerator;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    return-object p0
.end method

.method public hasAssociatedCertificate()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->certHolder:Lorg/spongycastle/cert/X509CertificateHolder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAssociatedCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInfoGenerator;->certHolder:Lorg/spongycastle/cert/X509CertificateHolder;

    return-void
.end method
