.class public Lcom/samsung/android/kmxservice/common/util/SakUidUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/common/util/SakUidUtils$LazyHolder;
    }
.end annotation


# static fields
.field private static final SAK_CERT_CHAIN_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

.field private mRandom:Ljava/security/SecureRandom;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SakUidUtils"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/LogTag;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-direct {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->mRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;-><init>()V

    return-void
.end method

.method private checkChallengeOfAttestationCert([B[B)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p1, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    const-string v0, "Challenge in different with certificate : "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    sget-object p1, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    const-string p2, "No challenge in the certificate"

    goto :goto_0
.end method

.method private checkKeyOrigin(I)Z
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    const-string p1, "The key was not generated in hardware-backed keystore"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private checkRootOfTrust(Lcom/samsung/android/kmxservice/common/util/RootOfTrust;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->getVerifiedBootState()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    const-string p1, "ROT : VerifiedBootState is invalid"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/util/RootOfTrust;->isDeviceLocked()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    const-string p1, "ROT : Device is unlocked"

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getInstance()Lcom/samsung/android/kmxservice/common/util/SakUidUtils;
    .locals 1

    invoke-static {}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils$LazyHolder;->a()Lcom/samsung/android/kmxservice/common/util/SakUidUtils;

    move-result-object v0

    return-object v0
.end method

.method private makeRandomChallenge()[B
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private parseSakUid(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    const-string p2, "[parseSakUid] SAKm Model"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "UID"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const-string p2, "="

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const-string p2, ":CA"

    :goto_0
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CN="

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const-string p2, "\""

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private verifyCertChain([Ljava/security/cert/Certificate;[BZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    const-string p1, "verifyCertChain certChain is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, p2, p3}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->verifyCertChain([Ljava/security/cert/X509Certificate;[BZ)Z

    move-result p0

    return p0
.end method

.method private verifyCertChain([Ljava/security/cert/X509Certificate;[BZ)Z
    .locals 3

    .line 2
    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    const-string p1, "verifyCertChain certChain is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid certification chain size : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    aget-object v1, p1, v0

    :try_start_0
    new-instance v2, Lcom/samsung/android/kmxservice/common/util/AttestatedCertParser;

    invoke-direct {v2, v1}, Lcom/samsung/android/kmxservice/common/util/AttestatedCertParser;-><init>(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/util/AttestatedCertParser;->getChallenge()[B

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->checkChallengeOfAttestationCert([B[B)Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/util/AttestatedCertParser;->getOrigin()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->checkKeyOrigin(I)Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/util/AttestatedCertParser;->getRootOfTrust()Lcom/samsung/android/kmxservice/common/util/RootOfTrust;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->checkRootOfTrust(Lcom/samsung/android/kmxservice/common/util/RootOfTrust;)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/util/AttestatedCertParser;->getSakUID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/util/SamsungAttestationRootCert;->getSakRoot(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    array-length p2, p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_5

    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 p2, p2, -0x1

    move-object p0, v1

    goto :goto_0

    :cond_5
    return p3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    instance-of p1, p0, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Please set to the current time (Settings > General management > Date and time)"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v0

    :catch_1
    move-exception p0

    sget-object p1, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    const-string p2, "verifyCertChain certificate Parsing Error : "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public getSakUid()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->getSakUid(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSakUid(Z)Ljava/lang/String;
    .locals 7

    .line 2
    const-string v0, "sakUid"

    const-string v1, "ro.security.keystore.keytype"

    invoke-static {v1}, Lcom/samsung/android/kmxservice/common/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v4, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->makeRandomChallenge()[B

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v5, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-direct {p0, v0, v4, p1}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->verifyCertChain([Ljava/security/cert/Certificate;[BZ)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->TAG:Ljava/lang/String;

    const-string p1, "certificate chain verification failed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-object v2

    :cond_1
    move-object v4, v0

    :cond_2
    const/4 p1, 0x0

    aget-object p1, v4, p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sakm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;->parseSakUid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v2
.end method
