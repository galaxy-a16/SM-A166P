.class public Lcom/samsung/android/kmxservice/common/util/SksAttestation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/common/util/SksAttestation$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SksAttestation"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/LogTag;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier;->get(Lcom/samsung/android/kmxservice/common/util/KmxFaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/security/keystore/AttestationUtils;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/util/SksAttestation;-><init>()V

    return-void
.end method

.method private checkIntegrityStatus(Lcom/samsung/android/kmxservice/common/util/IntegrityStatus;)I
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->TAG:Ljava/lang/String;

    const-string p1, "integrityStatus is abnormal null: "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/util/IntegrityStatus;->getStatus()I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/samsung/android/kmxservice/common/util/SksAttestation;
    .locals 1

    invoke-static {}, Lcom/samsung/android/kmxservice/common/util/SksAttestation$LazyHolder;->a()Lcom/samsung/android/kmxservice/common/util/SksAttestation;

    move-result-object v0

    return-object v0
.end method

.method private makeRandomChallenge()[B
    .locals 1

    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method


# virtual methods
.method public getDeviceIntegrity()I
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->makeRandomChallenge()[B

    move-result-object v0

    const-string v1, "integrity"

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->TAG:Ljava/lang/String;

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
    iget-object v4, p0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v4, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->TAG:Ljava/lang/String;

    const-string v5, "generated key for integrity checking"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

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

    iget-object v4, p0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v4, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v4, v1, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->mAttestationUtils:Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->TAG:Ljava/lang/String;

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
    new-instance v1, Lcom/samsung/android/kmxservice/common/util/AttestatedCertParser;

    invoke-direct {v1, v0}, Lcom/samsung/android/kmxservice/common/util/AttestatedCertParser;-><init>(Ljava/security/cert/X509Certificate;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/util/AttestatedCertParser;->getIngetrityStatus()Lcom/samsung/android/kmxservice/common/util/IntegrityStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->checkIntegrityStatus(Lcom/samsung/android/kmxservice/common/util/IntegrityStatus;)I

    move-result p0

    monitor-exit v2

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;->TAG:Ljava/lang/String;

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
