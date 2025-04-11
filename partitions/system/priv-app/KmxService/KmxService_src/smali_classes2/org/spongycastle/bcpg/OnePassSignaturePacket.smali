.class public Lorg/spongycastle/bcpg/OnePassSignaturePacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "SourceFile"


# instance fields
.field private hashAlgorithm:I

.field private keyAlgorithm:I

.field private keyID:J

.field private nested:I

.field private sigType:I

.field private version:I


# direct methods
.method public constructor <init>(IIIJZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->version:I

    iput p1, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->sigType:I

    iput p2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    iput p3, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    iput-wide p4, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    xor-int/lit8 p1, p6, 0x1

    iput p1, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->nested:I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->version:I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->sigType:I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->nested:I

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->version:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->sigType:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget p0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->nested:I

    invoke-virtual {v1, p0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p0, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getHashAlgorithm()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    return p0
.end method

.method public getKeyAlgorithm()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    return p0
.end method

.method public getKeyID()J
    .locals 2

    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    return-wide v0
.end method

.method public getSignatureType()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->sigType:I

    return p0
.end method
