.class public Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;
.source "SourceFile"


# instance fields
.field private agreement:Lorg/spongycastle/pqc/crypto/newhope/NHAgreement;

.field private exchangePairGenerator:Lorg/spongycastle/pqc/crypto/newhope/NHExchangePairGenerator;

.field private otherPartyKey:Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

.field private shared:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "NH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/DerivationFunction;)V

    return-void
.end method


# virtual methods
.method public calcSecret()[B
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object p0

    return-object p0
.end method

.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 0

    if-eqz p2, :cond_1

    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->otherPartyKey:Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    iget-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->exchangePairGenerator:Lorg/spongycastle/pqc/crypto/newhope/NHExchangePairGenerator;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->getKeyParams()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {p2, p1}, Lorg/spongycastle/pqc/crypto/newhope/NHExchangePairGenerator;->generateExchange(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/pqc/crypto/ExchangePair;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/ExchangePair;->getSharedValue()[B

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    new-instance p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/ExchangePair;->getPublicKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;-><init>(Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;)V

    return-object p0

    :cond_0
    iget-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->agreement:Lorg/spongycastle/pqc/crypto/newhope/NHAgreement;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->getKeyParams()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/spongycastle/pqc/crypto/newhope/NHAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NewHope can only be between two parties."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGenerateSecret([BI)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    invoke-static {p1, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    array-length p0, p0

    return p0
.end method

.method public engineGenerateSecret()[B
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    return-object v0
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    new-instance p2, Lorg/spongycastle/pqc/crypto/newhope/NHAgreement;

    invoke-direct {p2}, Lorg/spongycastle/pqc/crypto/newhope/NHAgreement;-><init>()V

    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->agreement:Lorg/spongycastle/pqc/crypto/newhope/NHAgreement;

    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->getKeyParams()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/spongycastle/pqc/crypto/newhope/NHAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/spongycastle/pqc/crypto/newhope/NHExchangePairGenerator;

    invoke-direct {p1, p2}, Lorg/spongycastle/pqc/crypto/newhope/NHExchangePairGenerator;-><init>(Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->exchangePairGenerator:Lorg/spongycastle/pqc/crypto/newhope/NHExchangePairGenerator;

    :goto_0
    return-void
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    .line 2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "NewHope does not require parameters"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
