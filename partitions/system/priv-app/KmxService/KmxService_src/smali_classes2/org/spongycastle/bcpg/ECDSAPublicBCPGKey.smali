.class public Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;
.super Lorg/spongycastle/bcpg/ECPublicBCPGKey;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-void
.end method
