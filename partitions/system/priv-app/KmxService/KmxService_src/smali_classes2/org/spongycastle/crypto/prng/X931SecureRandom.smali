.class public Lorg/spongycastle/crypto/prng/X931SecureRandom;
.super Ljava/security/SecureRandom;
.source "SourceFile"


# instance fields
.field private final drbg:Lorg/spongycastle/crypto/prng/X931RNG;

.field private final predictionResistant:Z

.field private final randomSource:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/prng/X931RNG;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/X931RNG;

    iput-boolean p3, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/X931RNG;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/prng/X931RNG;->getEntropySource()Lorg/spongycastle/crypto/prng/EntropySource;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/spongycastle/crypto/prng/EntropyUtil;->generateSeed(Lorg/spongycastle/crypto/prng/EntropySource;I)[B

    move-result-object p0

    return-object p0
.end method

.method public nextBytes([B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/X931RNG;

    iget-boolean v1, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/crypto/prng/X931RNG;->generate([BZ)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/X931RNG;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/prng/X931RNG;->reseed()V

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/X931RNG;

    iget-boolean v1, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/crypto/prng/X931RNG;->generate([BZ)I

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

.method public setSeed(J)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

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
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

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
