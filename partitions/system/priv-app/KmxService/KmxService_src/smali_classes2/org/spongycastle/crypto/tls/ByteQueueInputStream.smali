.class public Lorg/spongycastle/crypto/tls/ByteQueueInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private buffer:Lorg/spongycastle/crypto/tls/ByteQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    return-void
.end method


# virtual methods
.method public addBytes([B)V
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    return-void
.end method

.method public available()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public peek([B)I
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    return v0
.end method

.method public read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(II)[B

    move-result-object p0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    return p3
.end method

.method public skip(J)J
    .locals 0

    long-to-int p1, p1

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    int-to-long p0, p1

    return-wide p0
.end method
