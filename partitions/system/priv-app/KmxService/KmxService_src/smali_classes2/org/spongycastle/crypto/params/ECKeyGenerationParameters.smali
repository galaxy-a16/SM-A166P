.class public Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source "SourceFile"


# instance fields
.field private domainParams:Lorg/spongycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p1, p0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    return-void
.end method


# virtual methods
.method public getDomainParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    return-object p0
.end method
