.class public Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATTESTATION_CHALLENGE_INDEX:I = 0x4

.field private static final ATTESTATION_SECURITY_LEVEL_INDEX:I = 0x1

.field private static final ATTESTATION_VERSION_INDEX:I = 0x0

.field private static final DOUBLE_LINE:Ljava/lang/String; = "\n\n"

.field private static final KEYMASTER_SECURITY_LEVEL_INDEX:I = 0x3

.field private static final KEYMASTER_VERSION_INDEX:I = 0x2

.field public static final KEY_DESCRIPTION_OID:Ljava/lang/String; = "1.3.6.1.4.1.11129.2.1.17"

.field private static final KNOX_EXTENSION_OID:Ljava/lang/String; = "1.3.6.1.4.1.236.11.3.23.7"

.field private static final KNOX_TEE_PROPERTIES_INTEGRITY_STATUS:I = 0x5

.field private static final LINE_BREAK:Ljava/lang/String; = "\n"

.field private static final LINE_BREAK_4SPACE:Ljava/lang/String; = "\n    "

.field private static final SW_ENFORCED_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String; = "AttestatedCertParser"

.field private static final TEE_ENFORCED_INDEX:I = 0x7

.field private static final UNIQUE_ID_INDEX:I = 0x5


# instance fields
.field private final mAttestationChallenge:[B

.field private final mAttestationSecurityLevel:I

.field private final mAttestationVersion:I

.field private mIntegrityStatus:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;

.field private final mKeymasterSecurityLevel:I

.field private final mKeymasterVersion:I

.field private mSakUID:Ljava/lang/String;

.field private final mSoftwareEnforced:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

.field private final mTeeEnforced:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

.field private final mUniqueId:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getAttestationSequence(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mAttestationVersion:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mAttestationSecurityLevel:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mKeymasterVersion:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mKeymasterSecurityLevel:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mAttestationChallenge:[B

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mUniqueId:[B

    new-instance v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mSoftwareEnforced:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

    new-instance v1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mTeeEnforced:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->getKnoxExtensionSequence(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->parseIntegrityStatus(Lorg/bouncycastle/asn1/ASN1Sequence;)Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mIntegrityStatus:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->parseSakUID(Ljava/security/Principal;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mSakUID:Ljava/lang/String;

    return-void
.end method

.method private getAttestationSequence(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 0

    const-string p0, "1.3.6.1.4.1.11129.2.1.17"

    invoke-interface {p1, p0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getAsn1SequenceFromBytes([B)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string p1, "Did not find extension with OID 1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getKnoxExtensionSequence(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 0

    const-string p0, "1.3.6.1.4.1.236.11.3.23.7"

    invoke-interface {p1, p0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/Asn1Utils;->getAsn1SequenceFromBytes([B)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->TAG:Ljava/lang/String;

    const-string p1, "Not include extension with OID 1.3.6.1.4.1.236.11.3.23.7"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private parseIntegrityStatus(Lorg/bouncycastle/asn1/ASN1Sequence;)Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->TAG:Ljava/lang/String;

    const-string v0, "parseIntegrityStatus : knoxExtSeq is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    new-instance p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->TAG:Ljava/lang/String;

    const-string v0, "parseIntegrityStatus : Not include integrity status in knox extension"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private parseSakUID(Ljava/security/Principal;)Ljava/lang/String;
    .locals 4

    const-string p0, ""

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->TAG:Ljava/lang/String;

    const-string v0, "parseSakUID : issuer is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    const-string v3, "UID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p1, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->TAG:Ljava/lang/String;

    const-string v0, "parseSakUID : result = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method public getAttestAppId()Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mSoftwareEnforced:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->getAttestationAppId()Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestationApplicationId;

    move-result-object p0

    return-object p0
.end method

.method public getBootPatchLevel()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mTeeEnforced:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->getBootPacthLevel()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getChallenge()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mAttestationChallenge:[B

    return-object p0
.end method

.method public getIngetrityStatus()Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mIntegrityStatus:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/IntegrityStatus;

    return-object p0
.end method

.method public getOrigin()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mTeeEnforced:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->getOrigin()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOsPatchLevel()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mTeeEnforced:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->getOsPatchLevel()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRootOfTrust()Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mTeeEnforced:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->getRootOfTrust()Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/RootOfTrust;

    move-result-object p0

    return-object p0
.end method

.method public getSakUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mSakUID:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mKeymasterSecurityLevel:I

    return p0
.end method

.method public getVendorPatchLevel()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AttestatedCertParser;->mTeeEnforced:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/cert/AuthorizationList;->getVendorPacthLevel()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
