.class public Lorg/spongycastle/asn1/cmc/EncryptedPOP;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final cms:Lorg/spongycastle/asn1/cms/ContentInfo;

.field private final request:Lorg/spongycastle/asn1/cmc/TaggedRequest;

.field private final thePOPAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private final witness:[B

.field private final witnessAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/TaggedRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->request:Lorg/spongycastle/asn1/cmc/TaggedRequest;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->cms:Lorg/spongycastle/asn1/cms/ContentInfo;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->thePOPAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witnessAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, v0}, Lorg/bouncycastle/cert/a;->D(Lorg/spongycastle/asn1/ASN1Sequence;I)[B

    move-result-object p1

    .line 2
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witness:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incorrect sequence size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/TaggedRequest;Lorg/spongycastle/asn1/cms/ContentInfo;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->request:Lorg/spongycastle/asn1/cmc/TaggedRequest;

    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->cms:Lorg/spongycastle/asn1/cms/ContentInfo;

    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->thePOPAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p4, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witnessAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p5}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witness:[B

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/EncryptedPOP;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmc/EncryptedPOP;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCms()Lorg/spongycastle/asn1/cms/ContentInfo;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->cms:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-object p0
.end method

.method public getRequest()Lorg/spongycastle/asn1/cmc/TaggedRequest;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->request:Lorg/spongycastle/asn1/cmc/TaggedRequest;

    return-object p0
.end method

.method public getThePOPAlgID()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->thePOPAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getWitness()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witness:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getWitnessAlgID()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witnessAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->request:Lorg/spongycastle/asn1/cmc/TaggedRequest;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->cms:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->thePOPAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witnessAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget-object p0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witness:[B

    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
