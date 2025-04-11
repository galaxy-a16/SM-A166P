.class public Lcom/samsung/android/kmxservice/common/util/RootOfTrust;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEVICE_LOCKED_INDEX:I = 0x1

.field public static final KM_VERIFIED_BOOT_FAILED:I = 0x3

.field public static final KM_VERIFIED_BOOT_SELF_SIGNED:I = 0x1

.field public static final KM_VERIFIED_BOOT_UNVERIFIED:I = 0x2

.field public static final KM_VERIFIED_BOOT_VERIFIED:I = 0x0

.field private static final LINE_BREAK_3SPACE:Ljava/lang/String; = "\n   "

.field private static final VERIFIED_BOOT_HASH_INDEX:I = 0x3

.field private static final VERIFIED_BOOT_KEY_INDEX:I = 0x0

.field private static final VERIFIED_BOOT_STATE_INDEX:I = 0x2


# instance fields
.field private final DIGITS:[C

.field private mDeviceLocked:Z

.field private mVerifiedBootHash:[B

.field private mVerifiedBootKey:[B

.field private mVerifiedBootState:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->DIGITS:[C

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootKey:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mDeviceLocked:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootState:I

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootHash:[B

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/common/util/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootHash:[B

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/common/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootState:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/common/util/Asn1Utils;->getBooleanFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mDeviceLocked:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/common/util/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootKey:[B

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Expected sequence for root of trust, found "

    invoke-static {p1, v0}, Lcom/google/protobuf/n;->j(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static verifiedBootStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "Failed"

    return-object p0

    :cond_1
    const-string p0, "Unverified"

    return-object p0

    :cond_2
    const-string p0, "Self-signed"

    return-object p0

    :cond_3
    const-string p0, "Verified"

    return-object p0
.end method


# virtual methods
.method public getVerifiedBootKey()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootKey:[B

    return-object p0
.end method

.method public getVerifiedBootState()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootState:I

    return p0
.end method

.method public isDeviceLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mDeviceLocked:Z

    return p0
.end method

.method public toHex([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    iget-object v4, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Verified boot Key :\n   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootKey:[B

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "\n   Device locked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mDeviceLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n   Verified boot state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootState:I

    invoke-static {v1}, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->verifiedBootStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootHash:[B

    if-eqz v1, :cond_1

    const-string v1, "\n   Verified boot hash :\n   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->mVerifiedBootHash:[B

    invoke-virtual {p0, v1}, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
