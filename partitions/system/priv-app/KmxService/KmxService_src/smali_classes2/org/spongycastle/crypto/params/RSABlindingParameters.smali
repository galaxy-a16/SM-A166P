.class public Lorg/spongycastle/crypto/params/RSABlindingParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private blindingFactor:Ljava/math/BigInteger;

.field private publicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/spongycastle/crypto/params/RSABlindingParameters;->publicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/params/RSABlindingParameters;->blindingFactor:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA parameters should be for a public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBlindingFactor()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/RSABlindingParameters;->blindingFactor:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getPublicKey()Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/RSABlindingParameters;->publicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    return-object p0
.end method
