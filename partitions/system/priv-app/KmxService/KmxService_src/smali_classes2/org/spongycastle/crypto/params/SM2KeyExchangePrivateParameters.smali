.class public Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private final ephemeralPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field private final ephemeralPublicPoint:Lorg/spongycastle/math/ec/ECPoint;

.field private final initiator:Z

.field private final staticPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field private final staticPublicPoint:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(ZLorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean p1, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->initiator:Z

    iput-object p2, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPublicPoint:Lorg/spongycastle/math/ec/ECPoint;

    iput-object p3, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPublicPoint:Lorg/spongycastle/math/ec/ECPoint;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Static and ephemeral private keys have different domain parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ephemeralPrivateKey cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "staticPrivateKey cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getEphemeralPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object p0
.end method

.method public getEphemeralPublicPoint()Lorg/spongycastle/math/ec/ECPoint;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPublicPoint:Lorg/spongycastle/math/ec/ECPoint;

    return-object p0
.end method

.method public getStaticPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object p0
.end method

.method public getStaticPublicPoint()Lorg/spongycastle/math/ec/ECPoint;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPublicPoint:Lorg/spongycastle/math/ec/ECPoint;

    return-object p0
.end method

.method public isInitiator()Z
    .locals 0

    iget-boolean p0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->initiator:Z

    return p0
.end method
