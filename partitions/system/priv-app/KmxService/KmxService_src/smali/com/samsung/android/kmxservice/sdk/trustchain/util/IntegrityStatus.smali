.class public Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABNORMAL_ICD:I = 0x4

.field public static final ABNORMAL_KERNEL_STATUS:I = 0x8

.field public static final ABNORMAL_SYSTEM_STATUS:I = 0x10

.field public static final ABNORMAL_TRUST_BOOT:I = 0x1

.field public static final ABNORMAL_WARRANTY:I = 0x2

.field private static final AUTH_RESULT:I = 0x5

.field private static final ICD:I = 0x2

.field private static final KERNEL_STATUS:I = 0x3

.field public static final STATUS_ABNORMAL:I = 0x1

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_NOT_SUPPORT:I = 0x2

.field private static final SYSTEM_STATUS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KmxChainSdk|IntegrityStatus"

.field private static final TRUST_BOOT:I = 0x0

.field private static final WARRANTY:I = 0x1


# instance fields
.field private mIcd:I

.field private mTrustBoot:I

.field private mWarranty:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mTrustBoot:I

    iput v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mWarranty:I

    iput v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mIcd:I

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid tag no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KmxChainSdk|IntegrityStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mIcd:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mWarranty:I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mTrustBoot:I

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getIcd()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mIcd:I

    return p0
.end method

.method public getStatus()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mTrustBoot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    or-int/2addr v0, v2

    iget v3, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mWarranty:I

    if-ne v3, v1, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    or-int/2addr v0, v3

    iget p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mIcd:I

    if-ne p0, v1, :cond_3

    const/4 v2, 0x4

    :cond_3
    or-int p0, v0, v2

    return p0
.end method

.method public getTrustBoot()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mTrustBoot:I

    return p0
.end method

.method public getWarranty()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mWarranty:I

    return p0
.end method

.method public isNormal()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mTrustBoot:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mWarranty:I

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    iget p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mIcd:I

    if-eqz p0, :cond_3

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
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

    const-string v1, "    TrustBoot : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mTrustBoot:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    Warranty : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mWarranty:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    ICD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->mIcd:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->statusToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
