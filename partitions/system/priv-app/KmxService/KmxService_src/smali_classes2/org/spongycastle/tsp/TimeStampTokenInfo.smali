.class public Lorg/spongycastle/tsp/TimeStampTokenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field genTime:Ljava/util/Date;

.field tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/tsp/TSTInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getGenTime()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->genTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lorg/spongycastle/tsp/TSPException;

    const-string p1, "unable to parse genTime field"

    invoke-direct {p0, p1}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAccuracy()Lorg/spongycastle/asn1/tsp/Accuracy;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getAccuracy()Lorg/spongycastle/asn1/tsp/Accuracy;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p0

    return-object p0
.end method

.method public getGenTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->genTime:Ljava/util/Date;

    return-object p0
.end method

.method public getGenTimeAccuracy()Lorg/spongycastle/tsp/GenTimeAccuracy;
    .locals 1

    invoke-virtual {p0}, Lorg/spongycastle/tsp/TimeStampTokenInfo;->getAccuracy()Lorg/spongycastle/asn1/tsp/Accuracy;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/tsp/GenTimeAccuracy;

    invoke-virtual {p0}, Lorg/spongycastle/tsp/TimeStampTokenInfo;->getAccuracy()Lorg/spongycastle/asn1/tsp/Accuracy;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/tsp/GenTimeAccuracy;-><init>(Lorg/spongycastle/asn1/tsp/Accuracy;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/spongycastle/asn1/tsp/MessageImprint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public getMessageImprintAlgOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/spongycastle/asn1/tsp/MessageImprint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public getMessageImprintDigest()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/spongycastle/asn1/tsp/MessageImprint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object p0

    return-object p0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getNonce()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getNonce()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getTsa()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getTsa()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object p0

    return-object p0
.end method

.method public isOrdered()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getOrdering()Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p0

    return p0
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/tsp/TSTInfo;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    return-object p0
.end method

.method public toTSTInfo()Lorg/spongycastle/asn1/tsp/TSTInfo;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/spongycastle/asn1/tsp/TSTInfo;

    return-object p0
.end method
