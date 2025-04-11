.class public Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;
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
    .locals 4

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "can\'t encode key components: "

    if-gt v0, v1, :cond_0

    check-cast p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    :try_start_0
    const-string p1, "MD5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object p0

    array-length v0, p0

    sub-int/2addr v0, v3

    invoke-virtual {p1, p0, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "can\'t find MD5"

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object p0

    const-string p1, "SHA1"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/16 v0, -0x67

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update(B)V

    array-length v0, p0

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update(B)V

    array-length v0, p0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update(B)V

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "can\'t find SHA1"

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
