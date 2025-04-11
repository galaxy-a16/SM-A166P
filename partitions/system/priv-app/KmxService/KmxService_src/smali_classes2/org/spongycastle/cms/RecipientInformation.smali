.class public abstract Lorg/spongycastle/cms/RecipientInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private additionalData:Lorg/spongycastle/cms/AuthAttributesProvider;

.field protected keyEncAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field protected messageAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private operator:Lorg/spongycastle/cms/RecipientOperator;

.field private resultMac:[B

.field protected rid:Lorg/spongycastle/cms/RecipientId;

.field protected secureReadable:Lorg/spongycastle/cms/CMSSecureReadable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/cms/CMSSecureReadable;Lorg/spongycastle/cms/AuthAttributesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cms/RecipientInformation;->keyEncAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/spongycastle/cms/RecipientInformation;->messageAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/spongycastle/cms/RecipientInformation;->secureReadable:Lorg/spongycastle/cms/CMSSecureReadable;

    iput-object p4, p0, Lorg/spongycastle/cms/RecipientInformation;->additionalData:Lorg/spongycastle/cms/AuthAttributesProvider;

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
.method public getContent(Lorg/spongycastle/cms/Recipient;)[B
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/cms/RecipientInformation;->getContentStream(Lorg/spongycastle/cms/Recipient;)Lorg/spongycastle/cms/CMSTypedStream;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/cms/CMSUtils;->streamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to parse internal stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public getContentDigest()[B
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/cms/RecipientInformation;->secureReadable:Lorg/spongycastle/cms/CMSSecureReadable;

    instance-of v0, p0, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;->getDigest()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentStream(Lorg/spongycastle/cms/Recipient;)Lorg/spongycastle/cms/CMSTypedStream;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/spongycastle/cms/RecipientInformation;->getRecipientOperator(Lorg/spongycastle/cms/Recipient;)Lorg/spongycastle/cms/RecipientOperator;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/RecipientInformation;->operator:Lorg/spongycastle/cms/RecipientOperator;

    iget-object v0, p0, Lorg/spongycastle/cms/RecipientInformation;->additionalData:Lorg/spongycastle/cms/AuthAttributesProvider;

    if-eqz v0, :cond_0

    new-instance p1, Lorg/spongycastle/cms/CMSTypedStream;

    iget-object p0, p0, Lorg/spongycastle/cms/RecipientInformation;->secureReadable:Lorg/spongycastle/cms/CMSSecureReadable;

    invoke-interface {p0}, Lorg/spongycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/cms/CMSTypedStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/spongycastle/cms/CMSTypedStream;

    iget-object p0, p0, Lorg/spongycastle/cms/RecipientInformation;->secureReadable:Lorg/spongycastle/cms/CMSSecureReadable;

    invoke-interface {p0}, Lorg/spongycastle/cms/CMSSecureReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/spongycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/cms/CMSTypedStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getKeyEncryptionAlgOID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/RecipientInformation;->keyEncAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyEncryptionAlgParams()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/RecipientInformation;->keyEncAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/RecipientInformation;->encodeObj(Lorg/spongycastle/asn1/ASN1Encodable;)[B

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

.method public getKeyEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/RecipientInformation;->keyEncAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getMac()[B
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/cms/RecipientInformation;->resultMac:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/cms/RecipientInformation;->operator:Lorg/spongycastle/cms/RecipientOperator;

    invoke-virtual {v0}, Lorg/spongycastle/cms/RecipientOperator;->isMacBased()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/cms/RecipientInformation;->additionalData:Lorg/spongycastle/cms/AuthAttributesProvider;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/RecipientInformation;->operator:Lorg/spongycastle/cms/RecipientOperator;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/spongycastle/cms/RecipientInformation;->additionalData:Lorg/spongycastle/cms/AuthAttributesProvider;

    invoke-interface {v2}, Lorg/spongycastle/cms/AuthAttributesProvider;->getAuthAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/cms/RecipientOperator;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/io/Streams;->drain(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to drain input: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/cms/RecipientInformation;->operator:Lorg/spongycastle/cms/RecipientOperator;

    invoke-virtual {v0}, Lorg/spongycastle/cms/RecipientOperator;->getMac()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/RecipientInformation;->resultMac:[B

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/cms/RecipientInformation;->resultMac:[B

    return-object p0
.end method

.method public getRID()Lorg/spongycastle/cms/RecipientId;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/RecipientInformation;->rid:Lorg/spongycastle/cms/RecipientId;

    return-object p0
.end method

.method public abstract getRecipientOperator(Lorg/spongycastle/cms/Recipient;)Lorg/spongycastle/cms/RecipientOperator;
.end method
