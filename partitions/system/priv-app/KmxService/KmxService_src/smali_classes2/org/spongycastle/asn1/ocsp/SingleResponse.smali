.class public Lorg/spongycastle/asn1/ocsp/SingleResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private certID:Lorg/spongycastle/asn1/ocsp/CertID;

.field private certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

.field private nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private thisUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/CertID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certID:Lorg/spongycastle/asn1/ocsp/CertID;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/CertStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-le v1, v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    :cond_0
    invoke-static {p1, v0}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/CertID;Lorg/spongycastle/asn1/ocsp/CertStatus;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certID:Lorg/spongycastle/asn1/ocsp/CertID;

    iput-object p2, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    iput-object p3, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    iput-object p4, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    iput-object p5, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/CertID;Lorg/spongycastle/asn1/ocsp/CertStatus;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 6

    .line 3
    invoke-static {p5}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/spongycastle/asn1/ocsp/CertID;Lorg/spongycastle/asn1/ocsp/CertStatus;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/x509/Extensions;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/SingleResponse;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/ocsp/SingleResponse;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/SingleResponse;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/SingleResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCertID()Lorg/spongycastle/asn1/ocsp/CertID;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certID:Lorg/spongycastle/asn1/ocsp/CertID;

    return-object p0
.end method

.method public getCertStatus()Lorg/spongycastle/asn1/ocsp/CertStatus;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    return-object p0
.end method

.method public getNextUpdate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object p0
.end method

.method public getSingleExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object p0
.end method

.method public getThisUpdate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certID:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz p0, :cond_1

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v1, v2, v2, p0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
