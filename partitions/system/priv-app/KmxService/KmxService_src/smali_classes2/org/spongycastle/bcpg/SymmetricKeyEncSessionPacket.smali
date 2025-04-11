.class public Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "SourceFile"


# instance fields
.field private encAlgorithm:I

.field private s2k:Lorg/spongycastle/bcpg/S2K;

.field private secKeyData:[B

.field private version:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/bcpg/S2K;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    iput p1, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    iput-object p2, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    iput-object p3, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    new-instance v0, Lorg/spongycastle/bcpg/S2K;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/S2K;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v2, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    iget-object v2, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    iget-object p0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p0, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getEncAlgorithm()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    return p0
.end method

.method public getS2K()Lorg/spongycastle/bcpg/S2K;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    return-object p0
.end method

.method public getSecKeyData()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    return p0
.end method
