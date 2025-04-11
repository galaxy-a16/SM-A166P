.class public Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final reasons:[Lorg/spongycastle/asn1/ASN1Sequence;


# instance fields
.field private crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field private nextUpdate:Lorg/spongycastle/asn1/x509/Time;

.field private signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private thisUpdate:Lorg/spongycastle/asn1/x509/Time;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/spongycastle/asn1/ASN1Sequence;

    sput-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

    return-void
.end method

.method private static createInvalidityDateExtension(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    :try_start_0
    sget-object v1, Lorg/spongycastle/asn1/x509/Extension;->invalidityDate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error encoding reason: "

    invoke-static {v1, p0}, Lcom/google/protobuf/n;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/CRLReason;->lookup(I)Lorg/spongycastle/asn1/x509/CRLReason;

    move-result-object p0

    :try_start_0
    sget-object v1, Lorg/spongycastle/asn1/x509/Extension;->reasonCode:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error encoding reason: "

    invoke-static {v1, p0}, Lcom/google/protobuf/n;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private internalAddCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance p1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-void
.end method


# virtual methods
.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1UTCTime;I)V
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;I)V

    return-void
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;ILorg/spongycastle/asn1/ASN1GeneralizedTime;)V

    return-void
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;ILorg/spongycastle/asn1/ASN1GeneralizedTime;)V
    .locals 3

    if-eqz p3, :cond_3

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v1, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    array-length v2, v1

    if-ge p3, v2, :cond_1

    if-ltz p3, :cond_0

    aget-object p3, v1, p3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid reason value: "

    .line 3
    invoke-static {p1, p3}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p3}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    if-eqz p4, :cond_2

    invoke-static {p4}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createInvalidityDateExtension(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance p3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p3, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->internalAddCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/ASN1Sequence;)V

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    new-instance p3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-static {p4}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createInvalidityDateExtension(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance p4, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p4, p3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, p1, p2, p4}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->internalAddCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/ASN1Sequence;)V

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x509/Extensions;)V

    :goto_1
    return-void
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 1

    .line 9
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance p1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public generateTBSCertList()Lorg/spongycastle/asn1/x509/TBSCertList;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz p0, :cond_2

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance p0, Lorg/spongycastle/asn1/x509/TBSCertList;

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/x509/TBSCertList;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not all mandatory fields set in V2 TBSCertList generator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExtensions(Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-void
.end method

.method public setExtensions(Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->setExtensions(Lorg/spongycastle/asn1/x509/Extensions;)V

    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x509/X509Name;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/X509Name;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setNextUpdate(Lorg/spongycastle/asn1/ASN1UTCTime;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    return-void
.end method

.method public setNextUpdate(Lorg/spongycastle/asn1/x509/Time;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    return-void
.end method

.method public setSignature(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public setThisUpdate(Lorg/spongycastle/asn1/ASN1UTCTime;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    return-void
.end method

.method public setThisUpdate(Lorg/spongycastle/asn1/x509/Time;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    return-void
.end method
