.class public Lorg/spongycastle/crypto/tls/TlsDSSSigner;
.super Lorg/spongycastle/crypto/tls/TlsDSASigner;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsDSASigner;-><init>()V

    return-void
.end method


# virtual methods
.method public createDSAImpl(S)Lorg/spongycastle/crypto/DSA;
    .locals 1

    new-instance p0, Lorg/spongycastle/crypto/signers/DSASigner;

    new-instance v0, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/DSASigner;-><init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V

    return-object p0
.end method

.method public getSignatureAlgorithm()S
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z
    .locals 0

    instance-of p0, p1, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    return p0
.end method
