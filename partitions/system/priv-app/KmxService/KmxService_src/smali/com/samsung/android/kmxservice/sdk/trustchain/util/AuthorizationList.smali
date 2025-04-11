.class public Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEYMASTER_TAG_TYPE_MASK:I = 0xfffffff

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

.field private static final KM_TAG_ACTIVE_DATETIME:I = 0x60000190

.field private static final KM_TAG_ALGORITHM:I = 0x10000002

.field private static final KM_TAG_ALLOW_WHILE_ON_BODY:I = 0x700001fa

.field private static final KM_TAG_ALL_APPLICATIONS:I = 0x70000258

.field private static final KM_TAG_APPLICATION_ID:I = -0x6ffffda7

.field private static final KM_TAG_ATTESTATION_APPLICATION_ID:I = -0x6ffffd3b

.field private static final KM_TAG_ATTESTATION_ID_BRAND:I = -0x6ffffd3a

.field private static final KM_TAG_ATTESTATION_ID_DEVICE:I = -0x6ffffd39

.field private static final KM_TAG_ATTESTATION_ID_IMEI:I = -0x6ffffd36

.field private static final KM_TAG_ATTESTATION_ID_MANUFACTURER:I = -0x6ffffd34

.field private static final KM_TAG_ATTESTATION_ID_MEID:I = -0x6ffffd35

.field private static final KM_TAG_ATTESTATION_ID_MODEL:I = -0x6ffffd33

.field private static final KM_TAG_ATTESTATION_ID_PRODUCT:I = -0x6ffffd38

.field private static final KM_TAG_ATTESTATION_ID_SERIAL:I = -0x6ffffd37

.field private static final KM_TAG_AUTH_TIMEOUT:I = 0x300001f9

.field private static final KM_TAG_BOOT_PATCHLEVEL:I = 0x300002cf

.field private static final KM_TAG_CREATION_DATETIME:I = 0x600002bd

.field private static final KM_TAG_DIGEST:I = 0x20000005

.field private static final KM_TAG_EC_CURVE:I = 0x1000000a

.field private static final KM_TAG_KEY_SIZE:I = 0x30000003

.field private static final KM_TAG_NO_AUTH_REQUIRED:I = 0x700001f7

.field private static final KM_TAG_ORIGIN:I = 0x100002be

.field private static final KM_TAG_ORIGINATION_EXPIRE_DATETIME:I = 0x60000191

.field private static final KM_TAG_OS_PATCHLEVEL:I = 0x300002c2

.field private static final KM_TAG_OS_VERSION:I = 0x300002c1

.field private static final KM_TAG_PADDING:I = 0x20000006

.field private static final KM_TAG_PURPOSE:I = 0x20000001

.field private static final KM_TAG_ROLLBACK_RESISTANT:I = 0x700002bf

.field private static final KM_TAG_ROOT_OF_TRUST:I = -0x6ffffd40

.field private static final KM_TAG_RSA_PUBLIC_EXPONENT:I = 0x500000c8

.field private static final KM_TAG_USAGE_EXPIRE_DATETIME:I = 0x60000192

.field private static final KM_TAG_USER_AUTH_TYPE:I = 0x100001f8

.field private static final KM_TAG_VENDOR_PATCHLEVEL:I = 0x300002ce

.field private static final KM_UINT:I = 0x30000000

.field private static final KM_ULONG:I = 0x50000000

.field private static final TAG:Ljava/lang/String; = "KmxChainSdk|AuthorizationList"


# instance fields
.field private mActiveDateTime:Ljava/util/Date;

.field private mAlgorithm:Ljava/lang/Integer;

.field private mAllApplications:Z

.field private mAllowWhileOnBody:Z

.field private mApplicationId:[B

.field private mAttestationApplicationId:Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;

.field private mAuthTimeout:Ljava/lang/Integer;

.field private mBootPatchLevel:Ljava/lang/Integer;

.field private mBrand:Ljava/lang/String;

.field private mCreationDateTime:Ljava/util/Date;

.field private mDevice:Ljava/lang/String;

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

.field private mManufacturer:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mNoAuthRequired:Z

.field private mOrigin:Ljava/lang/Integer;

.field private mOriginationExpireDateTime:Ljava/util/Date;

.field private mOsPatchLevel:Ljava/lang/Integer;

.field private mOsVersion:Ljava/lang/Integer;

.field private mPaddingMode:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProduct:Ljava/lang/String;

.field private mPurpose:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRollbackResistant:Z

.field private mRootOfTrust:Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;

.field private mRsaPublicExponent:Ljava/lang/Long;

.field private mSb:Ljava/lang/StringBuilder;

.field private mUsageExpireDateTime:Ljava/util/Date;

.field private mUserAuthType:Ljava/lang/Integer;

.field private mVendorPatchLevel:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->parseAsn1TaggedObject(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing tag: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "KmxChainSdk|AuthorizationList"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v5, 0x2

    if-eq v1, v5, :cond_7

    const/4 v5, 0x3

    if-eq v1, v5, :cond_6

    const/4 v5, 0x5

    if-eq v1, v5, :cond_5

    const/4 v5, 0x6

    if-eq v1, v5, :cond_4

    const/16 v5, 0xa

    if-eq v1, v5, :cond_3

    const/16 v5, 0xc8

    if-eq v1, v5, :cond_2

    const/16 v5, 0x258

    if-eq v1, v5, :cond_1

    const/16 v5, 0x259

    if-eq v1, v5, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    const-string v0, "Skip unkown tag ["

    invoke-static {v0, v1, v3}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mUsageExpireDateTime:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mUsageExpireDateTime:Ljava/util/Date;

    goto/16 :goto_1

    :pswitch_1
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOriginationExpireDateTime:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOriginationExpireDateTime:Ljava/util/Date;

    goto/16 :goto_1

    :pswitch_2
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mActiveDateTime:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mActiveDateTime:Ljava/util/Date;

    goto/16 :goto_1

    :pswitch_3
    iput-boolean v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAllowWhileOnBody:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAllowWhileOnBody:Z

    goto/16 :goto_3

    :pswitch_4
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAuthTimeout:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAuthTimeout:Ljava/lang/Integer;

    goto/16 :goto_4

    :pswitch_5
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mUserAuthType:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mUserAuthType:Ljava/lang/Integer;

    goto/16 :goto_4

    :pswitch_6
    iput-boolean v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mNoAuthRequired:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mNoAuthRequired:Z

    goto/16 :goto_3

    :pswitch_7
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOsPatchLevel:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOsPatchLevel:Ljava/lang/Integer;

    goto/16 :goto_4

    :pswitch_8
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOsVersion:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOsVersion:Ljava/lang/Integer;

    goto/16 :goto_4

    :pswitch_9
    new-instance v2, Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;

    invoke-direct {v2, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mRootOfTrust:Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mRootOfTrust:Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :pswitch_a
    iput-boolean v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mRollbackResistant:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mRollbackResistant:Z

    goto/16 :goto_3

    :pswitch_b
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOrigin:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOrigin:Ljava/lang/Integer;

    goto/16 :goto_5

    :pswitch_c
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mCreationDateTime:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mCreationDateTime:Ljava/util/Date;

    :goto_1
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :pswitch_d
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mBootPatchLevel:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mBootPatchLevel:Ljava/lang/Integer;

    goto/16 :goto_4

    :pswitch_e
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mVendorPatchLevel:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mVendorPatchLevel:Ljava/lang/Integer;

    goto/16 :goto_4

    :pswitch_f
    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mModel:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mModel:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_10
    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mManufacturer:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mManufacturer:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Not support tag in SAK : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_12
    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mProduct:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mProduct:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_13
    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mDevice:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mDevice:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_14
    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mBrand:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mBrand:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_15
    new-instance v2, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getAsn1EncodableFromBytes([B)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAttestationApplicationId:Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAttestationApplicationId:Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mApplicationId:[B

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mApplicationId:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/16 :goto_7

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAllApplications:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAllApplications:Z

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->addTagInfo(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getLongFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mRsaPublicExponent:Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mRsaPublicExponent:Ljava/lang/Long;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->addTagInfo(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mEcCurve:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mEcCurve:Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mPaddingMode:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mPaddingMode:Ljava/util/Set;

    goto :goto_6

    :cond_5
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mDigest:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mDigest:Ljava/util/Set;

    goto :goto_6

    :cond_6
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mKeySize:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mKeySize:Ljava/lang/Integer;

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->addTagInfo(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAlgorithm:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAlgorithm:Ljava/lang/Integer;

    :goto_5
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printValue(ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mPurpose:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printTag(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mPurpose:Ljava/util/Set;

    :goto_6
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->printValue(ILjava/util/Set;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->addTagInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    return-void

    :cond_a
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Expected sequence for authorization list, found "

    invoke-static {p1, v0}, Lcom/google/protobuf/n;->j(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2bd
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2c5
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private addTagInfo(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KmxChainSdk|AuthorizationList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v0, "\n   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private addTagInfo(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KmxChainSdk|AuthorizationList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v0, "\n   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private addTagInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KmxChainSdk|AuthorizationList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v0, "\n   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private addTagInfo(Ljava/lang/String;Z)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KmxChainSdk|AuthorizationList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    const-string v0, "\n   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/Asn1Utils;->getStringFromAsn1OctetStreamAssumingUTF8(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Error parsing ASN.1 value"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
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

    invoke-static {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->parseAsn1Encodable(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1Encodable;

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
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 p0, 0x2

    if-eq p1, p0, :cond_7

    const/4 p0, 0x3

    if-eq p1, p0, :cond_6

    const/4 p0, 0x5

    if-eq p1, p0, :cond_5

    const/4 p0, 0x6

    if-eq p1, p0, :cond_4

    const/16 p0, 0xa

    if-eq p1, p0, :cond_3

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_2

    const/16 p0, 0x258

    if-eq p1, p0, :cond_1

    const/16 p0, 0x259

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "printTag() : Unknowm tag : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KmxChainSdk|AuthorizationList"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown tag : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Boot Patch Level"

    return-object p0

    :pswitch_1
    const-string p0, "Vendor Patch Level"

    return-object p0

    :pswitch_2
    const-string p0, "Attestation ID Model"

    return-object p0

    :pswitch_3
    const-string p0, "Attestation ID Manufacturer"

    return-object p0

    :pswitch_4
    const-string p0, "Attestation ID Product"

    return-object p0

    :pswitch_5
    const-string p0, "Attestation ID Device"

    return-object p0

    :pswitch_6
    const-string p0, "Attestation ID Brand"

    return-object p0

    :pswitch_7
    const-string p0, "Attestation Application ID"

    return-object p0

    :pswitch_8
    const-string p0, "OS Patch Level"

    return-object p0

    :pswitch_9
    const-string p0, "OS Version"

    return-object p0

    :pswitch_a
    const-string p0, "Root of Trust"

    return-object p0

    :pswitch_b
    const-string p0, "Rollback Resistant"

    return-object p0

    :pswitch_c
    const-string p0, "Origin"

    return-object p0

    :pswitch_d
    const-string p0, "Creation Date Time"

    return-object p0

    :pswitch_e
    const-string p0, "Allow While On Body"

    return-object p0

    :pswitch_f
    const-string p0, "Auth Timeout"

    return-object p0

    :pswitch_10
    const-string p0, "User Auth Type"

    return-object p0

    :pswitch_11
    const-string p0, "No auth Required"

    return-object p0

    :pswitch_12
    const-string p0, "Usage Expire Date Time"

    return-object p0

    :pswitch_13
    const-string p0, "Origination Expire Date Time"

    return-object p0

    :pswitch_14
    const-string p0, "Active Date Time"

    return-object p0

    :cond_0
    const-string p0, "Application ID"

    return-object p0

    :cond_1
    const-string p0, "All Applications"

    return-object p0

    :cond_2
    const-string p0, "Rsa Public Exponent"

    return-object p0

    :cond_3
    const-string p0, "EC Curve"

    return-object p0

    :cond_4
    const-string p0, "Padding"

    return-object p0

    :cond_5
    const-string p0, "Digest"

    return-object p0

    :cond_6
    const-string p0, "KeySize"

    return-object p0

    :cond_7
    const-string p0, "Algorithm"

    return-object p0

    :cond_8
    const-string p0, "Purpose"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f7
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2bd
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2c5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2cc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private printValue(ILjava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 p0, 0x3

    const/4 v0, 0x2

    const-string v1, "KmxChainSdk|AuthorizationList"

    if-eq p1, v0, :cond_4

    const/16 v2, 0x2be

    if-eq p1, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[printValue] Unknown Tag : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[printValue] Unknown Origin value : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "3 (Unknown)"

    return-object p0

    :cond_2
    const-string p0, "2 (Imported)"

    return-object p0

    :cond_3
    const-string p0, "0 (Generated)"

    return-object p0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    if-eq p1, p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[printValue] Unknown Algorithm value : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "EC"

    return-object p0

    :cond_6
    const-string p0, "RSA"

    return-object p0
.end method

.method private printValue(ILjava/util/Set;)Ljava/lang/String;
    .locals 8
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

    const/4 v0, 0x2

    const-string v1, " / "

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x1

    const-string v5, "KmxChainSdk|AuthorizationList"

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    const/4 v6, 0x6

    if-eq p1, v6, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[printValue] Unknown Padding Tag : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_6

    if-eq v6, v0, :cond_5

    if-eq v6, v2, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    if-eq v6, v3, :cond_2

    const/16 v7, 0x40

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[printValue] Unknown Padding Value : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string p2, "64 (PKCS7)"

    goto :goto_1

    :cond_2
    const-string p2, "5 (PKCS1_1_5_SIGN)"

    goto :goto_1

    :cond_3
    const-string p2, "4 (PKCS1_1_5_ENCRYPT)"

    goto :goto_1

    :cond_4
    const-string p2, "3 (RSA_PSS)"

    goto :goto_1

    :cond_5
    const-string p2, "2 (RSA_OAEP)"

    goto :goto_1

    :cond_6
    const-string p2, "1 (NONE)"

    :goto_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[printValue] Unknown Digest Value : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_0
    const-string p2, "6 (SHA-512)"

    goto :goto_4

    :pswitch_1
    const-string p2, "5 (SHA-384)"

    goto :goto_4

    :pswitch_2
    const-string p2, "4 (SHA-256)"

    goto :goto_4

    :pswitch_3
    const-string p2, "3 (SHA-224)"

    goto :goto_4

    :pswitch_4
    const-string p2, "2 (SHA-1)"

    goto :goto_4

    :pswitch_5
    const-string p2, "1 (MD5)"

    goto :goto_4

    :pswitch_6
    const-string p2, "0 (NONE)"

    :goto_4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_d

    if-eq v6, v4, :cond_c

    if-eq v6, v0, :cond_b

    if-eq v6, v2, :cond_a

    if-eq v6, v3, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[printValue] Unknown Purpose Value : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_9
    const-string p2, " (WrapKey)"

    goto :goto_7

    :cond_a
    const-string p2, " (Verify)"

    goto :goto_7

    :cond_b
    const-string p2, " (Sign)"

    goto :goto_7

    :cond_c
    const-string p2, " (Decrypt)"

    goto :goto_7

    :cond_d
    const-string p2, " (Encrypt)"

    :goto_7
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_e
    :goto_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_a
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActiveDateTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mActiveDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public getAlgorithm()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAlgorithm:Ljava/lang/Integer;

    return-object p0
.end method

.method public getAllApplications()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAllApplications:Z

    return p0
.end method

.method public getAllowWhileOnBody()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAllowWhileOnBody:Z

    return p0
.end method

.method public getApplicationId()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mApplicationId:[B

    return-object p0
.end method

.method public getAttestationAppId()Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAttestationApplicationId:Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestationApplicationId;

    return-object p0
.end method

.method public getAuthTimeout()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mAuthTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public getAuthorizationList()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBootPacthLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mBootPatchLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mBrand:Ljava/lang/String;

    return-object p0
.end method

.method public getCreationDateTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mCreationDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mDevice:Ljava/lang/String;

    return-object p0
.end method

.method public getDigest()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mDigest:Ljava/util/Set;

    return-object p0
.end method

.method public getEcCurve()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mEcCurve:Ljava/lang/Integer;

    return-object p0
.end method

.method public getKeySize()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mKeySize:Ljava/lang/Integer;

    return-object p0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mManufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mModel:Ljava/lang/String;

    return-object p0
.end method

.method public getNoAuthRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mNoAuthRequired:Z

    return p0
.end method

.method public getOrigin()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOrigin:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOriginationExpireDateTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOriginationExpireDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public getOsPatchLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOsPatchLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOsVersion()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mOsVersion:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingMode()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mPaddingMode:Ljava/util/Set;

    return-object p0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mProduct:Ljava/lang/String;

    return-object p0
.end method

.method public getPurpose()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mPurpose:Ljava/util/Set;

    return-object p0
.end method

.method public getRollBackResistant()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mRollbackResistant:Z

    return p0
.end method

.method public getRootOfTrust()Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mRootOfTrust:Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;

    return-object p0
.end method

.method public getRsaPublicExponent()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mRsaPublicExponent:Ljava/lang/Long;

    return-object p0
.end method

.method public getUsageExpireDateTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mUsageExpireDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public getUserAuthType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mUserAuthType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVendorPacthLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AuthorizationList;->mVendorPatchLevel:Ljava/lang/Integer;

    return-object p0
.end method
