.class public Lorg/spongycastle/asn1/tsp/Accuracy;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field protected static final MAX_MICROS:I = 0x3e7

.field protected static final MAX_MILLIS:I = 0x3e7

.field protected static final MIN_MICROS:I = 0x1

.field protected static final MIN_MILLIS:I = 0x1


# instance fields
.field micros:Lorg/spongycastle/asn1/ASN1Integer;

.field millis:Lorg/spongycastle/asn1/ASN1Integer;

.field seconds:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->seconds:Lorg/spongycastle/asn1/ASN1Integer;

    const/16 p1, 0x3e7

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid millis field : not in (1..999)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->millis:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    if-lt p2, v0, :cond_2

    invoke-virtual {p3}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    if-gt p2, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid micros field : not in (1..999)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iput-object p3, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->micros:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->seconds:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->millis:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->micros:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->seconds:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/16 v4, 0x3e7

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-ne v3, v5, :cond_2

    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->micros:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-lt v2, v5, :cond_1

    iget-object v2, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->micros:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-gt v2, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid micros field : not in (1..999)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalig tag number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->millis:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-lt v2, v5, :cond_4

    iget-object v2, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->millis:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-gt v2, v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid millis field : not in (1..999)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/Accuracy;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/tsp/Accuracy;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/tsp/Accuracy;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/tsp/Accuracy;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getMicros()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->micros:Lorg/spongycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public getMillis()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->millis:Lorg/spongycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public getSeconds()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->seconds:Lorg/spongycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->seconds:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->millis:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/asn1/tsp/Accuracy;->micros:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz p0, :cond_2

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
