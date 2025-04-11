.class public abstract Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;
.super Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;
.source "SourceFile"


# instance fields
.field private pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown asymmetric algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use ECDSA for encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use DSA for encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use an RSA_SIGN key for encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private convertToEncodedMPI([B)[B
    .locals 2

    :try_start_0
    new-instance p0, Lorg/spongycastle/bcpg/MPInteger;

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid MPI encoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public abstract encryptSessionInfo(Lorg/spongycastle/openpgp/PGPPublicKey;[B)[B
.end method

.method public generate(I[B)Lorg/spongycastle/bcpg/ContainedPacket;
    .locals 4

    new-instance p1, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0, v3, p2}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->encryptSessionInfo(Lorg/spongycastle/openpgp/PGPPublicKey;[B)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->processSessionInfo([B)[[B

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;-><init>(JI[[B)V

    return-object p1
.end method

.method public processSessionInfo([B)[[B
    .locals 7

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/16 v4, 0x10

    if-eq v0, v4, :cond_2

    const/16 v4, 0x12

    if-eq v0, v4, :cond_1

    const/16 v4, 0x14

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown asymmetric algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-array p0, v1, [[B

    aput-object p1, p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    array-length v0, p1

    div-int/2addr v0, v3

    new-array v4, v0, [B

    array-length v5, p1

    div-int/2addr v5, v3

    new-array v6, v5, [B

    invoke-static {p1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v0, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v3, [[B

    invoke-direct {p0, v4}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object v0

    aput-object v0, p1, v2

    invoke-direct {p0, v6}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object p0

    aput-object p0, p1, v1

    move-object p0, p1

    goto :goto_1

    :cond_3
    new-array v0, v1, [[B

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object p0

    aput-object p0, v0, v2

    move-object p0, v0

    :goto_1
    return-object p0
.end method
