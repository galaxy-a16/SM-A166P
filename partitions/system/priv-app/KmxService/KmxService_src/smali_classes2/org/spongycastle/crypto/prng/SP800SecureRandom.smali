.class public Lorg/spongycastle/crypto/prng/SP800SecureRandom;
.super Ljava/security/SecureRandom;
.source "SourceFile"


# instance fields
.field private drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

.field private final drbgProvider:Lorg/spongycastle/crypto/prng/DRBGProvider;

.field private final entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

.field private final predictionResistant:Z

.field private final randomSource:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/prng/EntropySource;Lorg/spongycastle/crypto/prng/DRBGProvider;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    iput-object p3, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbgProvider:Lorg/spongycastle/crypto/prng/DRBGProvider;

    iput-boolean p4, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-static {p0, p1}, Lorg/spongycastle/crypto/prng/EntropyUtil;->generateSeed(Lorg/spongycastle/crypto/prng/EntropySource;I)[B

    move-result-object p0

    return-object p0
.end method

.method public nextBytes([B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbgProvider:Lorg/spongycastle/crypto/prng/DRBGProvider;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/DRBGProvider;->get(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    iget-boolean v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->generate([B[BZ)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    invoke-interface {v0, v2}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->reseed([B)V

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    iget-boolean v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->generate([B[BZ)I

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reseed([B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbgProvider:Lorg/spongycastle/crypto/prng/DRBGProvider;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/DRBGProvider;->get(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->reseed([B)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSeed(J)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/security/SecureRandom;->setSeed(J)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSeed([B)V
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
