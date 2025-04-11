.class public Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/ObjectInput;


# instance fields
.field private final classResolver:Lio/netty/handler/codec/serialization/ClassResolver;

.field private final in:Ljava/io/DataInputStream;

.field private final maxObjectSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 3
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "in"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxObjectSize"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataInputStream;

    iput-object p1, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    :goto_0
    invoke-static {p2}, Lio/netty/handler/codec/serialization/ClassResolvers;->weakCachingResolver(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->classResolver:Lio/netty/handler/codec/serialization/ClassResolver;

    iput p3, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->maxObjectSize:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 0

    .line 2
    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 3
    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final readBoolean()Z
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0

    return p0
.end method

.method public final readByte()B
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    return p0
.end method

.method public final readChar()C
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result p0

    return p0
.end method

.method public final readDouble()D
    .locals 2

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result p0

    return p0
.end method

.method public final readFully([B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public final readInt()I
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    return p0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readLong()J
    .locals 2

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readObject()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->maxObjectSize:I

    if-gt v0, v1, :cond_0

    new-instance v0, Lio/netty/handler/codec/serialization/CompactObjectInputStream;

    iget-object v1, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->classResolver:Lio/netty/handler/codec/serialization/ClassResolver;

    invoke-direct {v0, v1, p0}, Lio/netty/handler/codec/serialization/CompactObjectInputStream;-><init>(Ljava/io/InputStream;Lio/netty/handler/codec/serialization/ClassResolver;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "data length too big: "

    const-string v3, " (max: "

    invoke-static {v2, v0, v3}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->maxObjectSize:I

    const/16 v2, 0x29

    invoke-static {v0, p0, v2}, Landroidx/activity/b;->q(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string v1, "invalid data length: "

    invoke-static {v1, v0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readShort()S
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result p0

    return p0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readUnsignedByte()I
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p0

    return p0
.end method

.method public final readUnsignedShort()I
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final skipBytes(I)I
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/serialization/ObjectDecoderInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result p0

    return p0
.end method
