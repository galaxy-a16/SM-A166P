.class public abstract Lorg/bouncycastle/asn1/ASN1External;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"


# instance fields
.field protected dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

.field protected directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected encoding:I

.field protected externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

.field protected indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1External;->getObjFromVector(Lorg/bouncycastle/asn1/ASN1EncodableVector;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, p0, Lorg/bouncycastle/asn1/ASN1External;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/asn1/ASN1External;->getObjFromVector(Lorg/bouncycastle/asn1/ASN1EncodableVector;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    move v0, v3

    :cond_0
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/bouncycastle/asn1/ASN1External;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1External;->getObjFromVector(Lorg/bouncycastle/asn1/ASN1EncodableVector;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_2

    iput-object v1, p0, Lorg/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1External;->getObjFromVector(Lorg/bouncycastle/asn1/ASN1EncodableVector;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p1

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_4

    instance-of p1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz p1, :cond_3

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1External;->setEncoding(I)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1External;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input vector too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1External;->setDirectReference(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/ASN1External;->setIndirectReference(Lorg/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/ASN1External;->setDataValueDescriptor(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/ASN1External;->setEncoding(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1External;->setExternalContent(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/asn1/DERTaggedObject;)V
    .locals 6

    .line 3
    invoke-virtual {p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ASN1External;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method private getObjFromVector(Lorg/bouncycastle/asn1/ASN1EncodableVector;I)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p0

    if-le p0, p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too few objects in input vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setDataValueDescriptor(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method private setDirectReference(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1External;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private setEncoding(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/asn1/ASN1External;->encoding:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid encoding value: "

    invoke-static {v0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setExternalContent(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1External;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method private setIndirectReference(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1External;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method


# virtual methods
.method public asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1External;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1External;

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1External;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/asn1/ASN1External;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1External;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lorg/bouncycastle/asn1/ASN1External;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_7

    iget-object v2, p1, Lorg/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1External;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    iget-object p1, p1, Lorg/bouncycastle/asn1/ASN1External;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    return p0
.end method

.method public encodedLength()I
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getDataValueDescriptor()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-object p0
.end method

.method public getDirectReference()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1External;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public getEncoding()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/ASN1External;->encoding:I

    return p0
.end method

.method public getExternalContent()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1External;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-object p0
.end method

.method public getIndirectReference()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1External;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1External;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1External;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1External;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isConstructed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 7

    new-instance v6, Lorg/bouncycastle/asn1/DERExternal;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1External;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1External;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    iget v4, p0, Lorg/bouncycastle/asn1/ASN1External;->encoding:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1External;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/DERExternal;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V

    return-object v6
.end method

.method public toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 7

    new-instance v6, Lorg/bouncycastle/asn1/DLExternal;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1External;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1External;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    iget v4, p0, Lorg/bouncycastle/asn1/ASN1External;->encoding:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1External;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/DLExternal;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V

    return-object v6
.end method
