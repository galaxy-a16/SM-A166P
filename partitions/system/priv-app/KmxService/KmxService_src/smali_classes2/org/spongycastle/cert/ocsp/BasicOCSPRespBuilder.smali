.class public Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private responderID:Lorg/spongycastle/cert/ocsp/RespID;

.field private responseExtensions:Lorg/spongycastle/asn1/x509/Extensions;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/operator/DigestCalculator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    new-instance v0, Lorg/spongycastle/cert/ocsp/RespID;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/cert/ocsp/RespID;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/operator/DigestCalculator;)V

    iput-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/spongycastle/cert/ocsp/RespID;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/cert/ocsp/RespID;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    iput-object p1, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/spongycastle/cert/ocsp/RespID;

    return-void
.end method


# virtual methods
.method public addResponse(Lorg/spongycastle/cert/ocsp/CertificateID;Lorg/spongycastle/cert/ocsp/CertificateStatus;)Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/spongycastle/cert/ocsp/CertificateID;Lorg/spongycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public addResponse(Lorg/spongycastle/cert/ocsp/CertificateID;Lorg/spongycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;)Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/spongycastle/cert/ocsp/CertificateID;Lorg/spongycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public addResponse(Lorg/spongycastle/cert/ocsp/CertificateID;Lorg/spongycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 9

    .line 3
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    new-instance v8, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;-><init>(Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;Lorg/spongycastle/cert/ocsp/CertificateID;Lorg/spongycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addResponse(Lorg/spongycastle/cert/ocsp/CertificateID;Lorg/spongycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 4
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/spongycastle/cert/ocsp/CertificateID;Lorg/spongycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public addResponse(Lorg/spongycastle/cert/ocsp/CertificateID;Lorg/spongycastle/cert/ocsp/CertificateStatus;Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 6

    .line 5
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lorg/spongycastle/cert/ocsp/CertificateID;Lorg/spongycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;

    return-object p0
.end method

.method public build(Lorg/spongycastle/operator/ContentSigner;[Lorg/spongycastle/cert/X509CertificateHolder;Ljava/util/Date;)Lorg/spongycastle/cert/ocsp/BasicOCSPResp;
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    invoke-virtual {v2}, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->toResponse()Lorg/spongycastle/asn1/ocsp/SingleResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/ocsp/OCSPException;

    const-string p2, "exception creating Request"

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/ocsp/ResponseData;

    iget-object v2, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lorg/spongycastle/cert/ocsp/RespID;

    invoke-virtual {v2}, Lorg/spongycastle/cert/ocsp/RespID;->toASN1Primitive()Lorg/spongycastle/asn1/ocsp/ResponderID;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v3, p3}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance p3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p3, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iget-object p0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v0, v2, v3, p3, p0}, Lorg/spongycastle/asn1/ocsp/ResponseData;-><init>(Lorg/spongycastle/asn1/ocsp/ResponderID;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/x509/Extensions;)V

    :try_start_1
    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string p3, "DER"

    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    new-instance p0, Lorg/spongycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getSignature()[B

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    if-eqz p2, :cond_2

    array-length p3, p2

    if-lez p3, :cond_2

    new-instance p3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v2, p2

    if-eq v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/spongycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p2, p3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    new-instance p3, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;

    new-instance v1, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-direct {v1, v0, p1, p0, p2}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lorg/spongycastle/asn1/ocsp/ResponseData;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {p3, v1}, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;-><init>(Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;)V

    return-object p3

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/ocsp/OCSPException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exception processing TBSRequest: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setResponseExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object p0
.end method
