.class public Lorg/spongycastle/asn1/cms/SCVPReqRes;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final request:Lorg/spongycastle/asn1/cms/ContentInfo;

.field private final response:Lorg/spongycastle/asn1/cms/ContentInfo;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->request:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->request:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->response:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->request:Lorg/spongycastle/asn1/cms/ContentInfo;

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->response:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/ContentInfo;Lorg/spongycastle/asn1/cms/ContentInfo;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->request:Lorg/spongycastle/asn1/cms/ContentInfo;

    iput-object p2, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->response:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/SCVPReqRes;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/cms/SCVPReqRes;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/SCVPReqRes;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getRequest()Lorg/spongycastle/asn1/cms/ContentInfo;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->request:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-object p0
.end method

.method public getResponse()Lorg/spongycastle/asn1/cms/ContentInfo;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->response:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->request:Lorg/spongycastle/asn1/cms/ContentInfo;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/asn1/cms/SCVPReqRes;->response:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
