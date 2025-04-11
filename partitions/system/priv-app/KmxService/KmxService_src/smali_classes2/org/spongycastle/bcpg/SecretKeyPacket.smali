.class public Lorg/spongycastle/bcpg/SecretKeyPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/PublicKeyAlgorithmTags;


# static fields
.field public static final USAGE_CHECKSUM:I = 0xff

.field public static final USAGE_NONE:I = 0x0

.field public static final USAGE_SHA1:I = 0xfe


# instance fields
.field private encAlgorithm:I

.field private iv:[B

.field private pubKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;

.field private s2k:Lorg/spongycastle/bcpg/S2K;

.field private s2kUsage:I

.field private secKeyData:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    instance-of v0, p0, Lorg/spongycastle/bcpg/SecretSubkeyPacket;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/bcpg/PublicSubkeyPacket;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/PublicSubkeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_2

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iput v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    new-instance v0, Lorg/spongycastle/bcpg/S2K;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/S2K;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    :goto_2
    iget-object v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/S2K;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/S2K;->getProtectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_3
    iget v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_4

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->iv:[B

    goto :goto_3

    :cond_4
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->iv:[B

    :goto_3
    iget-object v0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->iv:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([BII)V

    :cond_5
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/PublicKeyPacket;IILorg/spongycastle/bcpg/S2K;[B[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;

    iput p2, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    iput p3, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    iput-object p4, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    iput-object p5, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->iv:[B

    iput-object p6, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;

    iput p2, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    if-eqz p2, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    iput-object p3, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    iput-object p4, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->iv:[B

    iput-object p5, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getEncodedContents()[B

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p1, v1, p0, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getEncAlgorithm()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    return p0
.end method

.method public getEncodedContents()[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget v2, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->encAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-object v2, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    :cond_1
    iget-object v2, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->iv:[B

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    iget-object p0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    if-eqz p0, :cond_3

    array-length v2, p0

    if-lez v2, :cond_3

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getIV()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->iv:[B

    return-object p0
.end method

.method public getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->pubKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;

    return-object p0
.end method

.method public getS2K()Lorg/spongycastle/bcpg/S2K;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    return-object p0
.end method

.method public getS2KUsage()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->s2kUsage:I

    return p0
.end method

.method public getSecretKeyData()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SecretKeyPacket;->secKeyData:[B

    return-object p0
.end method
