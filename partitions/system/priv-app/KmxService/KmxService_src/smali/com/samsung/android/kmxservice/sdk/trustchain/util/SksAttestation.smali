.class public Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation$LazyHolder;
    }
.end annotation


# static fields
.field private static final SAK_CERT_CHAIN_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KmxChainSdk|SksAttestation"

.field public static final WRAPPING_KEY:Ljava/lang/String; = "WRAPPING_KEY"


# instance fields
.field private final mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->random:Ljava/security/SecureRandom;

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/KmxFaultBarrier;->get(Lcom/samsung/android/kmxservice/sdk/trustchain/util/KmxFaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/security/keystore/AttestationUtils;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;-><init>()V

    return-void
.end method

.method private checkChallengeOfAttestationCert([B[B)Z
    .locals 2

    const/4 p0, 0x0

    const-string v0, "KmxChainSdk|SksAttestation"

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "Challenge in different with certificate : "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const-string p1, "No challenge in the certificate"

    goto :goto_0
.end method

.method private checkIntegrityStatus(Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->isNormal()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;->getStatus()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "integrityStatus is abnormal : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KmxChainSdk|SksAttestation"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private checkKeyOrigin(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "KmxChainSdk|SksAttestation"

    const-string p1, "The key was not generated in hardware-backed keystore"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private checkRootOfTrust(Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;->getVerifiedBootState()I

    move-result p0

    const/4 v0, 0x0

    const-string v1, "KmxChainSdk|SksAttestation"

    if-eqz p0, :cond_0

    const-string p0, "ROT : VerifiedBootState is invalid"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;->isDeviceLocked()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ROT : Device is unlocked"

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getInstance()Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;
    .locals 1

    invoke-static {}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation$LazyHolder;->a()Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;

    move-result-object v0

    return-object v0
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    div-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private makeRandomChallenge()[B
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private parseSakUid(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "KmxChainSdk|SksAttestation"

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

.method private verifyCertChain([Ljava/security/cert/Certificate;[B)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "KmxChainSdk|SksAttestation"

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
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->verifyCertChain([Ljava/security/cert/X509Certificate;[B)Z

    move-result p0

    return p0
.end method

.method private verifyCertChain([Ljava/security/cert/X509Certificate;[B)Z
    .locals 4

    .line 2
    const-string v0, "KmxChainSdk|SksAttestation"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "verifyCertChain certChain is null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    array-length v2, p1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Invalid certification chain size : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    aget-object v2, p1, v1

    :try_start_0
    new-instance v3, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestatedCertParser;

    invoke-direct {v3, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestatedCertParser;-><init>(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestatedCertParser;->getChallenge()[B

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->checkChallengeOfAttestationCert([B[B)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestatedCertParser;->getOrigin()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->checkKeyOrigin(I)Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestatedCertParser;->getRootOfTrust()Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->checkRootOfTrust(Lcom/samsung/android/kmxservice/sdk/trustchain/util/RootOfTrust;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestatedCertParser;->getSakUID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SamsungAttestationRootCert;->getSakRoot(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    array-length p2, p1

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    :goto_0
    if-ltz p2, :cond_5

    aget-object v3, p1, p2

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->checkValidity()V

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 p2, p2, -0x1

    move-object p0, v3

    goto :goto_0

    :cond_5
    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    instance-of p1, p0, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Please set to the current time (Settings > General management > Date and time)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v1

    :catch_1
    move-exception p0

    const-string p1, "verifyCertChain certificate Parsing Error : "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method public getDeviceIntegrity()I
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->makeRandomChallenge()[B

    move-result-object v0

    const-string v1, "integrity"

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const-string p0, "KmxChainSdk|SksAttestation"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not support attestation utils. Need to check build version :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v4, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "KmxChainSdk|SksAttestation"

    const-string v5, "generated key for integrity checking"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v4, v1, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;

    :cond_1
    new-instance v4, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    invoke-direct {v4, v1, v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->setDeviceAttestation(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->setVerifiableIntegrity(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v4, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v4, v1, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "KmxChainSdk|SksAttestation"

    const-string v0, "getDeviceIntegrity certChain is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v3

    :cond_2
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestatedCertParser;

    invoke-direct {v1, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestatedCertParser;-><init>(Ljava/security/cert/X509Certificate;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/AttestatedCertParser;->getIngetrityStatus()Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->checkIntegrityStatus(Lcom/samsung/android/kmxservice/sdk/trustchain/util/IntegrityStatus;)I

    move-result p0

    monitor-exit v2

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KmxChainSdk|SksAttestation"

    const-string v1, "getDeviceIntegrity certificate Parsing Error : "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v2

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSakUid()Ljava/lang/String;
    .locals 7

    const-string v0, "sakUid"

    const-string v1, "ro.security.keystore.keytype"

    invoke-static {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "KmxChainSdk|SksAttestation"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not support attestation utils. Need to check build version :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v4, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->makeRandomChallenge()[B

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v5, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->verifyCertChain([Ljava/security/cert/Certificate;[B)Z

    move-result v4

    if-nez v4, :cond_2

    const-string p0, "KmxChainSdk|SksAttestation"

    const-string v0, "certificate chain verification failed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-object v3

    :cond_2
    move-object v4, v0

    :cond_3
    const/4 v0, 0x0

    aget-object v0, v4, v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sakm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->parseSakUid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
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
    return-object v3
.end method

.method public getWrapKey(Ljava/lang/String;[B)[Ljava/security/cert/X509Certificate;
    .locals 5

    const-string v0, "generate key for wrap key. : "

    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "KmxChainSdk|SksAttestation"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Not support attestation utils. Need to check build version :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v3, 0x20

    invoke-direct {v1, p1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v3, "SHA-256"

    const-string v4, "SHA-1"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v3, "OAEPPadding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v3, "ECB"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    const-string p2, "RSA"

    invoke-virtual {v3, p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->setKeyGenParameterSpec(Landroid/security/keystore/KeyGenParameterSpec;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->setVerifiableIntegrity(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object p2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v3, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "KmxChainSdk|SksAttestation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v0, p2}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "KmxChainSdk|SksAttestation"

    const-string p1, "getWrapKey generateKeyPair is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "KmxChainSdk|SksAttestation"

    const-string v3, "getWrapKey certChain is NULL. Retry key generation."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v0, p2}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "KmxChainSdk|SksAttestation"

    const-string p1, "getWrapKey retrying generateKeyPair is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "KmxChainSdk|SksAttestation"

    const-string p1, "getWrapKey certChain is NULL."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :cond_3
    array-length p0, v0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x0

    :goto_0
    :try_start_2
    array-length p2, v0

    if-ge p1, p2, :cond_4

    aget-object p2, v0, p1

    check-cast p2, Ljava/security/cert/X509Certificate;

    aput-object p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v2

    :goto_2
    return-object p0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    if-nez v0, :cond_0

    const-string p0, "KmxChainSdk|SksAttestation"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Not support attestation utils. Need to check build version :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->deleteKey(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
