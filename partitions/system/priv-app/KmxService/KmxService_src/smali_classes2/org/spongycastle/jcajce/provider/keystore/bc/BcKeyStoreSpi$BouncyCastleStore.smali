.class public Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 8

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Wrong version of key store."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v6, v1, [B

    const/16 v2, 0x14

    const-string v3, "Key store corrupted."

    if-ne v1, v2, :cond_6

    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    if-ltz v7, :cond_5

    const/high16 v1, 0x10000

    if-gt v7, v1, :cond_5

    if-nez p1, :cond_3

    const-string p1, "OldPBEWithSHAAndTwofish-CBC"

    goto :goto_1

    :cond_3
    const-string p1, "PBEWithSHAAndTwofish-CBC"

    :goto_1
    move-object v3, p1

    const/4 v4, 0x2

    move-object v2, p0

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p2, Ljavax/crypto/CipherInputStream;

    invoke-direct {p2, v0, p1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    new-instance p1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/io/DigestInputStream;

    invoke-direct {v0, p2, p1}, Lorg/spongycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/Digest;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    invoke-static {p2, p1}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "KeyStore integrity check failed."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 7

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x14

    new-array v5, p1, [B

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0x3ff

    add-int/lit16 v6, v1, 0x400

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v2, "PBEWithSHAAndTwofish-CBC"

    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p2, v0, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance p1, Lorg/spongycastle/crypto/io/DigestOutputStream;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/io/DigestOutputStream;-><init>(Lorg/spongycastle/crypto/Digest;)V

    new-instance v0, Lorg/spongycastle/util/io/TeeOutputStream;

    invoke-direct {v0, p2, p1}, Lorg/spongycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->saveStore(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/spongycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    invoke-virtual {p2}, Ljavax/crypto/CipherOutputStream;->close()V

    return-void
.end method
