.class public Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private crls:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private status:Lorg/spongycastle/asn1/ASN1EncodableVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->status:Lorg/spongycastle/asn1/ASN1EncodableVector;

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->crls:Lorg/spongycastle/asn1/ASN1EncodableVector;

    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/asn1/cmp/PKIStatusInfo;)Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->status:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method public add(Lorg/spongycastle/asn1/cmp/PKIStatusInfo;Lorg/spongycastle/asn1/crmf/CertId;)Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->status:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->status:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object p1, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "status and revCerts sequence must be in common order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addCrl(Lorg/spongycastle/asn1/x509/CertificateList;)Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->crls:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method public build()Lorg/spongycastle/asn1/cmp/RevRepContent;
    .locals 5

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->status:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->crls:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    iget-object p0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->crls:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {p0}, Lorg/spongycastle/asn1/cmp/RevRepContent;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/RevRepContent;

    move-result-object p0

    return-object p0
.end method
