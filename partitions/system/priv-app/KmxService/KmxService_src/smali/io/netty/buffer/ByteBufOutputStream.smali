.class public Lio/netty/buffer/ByteBufOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field private final buffer:Lio/netty/buffer/ByteBuf;

.field private final startIndex:I

.field private final utf8out:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lio/netty/buffer/ByteBufOutputStream;->utf8out:Ljava/io/DataOutputStream;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p1

    iput p1, p0, Lio/netty/buffer/ByteBufOutputStream;->startIndex:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public write([B)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 3
    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBoolean(Z)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public writeByte(I)V
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    return-void
.end method

.method public writeChar(I)V
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeChar(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->writeChar(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeDouble(D)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public writeFloat(F)V
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeFloat(F)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public writeInt(I)V
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public writeLong(J)V
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public writeShort(I)V
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->buffer:Lio/netty/buffer/ByteBuf;

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/ByteBufOutputStream;->utf8out:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
