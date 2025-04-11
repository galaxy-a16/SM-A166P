.class public final Lb6/a;
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

    const/4 v0, 0x2

    if-lt p1, v0, :cond_7

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p1

    invoke-static {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {p2}, Lp9/d;->l(Lio/netty/buffer/ByteBuf;)V

    const/4 p1, 0x0

    move-object v2, p1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lp9/d;->x(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    const/16 v5, 0x15

    if-eq v0, v5, :cond_3

    const/16 v5, 0x16

    if-eq v0, v5, :cond_2

    const/16 v5, 0x1f

    if-eq v0, v5, :cond_1

    const/16 v5, 0x26

    if-ne v0, v5, :cond_0

    const-string v0, "user property"

    invoke-static {v0, p3}, Lp9/d;->k(Ljava/lang/String;Lz5/b;)V

    invoke-static {p1, p2}, Lp9/d;->C(Lv7/r;Lio/netty/buffer/ByteBuf;)Lv7/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lp9/d;->x0(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    const-string v0, "reason string"

    invoke-static {v0, p3}, Lp9/d;->k(Ljava/lang/String;Lz5/b;)V

    invoke-static {v4, p2}, Lp9/d;->z(Lf6/j;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "auth data"

    invoke-static {v3, v0, p2, p0}, Lp9/d;->w(Ljava/nio/ByteBuffer;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v0, "auth method"

    invoke-static {v2, v0, p2}, Lp9/d;->B(Lf6/j;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v2

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {p1}, Lf6/h;->a(Lv7/r;)Lf6/h;

    move-result-object v5

    new-instance p0, Lv6/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lv6/a;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lf6/j;Ljava/nio/ByteBuffer;Lf6/j;Lf6/h;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "must not omit authentication method"

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {}, Lp9/d;->y0()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method
