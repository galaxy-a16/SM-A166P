.class public Lorg/spongycastle/cert/ocsp/RespData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Lorg/spongycastle/asn1/ocsp/ResponseData;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/ResponseData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/ocsp/RespData;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    return-void
.end method


# virtual methods
.method public getProducedAt()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/RespData;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getProducedAt()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/cert/ocsp/OCSPUtils;->extractDate(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getResponderId()Lorg/spongycastle/cert/ocsp/RespID;
    .locals 1

    new-instance v0, Lorg/spongycastle/cert/ocsp/RespID;

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/RespData;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getResponderID()Lorg/spongycastle/asn1/ocsp/ResponderID;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/cert/ocsp/RespID;-><init>(Lorg/spongycastle/asn1/ocsp/ResponderID;)V

    return-object v0
.end method

.method public getResponseExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/RespData;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p0

    return-object p0
.end method

.method public getResponses()[Lorg/spongycastle/cert/ocsp/SingleResp;
    .locals 5

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/RespData;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getResponses()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/spongycastle/cert/ocsp/SingleResp;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Lorg/spongycastle/cert/ocsp/SingleResp;

    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/SingleResponse;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/cert/ocsp/SingleResp;-><init>(Lorg/spongycastle/asn1/ocsp/SingleResponse;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/RespData;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
