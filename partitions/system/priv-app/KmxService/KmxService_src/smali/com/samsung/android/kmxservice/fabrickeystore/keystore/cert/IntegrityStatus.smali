.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ICD:I = 0x2

.field public static final STATUS_ABNORMAL:I = 0x1

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_NOT_SUPPORT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IntegrityStatus"

.field private static final TRUST_BOOT:I = 0x0

.field private static final WARRANTY:I = 0x1


# instance fields
.field private mIcd:I

.field private mTrustBoot:I

.field private mWarranty:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mTrustBoot:I

    iput v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mWarranty:I

    iput v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mIcd:I

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid tag no : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mIcd:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mWarranty:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mTrustBoot:I

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getIcd()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mIcd:I

    return p0
.end method

.method public getTrustBoot()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mTrustBoot:I

    return p0
.end method

.method public getWarranty()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mWarranty:I

    return p0
.end method

.method public isNormal()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mTrustBoot:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mWarranty:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mIcd:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public statusToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Not support"

    return-object p0

    :cond_1
    const-string p0, "Abnormal"

    return-object p0

    :cond_2
    const-string p0, "Normal"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Integrity Status\n   TrustBoot : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mTrustBoot:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n   Warranty : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mWarranty:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n   ICD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->mIcd:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
