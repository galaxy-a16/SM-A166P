.class Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "cannot recognise cipher"

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Lorg/spongycastle/crypto/engines/CamelliaEngine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/CamelliaEngine;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lorg/spongycastle/crypto/engines/TwofishEngine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/TwofishEngine;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance p0, Lorg/spongycastle/crypto/engines/AESEngine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/AESEngine;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p0, Lorg/spongycastle/crypto/engines/DESEngine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DESEngine;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p0, Lorg/spongycastle/crypto/engines/BlowfishEngine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/BlowfishEngine;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance p0, Lorg/spongycastle/crypto/engines/CAST5Engine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/CAST5Engine;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance p0, Lorg/spongycastle/crypto/engines/DESedeEngine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DESedeEngine;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance p0, Lorg/spongycastle/crypto/engines/IDEAEngine;

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/IDEAEngine;-><init>()V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static createDigest(I)Lorg/spongycastle/crypto/Digest;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "cannot recognise digest"

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static createPublicKeyCipher(I)Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "unknown asymmetric algorithm: "

    invoke-static {v1, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "Can\'t use ECDSA for encryption."

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "Not implemented."

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "Can\'t use DSA for encryption."

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    new-instance p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static createSigner(II)Lorg/spongycastle/crypto/Signer;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    new-instance p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;

    new-instance v0, Lorg/spongycastle/crypto/signers/ECDSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/ECDSASigner;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/crypto/Digest;)V

    return-object p0

    :cond_0
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "cannot recognise keyAlgorithm: "

    invoke-static {v0, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;

    new-instance v0, Lorg/spongycastle/crypto/signers/DSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/DSASigner;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/crypto/Digest;)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/spongycastle/crypto/signers/RSADigestSigner;

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/signers/RSADigestSigner;-><init>(Lorg/spongycastle/crypto/Digest;)V

    return-object p0
.end method

.method public static createWrapper(I)Lorg/spongycastle/crypto/Wrapper;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "unknown wrap algorithm: "

    invoke-static {v1, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;

    new-instance v0, Lorg/spongycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/CamelliaEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;

    new-instance v0, Lorg/spongycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
