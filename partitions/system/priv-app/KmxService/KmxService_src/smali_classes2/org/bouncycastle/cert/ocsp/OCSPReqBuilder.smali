.class public Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method private generateRequest(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->toRequest()Lorg/bouncycastle/asn1/ocsp/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string p2, "exception creating Request"

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    if-eqz p1, :cond_4

    iget-object p0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz p0, :cond_3

    :try_start_1
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    if-eqz p2, :cond_2

    array-length v1, p2

    if-lez v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v3, p2

    if-eq v2, v3, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Lorg/bouncycastle/asn1/ocsp/Signature;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p2, p1, p0, v2}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_2

    :cond_2
    new-instance p2, Lorg/bouncycastle/asn1/ocsp/Signature;

    invoke-direct {p2, p1, p0}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string p2, "exception processing TBSRequest: "

    invoke-static {p2, p0}, Lcom/google/protobuf/n;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p0, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string p1, "requestorName must be specified if request is signed."

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 p2, 0x0

    :goto_2
    new-instance p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;

    new-instance p1, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lorg/bouncycastle/asn1/ocsp/TBSRequest;Lorg/bouncycastle/asn1/ocsp/Signature;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/ocsp/OCSPReq;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPRequest;)V

    return-object p0
.end method


# virtual methods
.method public addRequest(Lorg/bouncycastle/cert/ocsp/CertificateID;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;-><init>(Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRequest(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    invoke-direct {v1, p0, p1, p2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;-><init>(Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->generateRequest(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object p0

    return-object p0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->generateRequest(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no signer specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRequestExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object p0
.end method

.method public setRequestorName(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object p0
.end method

.method public setRequestorName(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object p0
.end method
