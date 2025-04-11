.class public final Lz5/a;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# instance fields
.field public final a:Lz5/d;

.field public final b:Lz5/b;


# direct methods
.method public constructor <init>(Lz5/d;Lw5/h;Lx6/a;)V
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    iput-object p1, p0, Lz5/a;->a:Lz5/d;

    iget-object p1, p3, Lx6/a;->f:Lx6/b;

    new-instance p3, Lz5/b;

    iget v0, p1, Lx6/b;->c:I

    iget-object p2, p2, Lw5/h;->d:Lx5/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Lx6/b;->e:I

    iget-boolean v1, p1, Lx6/b;->g:Z

    iget-boolean p1, p1, Lx6/b;->h:Z

    invoke-direct {p3, v0, p2, v1, p1}, Lz5/b;-><init>(IIZZ)V

    iput-object p3, p0, Lz5/a;->b:Lz5/b;

    return-void
.end method


# virtual methods
.method public final decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, Lz5/a;->b:Lz5/b;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v2

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {p2}, Ll9/b;->T(Lio/netty/buffer/ByteBuf;)I

    move-result v4

    if-gez v4, :cond_2

    const/4 p0, -0x1

    if-ne v4, p0, :cond_1

    :try_start_0
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_1
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string p3, "malformed remaining length"

    invoke-direct {p0, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    sub-int v6, v5, v1

    add-int/2addr v6, v4

    iget v7, v0, Lz5/b;->a:I

    if-gt v6, v7, :cond_7

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    add-int/2addr v5, v4

    if-ge v6, v5, :cond_3

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_3
    iget-object p0, p0, Lz5/a;->a:Lz5/d;

    if-ltz v3, :cond_5

    iget-object p0, p0, Lz5/d;->a:[Lz5/c;

    array-length v1, p0

    if-lt v3, v1, :cond_4

    goto :goto_0

    :cond_4
    aget-object p0, p0, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_6

    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    invoke-interface {p0, v2, p2, v0}, Lz5/c;->a(ILio/netty/buffer/ByteBuf;Lz5/b;)Lu6/c;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v6}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    goto :goto_2

    :cond_6
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object p3, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "must not receive this packet type"

    invoke-direct {p0, p3, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object p3, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PACKET_TOO_LARGE:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "incoming packet exceeded maximum packet size"

    invoke-direct {p0, p3, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    invoke-static {v3}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Exception while decoding "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_8

    const-string p2, "UNKNOWN"

    :cond_8
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move-result-object p0

    new-instance p3, Lcom/hivemq/client/mqtt/exceptions/MqttDecodeException;

    invoke-direct {p3, p2}, Lcom/hivemq/client/mqtt/exceptions/MqttDecodeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, p3}, Lp9/d;->D(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    :goto_2
    return-void
.end method

.method public final isSharable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
