.class public Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KmxChainSdk|AttestationPackageInfo"

.field private static final VERSION_INDEX:I = 0x1


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mVersion:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mPackageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mVersion:J

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getStringFromAsn1OctetStreamAssumingUTF8(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getLongFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mVersion:J

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Converting octet stream to String triggered an UnsupportedEncodingException"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Expected sequence for AttestationPackageInfo, found "

    .line 2
    invoke-static {p1, v0}, Lcom/google/protobuf/n;->j(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const-string v1, ", compare with = "

    const-string v2, "KmxChainSdk|AttestationPackageInfo"

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PackageName is different : expect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-wide v3, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mVersion:J

    iget-wide v5, p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mVersion:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Version is different : expect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mVersion:J

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->compareTo(Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->compareTo(Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;)I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->mVersion:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationPackageInfo;->getVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
