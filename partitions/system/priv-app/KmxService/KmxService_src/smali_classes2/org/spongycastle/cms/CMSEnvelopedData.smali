.class public Lorg/spongycastle/cms/CMSEnvelopedData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/Encodable;


# instance fields
.field contentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

.field private encAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lorg/spongycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/spongycastle/cms/RecipientInformationStore;

.field private unprotectedAttributes:Lorg/spongycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/spongycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cms/CMSEnvelopedData;-><init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V
    .locals 5

    .line 2
    const-string v0, "Malformed content."

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->contentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/ContentInfo;->getContent()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EnvelopedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/EnvelopedData;->getOriginatorInfo()Lorg/spongycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/spongycastle/cms/OriginatorInformation;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/EnvelopedData;->getOriginatorInfo()Lorg/spongycastle/asn1/cms/OriginatorInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/cms/OriginatorInformation;-><init>(Lorg/spongycastle/asn1/cms/OriginatorInfo;)V

    iput-object v1, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->originatorInfo:Lorg/spongycastle/cms/OriginatorInformation;

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/EnvelopedData;->getRecipientInfos()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/EnvelopedData;->getEncryptedContentInfo()Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->getContentEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->encAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v3, Lorg/spongycastle/cms/CMSProcessableByteArray;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->getEncryptedContent()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/spongycastle/cms/CMSProcessableByteArray;-><init>([B)V

    new-instance v2, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;

    iget-object v4, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->encAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/cms/CMSReadable;)V

    iget-object v3, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->encAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v1, v3, v2}, Lorg/spongycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/cms/CMSSecureReadable;)Lorg/spongycastle/cms/RecipientInformationStore;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->recipientInfoStore:Lorg/spongycastle/cms/RecipientInformationStore;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/EnvelopedData;->getUnprotectedAttrs()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->unprotectedAttributes:Lorg/spongycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cms/CMSException;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/cms/CMSException;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/spongycastle/cms/CMSUtils;->readContentInfo([B)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cms/CMSEnvelopedData;-><init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method private encodeObj(Lorg/spongycastle/asn1/ASN1Encodable;)[B
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContentEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->encAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->contentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->encAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptionAlgParams()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->encAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/CMSEnvelopedData;->encodeObj(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "exception getting encryption parameters "

    invoke-static {v1, p0}, Lcom/google/protobuf/n;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOriginatorInfo()Lorg/spongycastle/cms/OriginatorInformation;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->originatorInfo:Lorg/spongycastle/cms/OriginatorInformation;

    return-object p0
.end method

.method public getRecipientInfos()Lorg/spongycastle/cms/RecipientInformationStore;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->recipientInfoStore:Lorg/spongycastle/cms/RecipientInformationStore;

    return-object p0
.end method

.method public getUnprotectedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->unprotectedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/cms/AttributeTable;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/AttributeTable;-><init>(Lorg/spongycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/cms/ContentInfo;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/CMSEnvelopedData;->contentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-object p0
.end method
