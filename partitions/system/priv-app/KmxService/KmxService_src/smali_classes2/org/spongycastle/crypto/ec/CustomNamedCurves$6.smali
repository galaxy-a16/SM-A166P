.class final Lorg/spongycastle/crypto/ec/CustomNamedCurves$6;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/ec/CustomNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 14

    const/4 v5, 0x0

    new-instance p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "bb85691939b869c1d087f601554b96b80cb4f55b35f433c2"

    const/16 v1, 0x10

    invoke-direct {v7, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v0, "3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1"

    invoke-direct {v8, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x2

    new-array v9, v0, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "71169be7330b3038edb025f1"

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aput-object v2, v9, v4

    new-instance v2, Ljava/math/BigInteger;

    const-string v6, "-b3fb3400dec5c4adceb8655c"

    invoke-direct {v2, v6, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x1

    aput-object v2, v9, v6

    new-array v10, v0, [Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "12511cfe811d0f4e6bc688b4d"

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v0, v10, v4

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v0, v10, v6

    new-instance v11, Ljava/math/BigInteger;

    const-string v0, "71169be7330b3038edb025f1d0f9"

    invoke-direct {v11, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v0, "b3fb3400dec5c4adceb8655d4c94"

    invoke-direct {v12, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v13, 0xd0

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;-><init>()V

    invoke-static {v0, p0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->access$100(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/asn1/x9/X9ECPoint;

    const-string p0, "04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D"

    invoke-static {p0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    new-instance p0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object p0
.end method
