.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEYMASTER_TAG_TYPE_MASK:I = 0xfffffff

.field private static final KM_ALGORITHM_EC:I = 0x3

.field private static final KM_ALGORITHM_RSA:I = 0x1

.field private static final KM_BOOL:I = 0x70000000

.field private static final KM_BYTES:I = -0x70000000

.field private static final KM_DATE:I = 0x60000000

.field private static final KM_DIGEST_MD5:I = 0x1

.field private static final KM_DIGEST_NONE:I = 0x0

.field private static final KM_DIGEST_SHA1:I = 0x2

.field private static final KM_DIGEST_SHA_2_224:I = 0x3

.field private static final KM_DIGEST_SHA_2_256:I = 0x4

.field private static final KM_DIGEST_SHA_2_384:I = 0x5

.field private static final KM_DIGEST_SHA_2_512:I = 0x6

.field private static final KM_ENUM:I = 0x10000000

.field private static final KM_ENUM_REP:I = 0x20000000

.field public static final KM_ORIGIN_GENERATED:I = 0x0

.field public static final KM_ORIGIN_IMPORTED:I = 0x2

.field public static final KM_ORIGIN_UNKNOWN:I = 0x3

.field private static final KM_PAD_NONE:I = 0x1

.field private static final KM_PAD_PKCS7:I = 0x40

.field private static final KM_PAD_RSA_OAEP:I = 0x2

.field private static final KM_PAD_RSA_PKCS1_1_5_ENCRYPT:I = 0x4

.field private static final KM_PAD_RSA_PKCS1_1_5_SIGN:I = 0x5

.field private static final KM_PAD_RSA_PSS:I = 0x3

.field private static final KM_PURPOSE_DECRYPT:I = 0x1

.field private static final KM_PURPOSE_ENCRYPT:I = 0x0

.field private static final KM_PURPOSE_SIGN:I = 0x2

.field private static final KM_PURPOSE_VERIFY:I = 0x3

.field private static final KM_PURPOSE_WRAP:I = 0x5

.field public static final KM_TAG_ACTIVE_DATETIME:I = 0x60000190

.field public static final KM_TAG_ALGORITHM:I = 0x10000002

.field public static final KM_TAG_ALLOW_WHILE_ON_BODY:I = 0x700001fa

.field public static final KM_TAG_ALL_APPLICATIONS:I = 0x70000258

.field public static final KM_TAG_APPLICATION_ID:I = -0x6ffffda7

.field public static final KM_TAG_ATTESTATION_APPLICATION_ID:I = -0x6ffffd3b

.field public static final KM_TAG_ATTESTATION_ID_BRAND:I = -0x6ffffd3a

.field public static final KM_TAG_ATTESTATION_ID_DEVICE:I = -0x6ffffd39

.field public static final KM_TAG_ATTESTATION_ID_IMEI:I = -0x6ffffd36

.field public static final KM_TAG_ATTESTATION_ID_MANUFACTURER:I = -0x6ffffd34

.field public static final KM_TAG_ATTESTATION_ID_MEID:I = -0x6ffffd35

.field public static final KM_TAG_ATTESTATION_ID_MODEL:I = -0x6ffffd33

.field public static final KM_TAG_ATTESTATION_ID_PRODUCT:I = -0x6ffffd38

.field public static final KM_TAG_ATTESTATION_ID_SERIAL:I = -0x6ffffd37

.field public static final KM_TAG_AUTH_TIMEOUT:I = 0x300001f9

.field public static final KM_TAG_BOOT_PATCHLEVEL:I = 0x300002cf

.field public static final KM_TAG_CREATION_DATETIME:I = 0x600002bd

.field public static final KM_TAG_DIGEST:I = 0x20000005

.field public static final KM_TAG_EC_CURVE:I = 0x1000000a

.field public static final KM_TAG_KEY_SIZE:I = 0x30000003

.field public static final KM_TAG_NO_AUTH_REQUIRED:I = 0x700001f7

.field public static final KM_TAG_ORIGIN:I = 0x100002be

.field public static final KM_TAG_ORIGINATION_EXPIRE_DATETIME:I = 0x60000191

.field public static final KM_TAG_OS_PATCHLEVEL:I = 0x300002c2

.field public static final KM_TAG_OS_VERSION:I = 0x300002c1

.field public static final KM_TAG_PADDING:I = 0x20000006

.field public static final KM_TAG_PURPOSE:I = 0x20000001

.field public static final KM_TAG_ROLLBACK_RESISTANT:I = 0x700002bf

.field public static final KM_TAG_ROOT_OF_TRUST:I = -0x6ffffd40

.field public static final KM_TAG_RSA_PUBLIC_EXPONENT:I = 0x500000c8

.field public static final KM_TAG_USAGE_EXPIRE_DATETIME:I = 0x60000192

.field public static final KM_TAG_USER_AUTH_TYPE:I = 0x100001f8

.field public static final KM_TAG_VENDOR_PATCHLEVEL:I = 0x300002ce

.field private static final KM_UINT:I = 0x30000000

.field private static final KM_ULONG:I = 0x50000000

.field private static final TAG:Ljava/lang/String; = "AuthorizationList"


# instance fields
.field private mAlgorithm:Ljava/lang/Integer;

.field private mAttestationApplicationId:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;

.field private mBootPatchLevel:Ljava/lang/Integer;

.field private mCreationDateTime:Ljava/util/Date;

.field private mDigest:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEcCurve:Ljava/lang/Integer;

.field private mKeySize:Ljava/lang/Integer;

.field private mNoAuthRequired:Z

.field private mOrigin:Ljava/lang/Integer;

.field private mOsPatchLevel:Ljava/lang/Integer;

.field private mOsVersion:Ljava/lang/Integer;

.field private mPurpose:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRootOfTrust:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;

.field private mSb:Ljava/lang/StringBuilder;

.field private mVendorPatchLevel:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->parseAsn1TaggedObject(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parsing tag: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_a

    const/4 v5, 0x2

    if-eq v1, v5, :cond_9

    const/4 v5, 0x3

    if-eq v1, v5, :cond_8

    const/4 v5, 0x5

    if-eq v1, v5, :cond_7

    const/16 v5, 0xa

    if-eq v1, v5, :cond_6

    const/16 v5, 0x1f7

    if-eq v1, v5, :cond_5

    const/16 v3, 0x2c5

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2bd

    if-eq v1, v3, :cond_3

    const/16 v3, 0x2be

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2ce

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2cf

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Skip unkown tag ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mOsPatchLevel:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mOsPatchLevel:Ljava/lang/Integer;

    goto/16 :goto_1

    :pswitch_1
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mOsVersion:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mOsVersion:Ljava/lang/Integer;

    goto/16 :goto_1

    :pswitch_2
    new-instance v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;

    invoke-direct {v2, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mRootOfTrust:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mRootOfTrust:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mBootPatchLevel:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mBootPatchLevel:Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mVendorPatchLevel:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mVendorPatchLevel:Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mOrigin:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mOrigin:Ljava/lang/Integer;

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mCreationDateTime:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mCreationDateTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_4
    new-instance v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getAsn1EncodableFromBytes([B)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mAttestationApplicationId:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mAttestationApplicationId:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    iput-boolean v3, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mNoAuthRequired:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mNoAuthRequired:Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->addTagInfo(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mEcCurve:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mEcCurve:Ljava/lang/Integer;

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mDigest:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mDigest:Ljava/util/Set;

    goto :goto_3

    :cond_8
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mKeySize:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mKeySize:Ljava/lang/Integer;

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->addTagInfo(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mAlgorithm:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mAlgorithm:Ljava/lang/Integer;

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printValue(ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_a
    invoke-static {v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mPurpose:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mPurpose:Ljava/util/Set;

    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->printValue(ILjava/util/Set;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->addTagInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    return-void

    :cond_c
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Expected sequence for authorization list, found "

    invoke-static {p1, v0}, Lcom/google/protobuf/n;->j(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2c0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addTagInfo(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v0, "\n   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private addTagInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v0, "\n   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private addTagInfo(Ljava/lang/String;Z)V
    .locals 3

    .line 3
    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v0, "\n   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static parseAsn1Encodable(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "Failed to parse ASN1 sequence"

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static parseAsn1TaggedObject(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->parseAsn1Encodable(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "Expected tagged object, found "

    invoke-static {p0, v1}, Lcom/google/protobuf/n;->j(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object p0
.end method

.method private printTag(I)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_9

    const/4 p0, 0x3

    if-eq p1, p0, :cond_8

    const/4 p0, 0x5

    if-eq p1, p0, :cond_7

    const/16 p0, 0xa

    if-eq p1, p0, :cond_6

    const/16 p0, 0x1f7

    if-eq p1, p0, :cond_5

    const/16 p0, 0x2c5

    if-eq p1, p0, :cond_4

    const/16 p0, 0x2bd

    if-eq p1, p0, :cond_3

    const/16 p0, 0x2be

    if-eq p1, p0, :cond_2

    const/16 p0, 0x2ce

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2cf

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "printTag() : Unknowm tag : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown tag : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "OS Patch Level"

    return-object p0

    :pswitch_1
    const-string p0, "OS Version"

    return-object p0

    :pswitch_2
    const-string p0, "Root of Trust"

    return-object p0

    :cond_0
    const-string p0, "Boot Patch Level"

    return-object p0

    :cond_1
    const-string p0, "Vendor Patch Level"

    return-object p0

    :cond_2
    const-string p0, "Origin"

    return-object p0

    :cond_3
    const-string p0, "Creation Date Time"

    return-object p0

    :cond_4
    const-string p0, "Attestation Application ID"

    return-object p0

    :cond_5
    const-string p0, "No auth Required"

    return-object p0

    :cond_6
    const-string p0, "EC Curve"

    return-object p0

    :cond_7
    const-string p0, "Digest"

    return-object p0

    :cond_8
    const-string p0, "KeySize"

    return-object p0

    :cond_9
    const-string p0, "Algorithm"

    return-object p0

    :cond_a
    const-string p0, "Purpose"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2c0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private printValue(ILjava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/16 p0, 0x2be

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[printValue] Unknown Tag : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[printValue] Unknown Origin value : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "0 (Generated)"

    return-object p0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[printValue] Unknown Algorithm value : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "EC"

    return-object p0
.end method

.method private printValue(ILjava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    const-string v1, " / "

    const/4 v2, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    sget-object p2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[printValue] Unknown Padding Tag : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    if-eq v3, v0, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[printValue] Unknown Digest Value : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string p2, "6 (SHA-512)"

    goto :goto_1

    :cond_2
    const-string p2, "5 (SHA-384)"

    goto :goto_1

    :cond_3
    const-string p2, "4 (SHA-256)"

    :goto_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[printValue] Unknown Purpose Value : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    const-string p2, " (Verify)"

    goto :goto_4

    :cond_6
    const-string p2, " (Sign)"

    :goto_4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    :goto_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_7
    return-object p0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mAlgorithm:Ljava/lang/Integer;

    return-object p0
.end method

.method public getAttestationAppId()Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mAttestationApplicationId:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;

    return-object p0
.end method

.method public getAuthorizationList()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBootPacthLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mBootPatchLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOrigin()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mOrigin:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOsPatchLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mOsPatchLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRootOfTrust()Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mRootOfTrust:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;

    return-object p0
.end method

.method public getVendorPacthLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->mVendorPatchLevel:Ljava/lang/Integer;

    return-object p0
.end method
