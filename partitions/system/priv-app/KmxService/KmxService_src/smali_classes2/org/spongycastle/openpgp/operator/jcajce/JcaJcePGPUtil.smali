.class Lorg/spongycastle/openpgp/operator/jcajce/JcaJcePGPUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodePoint(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 0

    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 0

    invoke-static {p0}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    return-object p0
.end method

.method public static makeSymmetricKey(I[B)Ljavax/crypto/SecretKey;
    .locals 1

    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "unknown symmetric algorithm: "

    invoke-static {v0, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
