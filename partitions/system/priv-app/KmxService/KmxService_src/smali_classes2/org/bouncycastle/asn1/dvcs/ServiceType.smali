.class public Lorg/bouncycastle/asn1/dvcs/ServiceType;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field public static final CCPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

.field public static final CPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

.field public static final VPKC:Lorg/bouncycastle/asn1/dvcs/ServiceType;

.field public static final VSD:Lorg/bouncycastle/asn1/dvcs/ServiceType;


# instance fields
.field private value:Lorg/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VSD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VPKC:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CCPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/ServiceType;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/ServiceType;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dvcs/ServiceType;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dvcs/ServiceType;-><init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/ServiceType;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/ServiceType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getValue()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    iget-object v1, v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v1

    if-ne p0, v1, :cond_0

    const-string p0, "(CPD)"

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VSD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    iget-object v1, v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v1

    if-ne p0, v1, :cond_1

    const-string p0, "(VSD)"

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VPKC:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    iget-object v1, v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v1

    if-ne p0, v1, :cond_2

    const-string p0, "(VPKC)"

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CCPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    iget-object v1, v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->value:Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v1

    if-ne p0, v1, :cond_3

    const-string p0, "(CCPD)"

    goto :goto_0

    :cond_3
    const-string p0, "?"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
