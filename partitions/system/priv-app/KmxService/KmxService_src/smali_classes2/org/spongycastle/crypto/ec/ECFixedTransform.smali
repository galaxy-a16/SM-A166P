.class public Lorg/spongycastle/crypto/ec/ECFixedTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/ec/ECPairFactorTransform;


# instance fields
.field private k:Ljava/math/BigInteger;

.field private key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->k:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 0

    new-instance p0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {p0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object p0
.end method

.method public getTransformValue()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->k:Ljava/math/BigInteger;

    return-object p0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ECPublicKeyParameters are required for fixed transform."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transform(Lorg/spongycastle/crypto/ec/ECPair;)Lorg/spongycastle/crypto/ec/ECPair;
    .locals 5

    iget-object v0, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/ec/ECFixedTransform;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->k:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getX()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object p0, p0, Lorg/spongycastle/crypto/ec/ECFixedTransform;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getY()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    new-instance p0, Lorg/spongycastle/crypto/ec/ECPair;

    aget-object v0, v3, v4

    aget-object p1, v3, p1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/ec/ECPair;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ECFixedTransform not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
