.class public Lorg/spongycastle/openpgp/PGPCompressedData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/CompressionAlgorithmTags;


# instance fields
.field data:Lorg/spongycastle/bcpg/CompressedDataPacket;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/CompressedDataPacket;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPCompressedData;->data:Lorg/spongycastle/bcpg/CompressedDataPacket;

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPCompressedData;->data:Lorg/spongycastle/bcpg/CompressedDataPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/CompressedDataPacket;->getAlgorithm()I

    move-result p0

    return p0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 4

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedData$1;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p0, v2, v3}, Lorg/spongycastle/openpgp/PGPCompressedData$1;-><init>(Lorg/spongycastle/openpgp/PGPCompressedData;Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedData$2;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/openpgp/PGPCompressedData$2;-><init>(Lorg/spongycastle/openpgp/PGPCompressedData;Ljava/io/InputStream;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :try_start_0
    new-instance v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "I/O problem with stream: "

    invoke-static {v1, p0}, Lcom/google/protobuf/n;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t recognise compression algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPCompressedData;->data:Lorg/spongycastle/bcpg/CompressedDataPacket;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/InputStreamPacket;->getInputStream()Lorg/spongycastle/bcpg/BCPGInputStream;

    move-result-object p0

    return-object p0
.end method
