.class public Lorg/spongycastle/asn1/tsp/TSTInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

.field private nonce:Lorg/spongycastle/asn1/ASN1Integer;

.field private ordering:Lorg/spongycastle/asn1/ASN1Boolean;

.field private serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

.field private tsa:Lorg/spongycastle/asn1/x509/GeneralName;

.field private tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/tsp/MessageImprint;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/tsp/Accuracy;Lorg/spongycastle/asn1/ASN1Boolean;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object p1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    iput-object p3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object p4, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    iput-object p5, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    iput-object p6, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    iput-object p7, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object p8, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    iput-object p9, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/tsp/MessageImprint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Object;

    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown tag value "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v1, p1}, Lorg/bouncycastle/cert/a;->m(Lorg/spongycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    goto :goto_1

    :cond_3
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_6

    instance-of v2, v1, Lorg/spongycastle/asn1/tsp/Accuracy;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v2, :cond_5

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v1

    goto :goto_0

    :cond_5
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v1}, Lorg/spongycastle/asn1/tsp/Accuracy;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/Accuracy;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    goto :goto_1

    :cond_7
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/TSTInfo;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/tsp/TSTInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/tsp/TSTInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAccuracy()Lorg/spongycastle/asn1/tsp/Accuracy;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    return-object p0
.end method

.method public getExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object p0
.end method

.method public getGenTime()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object p0
.end method

.method public getMessageImprint()Lorg/spongycastle/asn1/tsp/MessageImprint;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    return-object p0
.end method

.method public getNonce()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public getOrdering()Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    return-object p0
.end method

.method public getPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public getTsa()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object p0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    new-instance v4, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v4, v3, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_3
    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz p0, :cond_4

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v1, v2, v3, p0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_4
    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
