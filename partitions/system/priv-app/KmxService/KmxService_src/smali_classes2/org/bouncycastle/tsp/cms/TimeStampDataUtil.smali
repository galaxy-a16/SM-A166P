.class Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

.field private final timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/TimeStampedData;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getMetaData()Lorg/bouncycastle/asn1/cms/MetaData;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;-><init>(Lorg/bouncycastle/asn1/cms/MetaData;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getTemporalEvidence()Lorg/bouncycastle/asn1/cms/Evidence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/Evidence;->getTstEvidence()Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->toTimeStampAndCRLArray()[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getMetaData()Lorg/bouncycastle/asn1/cms/MetaData;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;-><init>(Lorg/bouncycastle/asn1/cms/MetaData;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getTemporalEvidence()Lorg/bouncycastle/asn1/cms/Evidence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/Evidence;->getTstEvidence()Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->toTimeStampAndCRLArray()[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    return-void
.end method

.method private compareDigest(Lorg/bouncycastle/tsp/TimeStampToken;[B)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintDigest()[B

    move-result-object p0

    invoke-static {p2, p0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;

    const-string p2, "hash calculated is different from MessageImprintDigest found in TimeStampToken"

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;-><init>(Ljava/lang/String;Lorg/bouncycastle/tsp/TimeStampToken;)V

    throw p0
.end method


# virtual methods
.method public calculateNextHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 2

    iget-object p0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception calculating hash: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->getMediaType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampToken(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to extract algorithm ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getOtherMetaData()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object p0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/cms/Attributes;)V

    return-object v0
.end method

.method public getTimeStampToken(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 2

    const-string p0, "token data invalid: "

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->getTimeStampToken()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/tsp/TSPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/bouncycastle/cert/a;->b(Ljava/lang/IllegalArgumentException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TSPException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/cms/CMSException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TSPException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/cms/CMSException;

    throw p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to parse token data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public getTimeStampTokens()[Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/tsp/TimeStampToken;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampToken(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTimeStamps()[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    return-object p0
.end method

.method public initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V

    return-void
.end method

.method public validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[B)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    :try_start_0
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampToken(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v1

    if-lez v0, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p2

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p2

    :cond_0
    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->compareDigest(Lorg/bouncycastle/tsp/TimeStampToken;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cannot create digest: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception calculating hash: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p2}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_1
    return-void
.end method

.method public validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[BLorg/bouncycastle/tsp/TimeStampToken;)V
    .locals 6

    :try_start_0
    invoke-virtual {p3}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    :try_start_1
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampToken(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v2

    if-lez v1, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p2

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p2

    :cond_0
    invoke-direct {p0, v2, p2}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->compareDigest(Lorg/bouncycastle/tsp/TimeStampToken;[B)V

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    move-result-object v2

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "cannot create digest: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exception calculating hash: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p2}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_2
    new-instance p0, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;

    const-string p1, "passed in token not associated with timestamps present"

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;-><init>(Ljava/lang/String;Lorg/bouncycastle/tsp/TimeStampToken;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exception encoding timeStampToken: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p2}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
