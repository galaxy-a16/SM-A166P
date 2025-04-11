.class public Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final pkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

.field private final pubKeyAndChal:Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pubKeyAndChal:Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPublicKeyAndChallenge()Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pubKeyAndChal:Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;

    return-object p0
.end method

.method public getSignature()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object p0

    return-object p0
.end method

.method public getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object p0
.end method
