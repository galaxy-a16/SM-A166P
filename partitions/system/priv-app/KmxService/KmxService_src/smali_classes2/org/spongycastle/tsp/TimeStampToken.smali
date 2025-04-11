.class public Lorg/spongycastle/tsp/TimeStampToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/tsp/TimeStampToken$CertID;
    }
.end annotation


# instance fields
.field certID:Lorg/spongycastle/tsp/TimeStampToken$CertID;

.field genTime:Ljava/util/Date;

.field tsToken:Lorg/spongycastle/cms/CMSSignedData;

.field tsaSignerInfo:Lorg/spongycastle/cms/SignerInformation;

.field tstInfo:Lorg/spongycastle/tsp/TimeStampTokenInfo;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/spongycastle/tsp/TimeStampToken;->getSignedData(Lorg/spongycastle/asn1/cms/ContentInfo;)Lorg/spongycastle/cms/CMSSignedData;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TimeStampToken;-><init>(Lorg/spongycastle/cms/CMSSignedData;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/cms/CMSSignedData;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsToken:Lorg/spongycastle/cms/CMSSignedData;

    invoke-virtual {p1}, Lorg/spongycastle/cms/CMSSignedData;->getSignedContentTypeOID()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_TSTInfo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsToken:Lorg/spongycastle/cms/CMSSignedData;

    invoke-virtual {p1}, Lorg/spongycastle/cms/CMSSignedData;->getSignerInfos()Lorg/spongycastle/cms/SignerInformationStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/cms/SignerInformation;

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/spongycastle/cms/SignerInformation;

    :try_start_0
    iget-object p1, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsToken:Lorg/spongycastle/cms/CMSSignedData;

    invoke-virtual {p1}, Lorg/spongycastle/cms/CMSSignedData;->getSignedContent()Lorg/spongycastle/cms/CMSTypedData;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1, v0}, Lorg/spongycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    new-instance p1, Lorg/spongycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lorg/spongycastle/tsp/TimeStampTokenInfo;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/TSTInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/tsp/TimeStampTokenInfo;-><init>(Lorg/spongycastle/asn1/tsp/TSTInfo;)V

    iput-object v0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tstInfo:Lorg/spongycastle/tsp/TimeStampTokenInfo;

    iget-object p1, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/spongycastle/cms/SignerInformation;

    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformation;->getSignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object p1

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/cms/AttributeTable;->get(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/cms/Attribute;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrValues()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ess/SigningCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ess/SigningCertificate;

    move-result-object p1

    new-instance v1, Lorg/spongycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ess/SigningCertificate;->getCerts()[Lorg/spongycastle/asn1/ess/ESSCertID;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/spongycastle/asn1/ess/ESSCertID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ess/ESSCertID;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/spongycastle/tsp/TimeStampToken$CertID;-><init>(Lorg/spongycastle/tsp/TimeStampToken;Lorg/spongycastle/asn1/ess/ESSCertID;)V

    :goto_0
    iput-object v1, p0, Lorg/spongycastle/tsp/TimeStampToken;->certID:Lorg/spongycastle/tsp/TimeStampToken$CertID;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/spongycastle/cms/SignerInformation;

    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformation;->getSignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object p1

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificateV2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/cms/AttributeTable;->get(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/cms/Attribute;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrValues()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ess/SigningCertificateV2;

    move-result-object p1

    new-instance v1, Lorg/spongycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ess/SigningCertificateV2;->getCerts()[Lorg/spongycastle/asn1/ess/ESSCertIDv2;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/spongycastle/asn1/ess/ESSCertIDv2;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ess/ESSCertIDv2;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/spongycastle/tsp/TimeStampToken$CertID;-><init>(Lorg/spongycastle/tsp/TimeStampToken;Lorg/spongycastle/asn1/ess/ESSCertIDv2;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "no signing certificate attribute found, time stamp invalid."

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/spongycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/tsp/TSPException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Time-stamp token signed by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " signers, but it must contain just the TSA signature."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "ContentInfo object not for a time stamp."

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getSignedData(Lorg/spongycastle/asn1/cms/ContentInfo;)Lorg/spongycastle/cms/CMSSignedData;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/spongycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lorg/spongycastle/cms/CMSSignedData;-><init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V
    :try_end_0
    .catch Lorg/spongycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TSP parsing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAttributeCertificates()Lorg/spongycastle/util/Store;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsToken:Lorg/spongycastle/cms/CMSSignedData;

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSSignedData;->getAttributeCertificates()Lorg/spongycastle/util/Store;

    move-result-object p0

    return-object p0
.end method

.method public getCRLs()Lorg/spongycastle/util/Store;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsToken:Lorg/spongycastle/cms/CMSSignedData;

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSSignedData;->getCRLs()Lorg/spongycastle/util/Store;

    move-result-object p0

    return-object p0
.end method

.method public getCertificates()Lorg/spongycastle/util/Store;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsToken:Lorg/spongycastle/cms/CMSSignedData;

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSSignedData;->getCertificates()Lorg/spongycastle/util/Store;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsToken:Lorg/spongycastle/cms/CMSSignedData;

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSSignedData;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getSID()Lorg/spongycastle/cms/SignerId;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/spongycastle/cms/SignerInformation;

    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getSID()Lorg/spongycastle/cms/SignerId;

    move-result-object p0

    return-object p0
.end method

.method public getSignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/spongycastle/cms/SignerInformation;

    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getSignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object p0

    return-object p0
.end method

.method public getTimeStampInfo()Lorg/spongycastle/tsp/TimeStampTokenInfo;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tstInfo:Lorg/spongycastle/tsp/TimeStampTokenInfo;

    return-object p0
.end method

.method public getUnsignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/spongycastle/cms/SignerInformation;

    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object p0

    return-object p0
.end method

.method public isSignatureValid(Lorg/spongycastle/cms/SignerInformationVerifier;)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/spongycastle/cms/SignerInformation;

    invoke-virtual {p0, p1}, Lorg/spongycastle/cms/SignerInformation;->verify(Lorg/spongycastle/cms/SignerInformationVerifier;)Z

    move-result p0
    :try_end_0
    .catch Lorg/spongycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/spongycastle/tsp/TSPException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/spongycastle/tsp/TSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CMS exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toCMSSignedData()Lorg/spongycastle/cms/CMSSignedData;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsToken:Lorg/spongycastle/cms/CMSSignedData;

    return-object p0
.end method

.method public validate(Lorg/spongycastle/cms/SignerInformationVerifier;)V
    .locals 7

    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lorg/spongycastle/cert/X509CertificateHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/tsp/TimeStampToken;->certID:Lorg/spongycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v1}, Lorg/spongycastle/tsp/TimeStampToken$CertID;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/spongycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v2, p0, Lorg/spongycastle/tsp/TimeStampToken;->certID:Lorg/spongycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v2}, Lorg/spongycastle/tsp/TimeStampToken$CertID;->getCertHash()[B

    move-result-object v2

    invoke-interface {v1}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-static {v2, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/spongycastle/tsp/TimeStampToken;->certID:Lorg/spongycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v1}, Lorg/spongycastle/tsp/TimeStampToken$CertID;->getIssuerSerial()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v0}, Lorg/spongycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    iget-object v2, p0, Lorg/spongycastle/tsp/TimeStampToken;->certID:Lorg/spongycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v2}, Lorg/spongycastle/tsp/TimeStampToken$CertID;->getIssuerSerial()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/spongycastle/tsp/TimeStampToken;->certID:Lorg/spongycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v2}, Lorg/spongycastle/tsp/TimeStampToken$CertID;->getIssuerSerial()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v2

    if-eq v4, v5, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "certificate name does not match certID for signature. "

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "certificate serial number does not match certID for signature."

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-static {v0}, Lorg/spongycastle/tsp/TSPUtil;->validateCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)V

    iget-object v1, p0, Lorg/spongycastle/tsp/TimeStampToken;->tstInfo:Lorg/spongycastle/tsp/TimeStampTokenInfo;

    invoke-virtual {v1}, Lorg/spongycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/spongycastle/cms/SignerInformation;

    invoke-virtual {p0, p1}, Lorg/spongycastle/cms/SignerInformation;->verify(Lorg/spongycastle/cms/SignerInformationVerifier;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "signature not created by certificate."

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "certificate not valid when time stamp created."

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lorg/spongycastle/tsp/TSPValidationException;

    const-string p1, "certificate hash does not match certID hash."

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/spongycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/tsp/TSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to create digest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/tsp/TSPException;

    const-string v0, "problem processing certificate: "

    invoke-static {v0, p0}, Lcom/google/protobuf/n;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance p1, Lorg/spongycastle/tsp/TSPException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_8
    new-instance p1, Lorg/spongycastle/tsp/TSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CMS exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "verifier provider needs an associated certificate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
