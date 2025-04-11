.class public Lorg/spongycastle/openpgp/PGPOnePassSignature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lastb:B

.field private sigOut:Ljava/io/OutputStream;

.field private sigPack:Lorg/spongycastle/bcpg/OnePassSignaturePacket;

.field private signatureType:I

.field private verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPOnePassSignature;-><init>(Lorg/spongycastle/bcpg/OnePassSignaturePacket;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/OnePassSignaturePacket;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->getSignatureType()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->signatureType:I

    return-void
.end method

.method private blockUpdate([BII)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private byteUpdate(B)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {p1, p0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/spongycastle/bcpg/ContainedPacket;)V

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getHashAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->getHashAlgorithm()I

    move-result p0

    return p0
.end method

.method public getKeyAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->getKeyAlgorithm()I

    move-result p0

    return p0
.end method

.method public getKeyID()J
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignatureType()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->getSignatureType()I

    move-result p0

    return p0
.end method

.method public init(Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->getKeyAlgorithm()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigPack:Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->getHashAlgorithm()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilderProvider;->get(II)Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilder;->build(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    const/4 p2, 0x0

    iput-byte p2, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->lastb:B

    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-direct {p0, v1}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    iget-byte v2, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->lastb:B

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    :cond_2
    :goto_1
    iput-byte p1, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->lastb:B

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->byteUpdate(B)V

    :goto_2
    return-void
.end method

.method public update([B)V
    .locals 3

    .line 2
    iget v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->signatureType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    array-length v0, p1

    if-eq v2, v0, :cond_1

    aget-byte v0, p1, v2

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->update(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-direct {p0, p1, v2, v0}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->blockUpdate([BII)V

    :cond_1
    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 3
    iget v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->signatureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-eq p2, p3, :cond_1

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->update(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->blockUpdate([BII)V

    :cond_1
    return-void
.end method

.method public verify(Lorg/spongycastle/openpgp/PGPSignature;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSignature;->getSignatureTrailer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignature;->verifier:Lorg/spongycastle/openpgp/operator/PGPContentVerifier;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSignature;->getSignature()[B

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/spongycastle/openpgp/operator/PGPContentVerifier;->verify([B)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to add trailer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
