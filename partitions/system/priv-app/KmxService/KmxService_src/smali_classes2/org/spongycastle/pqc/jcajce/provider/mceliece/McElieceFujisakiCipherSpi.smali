.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;
.super Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi$McElieceFujisaki;
    }
.end annotation


# instance fields
.field private buf:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

.field private digest:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->digest:Lorg/spongycastle/crypto/Digest;

    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public decryptOutputSize(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public doFinal([BII)[B
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->update([BII)[B

    iget-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget p2, p0, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->opMode:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messageEncrypt([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messageDecrypt([B)[B

    move-result-object p0
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown mode in doFinal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encryptOutputSize(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKeySize(Ljava/security/Key;)I
    .locals 1

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    :goto_0
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->getKeySize(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "McElieceFujisakiCipher"

    return-object p0
.end method

.method public initCipherDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->reset()V

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public initCipherEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    new-instance p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {p2, p1, p3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    iget-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->reset()V

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public update([BII)[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method
