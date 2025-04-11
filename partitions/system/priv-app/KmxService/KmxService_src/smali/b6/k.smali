.class public final Lb6/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILio/netty/buffer/ByteBuf;Lz5/b;)Lu6/c;
    .locals 6

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lv9/a;->g(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_7

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p1

    invoke-static {p2}, Lp9/d;->y(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v4, v0, :cond_2

    invoke-static {p2}, Lp9/d;->x(Lio/netty/buffer/ByteBuf;)I

    move-result v4

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_1

    const/16 v5, 0x26

    if-ne v4, v5, :cond_0

    const-string v4, "user property"

    invoke-static {v4, p3}, Lp9/d;->k(Ljava/lang/String;Lz5/b;)V

    invoke-static {v3, p2}, Lp9/d;->C(Lv7/r;Lio/netty/buffer/ByteBuf;)Lv7/r;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lp9/d;->x0(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    const-string v4, "reason string"

    invoke-static {v4, p3}, Lp9/d;->k(Ljava/lang/String;Lz5/b;)V

    invoke-static {v2, p2}, Lp9/d;->z(Lf6/j;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-ne v4, v0, :cond_6

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p3}, Lv7/t;->N(I)Lv7/r;

    move-result-object v0

    :goto_1
    if-ge p0, p3, :cond_4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v1

    invoke-static {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lv7/r;->a(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lp9/d;->y0()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-virtual {v0}, Lv7/r;->b()Lv7/t;

    move-result-object p0

    invoke-static {v3}, Lf6/h;->a(Lv7/r;)Lf6/h;

    move-result-object p2

    new-instance p3, Lp7/a;

    invoke-direct {p3, p1, p0, v2, p2}, Lp7/a;-><init>(ILv7/t;Lf6/j;Lf6/h;)V

    return-object p3

    :cond_5
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "must contain at least one reason code"

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method
