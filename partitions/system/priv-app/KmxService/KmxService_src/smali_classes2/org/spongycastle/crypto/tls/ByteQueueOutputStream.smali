.class public Lorg/spongycastle/crypto/tls/ByteQueueOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private buffer:Lorg/spongycastle/crypto/tls/ByteQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueueOutputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/spongycastle/crypto/tls/ByteQueue;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ByteQueueOutputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    return-object p0
.end method

.method public write(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ByteQueueOutputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/crypto/tls/ByteQueueOutputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    return-void
.end method
