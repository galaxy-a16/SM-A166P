.class public Lorg/spongycastle/bcpg/SignaturePacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/PublicKeyAlgorithmTags;


# instance fields
.field private creationTime:J

.field private fingerPrint:[B

.field private hashAlgorithm:I

.field private hashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

.field private keyAlgorithm:I

.field private keyID:J

.field private signature:[Lorg/spongycastle/bcpg/MPInteger;

.field private signatureEncoding:[B

.field private signatureType:I

.field private unhashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

.field private version:I


# direct methods
.method public constructor <init>(IIJIIJ[B[Lorg/spongycastle/bcpg/MPInteger;)V
    .locals 11

    .line 1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/spongycastle/bcpg/SignaturePacket;-><init>(IIJII[Lorg/spongycastle/bcpg/SignatureSubpacket;[Lorg/spongycastle/bcpg/SignatureSubpacket;[B[Lorg/spongycastle/bcpg/MPInteger;)V

    move-wide/from16 v1, p7

    iput-wide v1, v0, Lorg/spongycastle/bcpg/SignaturePacket;->creationTime:J

    return-void
.end method

.method public constructor <init>(IIJII[Lorg/spongycastle/bcpg/SignatureSubpacket;[Lorg/spongycastle/bcpg/SignatureSubpacket;[B[Lorg/spongycastle/bcpg/MPInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    iput p1, p0, Lorg/spongycastle/bcpg/SignaturePacket;->version:I

    iput p2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signatureType:I

    iput-wide p3, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    iput p5, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    iput p6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    iput-object p7, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    iput-object p8, p0, Lorg/spongycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    iput-object p9, p0, Lorg/spongycastle/bcpg/SignaturePacket;->fingerPrint:[B

    iput-object p10, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signature:[Lorg/spongycastle/bcpg/MPInteger;

    if-eqz p7, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->setCreationTime()V

    :cond_0
    return-void
.end method

.method public constructor <init>(IJII[Lorg/spongycastle/bcpg/SignatureSubpacket;[Lorg/spongycastle/bcpg/SignatureSubpacket;[B[Lorg/spongycastle/bcpg/MPInteger;)V
    .locals 11

    .line 3
    const/4 v1, 0x4

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/spongycastle/bcpg/SignaturePacket;-><init>(IIJII[Lorg/spongycastle/bcpg/SignatureSubpacket;[Lorg/spongycastle/bcpg/SignatureSubpacket;[B[Lorg/spongycastle/bcpg/MPInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 11

    .line 4
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->version:I

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_8

    if-ne v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v6, 0x4

    if-ne v0, v6, :cond_7

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signatureType:I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    shl-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v6

    or-int/2addr v0, v6

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    new-instance v6, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v6}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->readPacket()Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    iput-object v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move v6, v4

    :goto_1
    iget-object v7, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v7, v7

    if-eq v6, v7, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/bcpg/SignatureSubpacket;

    instance-of v8, v7, Lorg/spongycastle/bcpg/sig/IssuerKeyID;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Lorg/spongycastle/bcpg/sig/IssuerKeyID;

    invoke-virtual {v8}, Lorg/spongycastle/bcpg/sig/IssuerKeyID;->getKeyID()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    goto :goto_2

    :cond_2
    instance-of v8, v7, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;

    if-eqz v8, :cond_3

    move-object v8, v7

    check-cast v8, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;

    invoke-virtual {v8}, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/spongycastle/bcpg/SignaturePacket;->creationTime:J

    :cond_3
    :goto_2
    iget-object v8, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v6

    shl-int/lit8 v2, v6, 0x8

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v6

    or-int/2addr v2, v6

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    new-instance v6, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :goto_3
    invoke-virtual {v6}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->readPacket()Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    iput-object v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move v2, v4

    :goto_4
    iget-object v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v6, v6

    if-eq v2, v6, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/bcpg/SignatureSubpacket;

    instance-of v7, v6, Lorg/spongycastle/bcpg/sig/IssuerKeyID;

    if-eqz v7, :cond_6

    move-object v7, v6

    check-cast v7, Lorg/spongycastle/bcpg/sig/IssuerKeyID;

    invoke-virtual {v7}, Lorg/spongycastle/bcpg/sig/IssuerKeyID;->getKeyID()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    :cond_6
    iget-object v7, p0, Lorg/spongycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    aput-object v6, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->version:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signatureType:I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x18

    shl-long/2addr v6, v0

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    shl-int/2addr v8, v1

    int-to-long v8, v8

    or-long/2addr v6, v8

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    shl-int/2addr v8, v2

    int-to-long v8, v8

    or-long/2addr v6, v8

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->creationTime:J

    iget-wide v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v8

    int-to-long v8, v8

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-long v8, v0

    shl-long/2addr v8, v1

    or-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-long v8, v0

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-long v8, v0

    or-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    :cond_9
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->fingerPrint:[B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    iget v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    if-eq v0, v5, :cond_f

    if-eq v0, v1, :cond_e

    const/16 v1, 0x11

    if-eq v0, v1, :cond_d

    const/16 v1, 0x13

    if-eq v0, v1, :cond_c

    const/16 v1, 0x14

    if-eq v0, v1, :cond_e

    const/16 v1, 0x64

    if-lt v0, v1, :cond_b

    const/16 v1, 0x6e

    if-gt v0, v1, :cond_b

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signature:[Lorg/spongycastle/bcpg/MPInteger;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_6
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_a

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signatureEncoding:[B

    goto :goto_7

    :cond_b
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown signature key algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v1, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-array p1, v3, [Lorg/spongycastle/bcpg/MPInteger;

    iput-object p1, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signature:[Lorg/spongycastle/bcpg/MPInteger;

    aput-object v0, p1, v4

    aput-object v1, p1, v2

    goto :goto_7

    :cond_d
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v1, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-array p1, v3, [Lorg/spongycastle/bcpg/MPInteger;

    iput-object p1, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signature:[Lorg/spongycastle/bcpg/MPInteger;

    aput-object v0, p1, v4

    aput-object v1, p1, v2

    goto :goto_7

    :cond_e
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v1, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-instance v6, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v6, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-array p1, v5, [Lorg/spongycastle/bcpg/MPInteger;

    iput-object p1, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signature:[Lorg/spongycastle/bcpg/MPInteger;

    aput-object v0, p1, v4

    aput-object v1, p1, v2

    aput-object v6, p1, v3

    goto :goto_7

    :cond_f
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    new-array p1, v2, [Lorg/spongycastle/bcpg/MPInteger;

    iput-object p1, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signature:[Lorg/spongycastle/bcpg/MPInteger;

    aput-object v0, p1, v4

    :goto_7
    return-void
.end method

.method public static fromByteArray([B)Lorg/spongycastle/bcpg/SignaturePacket;
    .locals 2

    new-instance v0, Lorg/spongycastle/bcpg/BCPGInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/spongycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-direct {p0, v0}, Lorg/spongycastle/bcpg/SignaturePacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object p0
.end method

.method private setCreationTime()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v2, v1

    if-eq v0, v2, :cond_1

    aget-object v1, v1, v0

    instance-of v2, v1, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->creationTime:J

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 11

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->version:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->version:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eq v2, v3, :cond_4

    if-ne v2, v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signatureType:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v3, v5

    :goto_0
    iget-object v7, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v8, v7

    if-eq v3, v8, :cond_1

    aget-object v7, v7, v3

    invoke-virtual {v7, v2}, Lorg/spongycastle/bcpg/SignatureSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v7, v3

    shr-int/2addr v7, v6

    invoke-virtual {v1, v7}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    array-length v7, v3

    invoke-virtual {v1, v7}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v3, v5

    :goto_1
    iget-object v7, p0, Lorg/spongycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v8, v7

    if-eq v3, v8, :cond_2

    aget-object v7, v7, v3

    invoke-virtual {v7, v2}, Lorg/spongycastle/bcpg/SignatureSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v3, v2

    shr-int/2addr v3, v6

    invoke-virtual {v1, v3}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    array-length v3, v2

    invoke-virtual {v1, v3}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->version:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->creationTime:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v2, v7

    iget v7, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signatureType:I

    invoke-virtual {v1, v7}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 v7, 0x18

    shr-long v8, v2, v7

    long-to-int v8, v8

    int-to-byte v8, v8

    invoke-virtual {v1, v8}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 v8, 0x10

    shr-long v9, v2, v8

    long-to-int v9, v9

    int-to-byte v9, v9

    invoke-virtual {v1, v9}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    shr-long v9, v2, v6

    long-to-int v9, v9

    int-to-byte v9, v9

    invoke-virtual {v1, v9}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    const/16 v9, 0x38

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    const/16 v9, 0x30

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    const/16 v9, 0x28

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    const/16 v9, 0x20

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    shr-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    shr-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    shr-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-wide v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    :goto_3
    iget-object v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->fingerPrint:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signature:[Lorg/spongycastle/bcpg/MPInteger;

    if-eqz v2, :cond_5

    :goto_4
    iget-object v2, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signature:[Lorg/spongycastle/bcpg/MPInteger;

    array-length v3, v2

    if-eq v5, v3, :cond_6

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signatureEncoding:[B

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_6
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, v4, p0, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->creationTime:J

    return-wide v0
.end method

.method public getHashAlgorithm()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashAlgorithm:I

    return p0
.end method

.method public getHashedSubPackets()[Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->hashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-object p0
.end method

.method public getKeyAlgorithm()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyAlgorithm:I

    return p0
.end method

.method public getKeyID()J
    .locals 2

    iget-wide v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->keyID:J

    return-wide v0
.end method

.method public getSignature()[Lorg/spongycastle/bcpg/MPInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signature:[Lorg/spongycastle/bcpg/MPInteger;

    return-object p0
.end method

.method public getSignatureBytes()[B
    .locals 5

    iget-object v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signatureEncoding:[B

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signature:[Lorg/spongycastle/bcpg/MPInteger;

    array-length v4, v3

    if-eq v2, v4, :cond_0

    :try_start_0
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error: "

    invoke-static {v1, p0}, Lcom/google/protobuf/n;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSignatureTrailer()[B
    .locals 11

    iget v0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->version:I

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x3

    if-eq v0, v6, :cond_2

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getVersion()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getSignatureType()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getKeyAlgorithm()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getHashAlgorithm()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getHashedSubPackets()[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v6

    :goto_0
    array-length v7, v6

    if-eq v4, v7, :cond_1

    aget-object v7, v6, v4

    invoke-virtual {v7, v2}, Lorg/spongycastle/bcpg/SignatureSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v4, v2

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v4, v2

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignaturePacket;->getVersion()I

    move-result p0

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p0, v2

    shr-int/2addr p0, v3

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p0, v2

    shr-int/2addr p0, v1

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p0, v2

    shr-int/2addr p0, v5

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length p0, v2

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "exception generating trailer: "

    invoke-static {v1, p0}, Lcom/google/protobuf/n;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v0, 0x5

    new-array v0, v0, [B

    iget-wide v7, p0, Lorg/spongycastle/bcpg/SignaturePacket;->creationTime:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    iget p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signatureType:I

    int-to-byte p0, p0

    aput-byte p0, v0, v4

    shr-long v3, v7, v3

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x1

    aput-byte p0, v0, v3

    shr-long v3, v7, v1

    long-to-int p0, v3

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    shr-long v1, v7, v5

    long-to-int p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v6

    long-to-int p0, v7

    int-to-byte p0, p0

    const/4 v1, 0x4

    aput-byte p0, v0, v1

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public getSignatureType()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->signatureType:I

    return p0
.end method

.method public getUnhashedSubPackets()[Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->unhashedData:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/SignaturePacket;->version:I

    return p0
.end method
