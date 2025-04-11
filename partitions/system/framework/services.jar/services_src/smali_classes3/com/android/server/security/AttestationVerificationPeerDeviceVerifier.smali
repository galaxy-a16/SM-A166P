.class public Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;
.super Ljava/lang/Object;
.source "AttestationVerificationPeerDeviceVerifier.java"


# static fields
.field public static final ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

.field public static final DEBUG:Z


# instance fields
.field public final mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field public final mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field public final mContext:Landroid/content/Context;

.field public final mRevocationEnabled:Z

.field public final mTestLocalPatchDate:Ljava/time/LocalDate;

.field public final mTestSystemDate:Ljava/time/LocalDate;

.field public final mTrustAnchors:Ljava/util/Set;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 96
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "AVF"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    const-string v0, "AndroidSystem"

    .line 112
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    const-string p1, "X.509"

    .line 124
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const-string p1, "PKIX"

    .line 125
    invoke-static {p1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 126
    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getTrustAnchors()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 129
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;ZLjava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    const-string p1, "X.509"

    .line 138
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const-string p1, "PKIX"

    .line 139
    invoke-static {p1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 140
    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    .line 141
    iput-boolean p3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    .line 142
    iput-object p4, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 143
    iput-object p5, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    return-void
.end method

.method public static debugVerboseLog(Ljava/lang/String;)V
    .locals 1

    .line 608
    sget-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AVF"

    .line 609
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 602
    sget-boolean v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AVF"

    .line 603
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkAttestationChallenge(Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;[B)Z
    .locals 0

    .line 440
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getAttestationChallenge()Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    .line 441
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final checkAttestationForPeerDeviceProfile(Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;)Z
    .locals 3

    .line 364
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getAttestationVersion()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const-string p0, "Attestation version is not at least 3 (Keymaster 4)."

    .line 365
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v2

    .line 370
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeymasterVersion()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    const-string p0, "Keymaster version is not at least 4."

    .line 371
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v2

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyOsVersion()I

    move-result v0

    const v1, 0x186a0

    if-ge v0, v1, :cond_2

    const-string p0, "Android OS version is not 10+."

    .line 377
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v2

    .line 381
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isAttestationHardwareBacked()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Key is not HW backed."

    .line 382
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v2

    .line 386
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isKeymasterHardwareBacked()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "Keymaster is not HW backed."

    .line 387
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v2

    .line 391
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getVerifiedBootState()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    move-result-object v0

    sget-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    if-eq v0, v1, :cond_5

    const-string p0, "Boot state not Verified."

    .line 392
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v2

    .line 397
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isVerifiedBootLocked()Z

    move-result v0

    if-nez v0, :cond_6

    const-string p0, "Verified boot state is not locked."

    .line 398
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 407
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyOsPatchLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "OS patch level is not within valid range."

    .line 408
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v2

    .line 413
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyBootPatchLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result v0

    const-string v1, "Boot patch level is not within valid range."

    if-nez v0, :cond_8

    .line 414
    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v2

    .line 418
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyVendorPatchLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result v0

    if-nez v0, :cond_9

    const-string p0, "Vendor patch level is not within valid range."

    .line 419
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v2

    .line 423
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyBootPatchLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(I)Z

    move-result p0

    if-nez p0, :cond_a

    .line 424
    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v2

    :cond_a
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "VerifiedBootLocked is not set."

    .line 402
    invoke-static {p1, p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public final checkLocalBindingRequirements(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;ILandroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const-string p3, "localbinding.challenge"

    .line 327
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 326
    invoke-virtual {p0, p2, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkAttestationChallenge(Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;[B)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p0, "Provided challenge does not match leaf certificate challenge."

    .line 329
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    .line 336
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported local binding type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {p3}, Landroid/security/attestationverification/AttestationVerificationManager;->localBindingTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p3, "localbinding.public_key"

    .line 316
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 315
    invoke-virtual {p0, p1, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkPublicKey(Ljava/security/cert/Certificate;[B)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p0, "Provided public key does not match leaf certificate public key."

    .line 318
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string p3, "android.key_owned_by_system"

    .line 341
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkOwnedBySystem(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "Certificate public key is not owned by the AndroidSystem."

    .line 347
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    .line 351
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The value of the requirement key android.key_owned_by_system cannot be false. You can remove the key if you don\'t want to verify it."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final checkOwnedBySystem(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;)Z
    .locals 0

    .line 447
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getApplicationPackageNameVersion()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 448
    sget-object p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Owner is not system, packages="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final checkPublicKey(Ljava/security/cert/Certificate;[B)Z
    .locals 0

    .line 433
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    .line 434
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final getCertificateBytes(Ljava/lang/String;)[B
    .locals 1

    const-string p0, "\\s+"

    const-string v0, "\n"

    .line 293
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-BEGIN\\nCERTIFICATE-"

    const-string v0, "-BEGIN CERTIFICATE-"

    .line 294
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-END\\nCERTIFICATE-"

    const-string v0, "-END CERTIFICATE-"

    .line 296
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 298
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getCertificates([B)Ljava/util/List;
    .locals 2

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 220
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-lez p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {p1, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTrustAnchorResources()[Ljava/lang/String;
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10701ec

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTrustAnchors()Ljava/util/Set;
    .locals 8

    .line 278
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getTrustAnchorResources()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 281
    new-instance v5, Ljava/security/cert/TrustAnchor;

    iget-object v6, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 283
    invoke-virtual {p0, v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificateBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 282
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 281
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 286
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 287
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Invalid trust anchor certificate."

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final isValidPatchLevel(I)Z
    .locals 7

    .line 463
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 469
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    if-eqz p0, :cond_1

    goto :goto_1

    .line 472
    :cond_1
    sget-object p0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {p0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :goto_1
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2, p0, v0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    const-wide/16 v4, 0xc

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_2

    return v2

    .line 486
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_3

    const-string p0, "Patch level is not in format YYYYMM or YYYYMMDD"

    .line 488
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v0, 0x4

    .line 492
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 493
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 494
    invoke-static {v6, p1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    .line 498
    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    if-lez v0, :cond_5

    .line 499
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, p0, p1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-gtz p0, :cond_4

    :goto_2
    move v1, v2

    :cond_4
    move v2, v1

    goto :goto_3

    .line 501
    :cond_5
    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    if-gez v0, :cond_6

    .line 502
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-gtz p0, :cond_4

    goto :goto_2

    :cond_6
    :goto_3
    return v2

    .line 475
    :catchall_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Build.VERSION.SECURITY_PATCH: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in format YYYY-MM-DD"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1
.end method

.method public final validateAttestationParameters(ILandroid/os/Bundle;)Z
    .locals 4

    const/4 p0, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, p0, :cond_0

    .line 234
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Binding type is not supported: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    .line 238
    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    const-string p0, "At least 1 requirement is required."

    .line 239
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    const-string v1, "localbinding.public_key"

    .line 243
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "Requirements does not contain key: localbinding.public_key"

    .line 244
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    :cond_2
    if-ne p1, p0, :cond_3

    const-string p0, "localbinding.challenge"

    .line 248
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Requirements does not contain key: localbinding.challenge"

    .line 249
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v0

    :cond_3
    return v3
.end method

.method public final validateCertificateChain(Ljava/util/List;)V
    .locals 3

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1

    .line 265
    new-instance v0, Ljava/security/cert/PKIXParameters;

    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 266
    iget-boolean v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker;-><init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$AndroidRevocationStatusListChecker-IA;)V

    .line 270
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    :cond_0
    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 274
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {p0, p1, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    return-void

    :cond_1
    const-string p0, "Certificate chain less than 2 in size."

    .line 260
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    .line 261
    new-instance p1, Ljava/security/cert/CertificateException;

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyAttestation(ILandroid/os/Bundle;[B)I
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    const-string p0, "Unable to access CertificateFactory"

    .line 164
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    if-nez v0, :cond_1

    const-string p0, "Unable to access CertPathValidator"

    .line 169
    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;)V

    return v1

    .line 175
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateAttestationParameters(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 181
    :cond_2
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificates([B)Ljava/util/List;

    move-result-object p3

    .line 183
    invoke-virtual {p0, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateCertificateChain(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 185
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 186
    invoke-static {p3}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkAttestationForPeerDeviceProfile(Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 194
    :cond_3
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkLocalBindingRequirements(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;ILandroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Unexpected error"

    .line 210
    invoke-static {p1, p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_1
    move-exception p0

    const-string p1, "Unable to parse/validate Android Attestation certificate(s)"

    .line 205
    invoke-static {p1, p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->debugVerboseLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
