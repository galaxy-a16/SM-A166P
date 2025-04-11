.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId$ByteArrayComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;",
        ">;"
    }
.end annotation


# static fields
.field private static final PACKAGE_INFOS_INDEX:I = 0x0

.field private static final SIGNATURE_DIGESTS_INDEX:I = 0x1


# instance fields
.field private final packageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final signatureDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->parseAttestationPackageInfos(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->packageInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->parseSignatures(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    new-instance p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId$ByteArrayComparator;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId$ByteArrayComparator;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId$1;)V

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Expected sequence for AttestationApplicationId, found "

    invoke-static {p1, v0}, Lcom/google/protobuf/n;->j(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseAttestationPackageInfos(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationPackageInfo;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationPackageInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationPackageInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Expected set for AttestationApplicationsInfos, found "

    invoke-static {p1, v0}, Lcom/google/protobuf/n;->j(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseSignatures(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    instance-of p0, p1, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Expected set for Signature digests, found "

    invoke-static {p1, v0}, Lcom/google/protobuf/n;->j(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationPackageInfo;

    iget-object v3, p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationPackageInfo;

    invoke-virtual {v2, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationPackageInfo;->compareTo(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationPackageInfo;)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    new-instance v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId$ByteArrayComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId$ByteArrayComparator;-><init>(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId$1;)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId$ByteArrayComparator;->compare([B[B)I

    move-result v1

    if-eqz v1, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->compareTo(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->compareTo(Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "/"

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationPackageInfo;

    const-string v7, "## Package info ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ##\n      "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v7

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "\n   ## Signature digest ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") ##\n   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_2
    if-ge v8, v2, :cond_2

    aget-byte v10, v4, v8

    if-eqz v9, :cond_1

    rem-int/lit8 v11, v9, 0x10

    if-nez v11, :cond_1

    const-string v11, "\n   "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v9, v9, 0x1

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v11, v7

    const-string v10, "%02X "

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
