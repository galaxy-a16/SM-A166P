.class final Lorg/spongycastle/asn1/x9/X962NamedCurves$15;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/x9/X962NamedCurves;
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
    .locals 11

    new-instance p0, Ljava/math/BigInteger;

    const-string v0, "0101BAF95C9723C57B6C21DA2EFF2D5ED588BDD5717E212F9D"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/32 v2, 0xfe48

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance v10, Lorg/spongycastle/math/ec/ECCurve$F2m;

    const/16 v2, 0xd0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x53

    new-instance v6, Ljava/math/BigInteger;

    const-string v0, "0"

    invoke-direct {v6, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "00C8619ED45A62E6212E1160349E2BFA844439FAFC2A3FD1638F9E"

    invoke-direct {v7, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v0, v10

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lorg/spongycastle/asn1/x9/X9ECParameters;

    new-instance v2, Lorg/spongycastle/asn1/x9/X9ECPoint;

    const-string v0, "0289FDFBE4ABE193DF9559ECF07AC0CE78554E2784EB8C1ED1A57A"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v10, v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v10

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
