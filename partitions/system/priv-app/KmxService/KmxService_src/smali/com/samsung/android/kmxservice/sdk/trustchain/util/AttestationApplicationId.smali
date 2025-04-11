.class public Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId$ByteArrayComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;",
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
            "Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;",
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;

    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-direct {v7, v4, v8, v9}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    aget-object p1, p1, v2

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    array-length v0, p1

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId$ByteArrayComparator;

    invoke-direct {p1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId$ByteArrayComparator;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void

    :cond_2
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p1, "No names found for uid"

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->parseAttestationPackageInfos(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->parseSignatures(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    new-instance p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId$ByteArrayComparator;

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId$ByteArrayComparator;-><init>(I)V

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Expected sequence for AttestationApplicationId, found "

    .line 2
    invoke-static {p1, v0}, Lcom/google/protobuf/n;->j(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
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
            "Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;",
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

    new-instance v1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

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

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

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
.method public compareTo(Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;

    iget-object v3, p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;

    invoke-virtual {v2, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->compareTo(Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;)I

    move-result v2

    if-eqz v2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-eqz v1, :cond_4

    return v1

    :cond_4
    new-instance v2, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId$ByteArrayComparator;

    invoke-direct {v2, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId$ByteArrayComparator;-><init>(I)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId$ByteArrayComparator;->compare([B[B)I

    move-result v1

    if-eqz v1, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->compareTo(Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->compareTo(Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;)I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getAttestationPackageInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    return-object p0
.end method

.method public getSignatureDigests()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "/"

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;

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

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

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
    if-ge v8, v2, :cond_3

    aget-byte v10, v4, v8

    if-eqz v9, :cond_2

    rem-int/lit8 v11, v9, 0x10

    if-nez v11, :cond_2

    const-string v11, "\n   "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
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

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const-string p0, ""

    return-object p0
.end method
