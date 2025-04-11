.class public Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateFingerprint(Lorg/spongycastle/bcpg/PublicKeyPacket;)[B
    .locals 5

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "can\'t encode key components: "

    if-gt v0, v1, :cond_0

    check-cast p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    :try_start_0
    new-instance p1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {p1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x2

    sub-int/2addr v1, v4

    invoke-interface {p1, v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object p0

    array-length v0, p0

    sub-int/2addr v0, v4

    invoke-interface {p1, p0, v4, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object p0

    new-instance p1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    const/16 v0, -0x67

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    array-length v0, p0

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    array-length v0, p0

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    array-length v0, p0

    invoke-interface {p1, p0, v2, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    invoke-interface {p1, p0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
