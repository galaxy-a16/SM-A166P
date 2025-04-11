.class public Lorg/spongycastle/math/ec/MontgomeryLadderMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method public multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 5

    const/4 p0, 0x2

    new-array p0, p0, [Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    rsub-int/lit8 v2, v0, 0x1

    aget-object v3, p0, v2

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    aput-object v3, p0, v2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, p0, v0

    goto :goto_0

    :cond_0
    aget-object p0, p0, v1

    return-object p0
.end method
