.class public Lorg/bouncycastle/math/ec/DoubleAddMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method public multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    const/4 p0, 0x2

    new-array p0, p0, [Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    rsub-int/lit8 v3, v2, 0x1

    aget-object v4, p0, v3

    aget-object v2, p0, v2

    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object p0, p0, v1

    return-object p0
.end method
