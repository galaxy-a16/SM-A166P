.class public final Lb6/e;
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
    .locals 4

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lv9/a;->g(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_5

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p0

    sget-object p1, Lf7/a;->f:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p1

    invoke-static {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lp9/d;->l(Lio/netty/buffer/ByteBuf;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lp9/d;->x(Lio/netty/buffer/ByteBuf;)I

    move-result v2

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    const-string v2, "user property"

    invoke-static {v2, p3}, Lp9/d;->k(Ljava/lang/String;Lz5/b;)V

    invoke-static {v0, p2}, Lp9/d;->C(Lv7/r;Lio/netty/buffer/ByteBuf;)Lv7/r;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lp9/d;->x0(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    const-string v2, "reason string"

    invoke-static {v2, p3}, Lp9/d;->k(Ljava/lang/String;Lz5/b;)V

    invoke-static {v1, p2}, Lp9/d;->z(Lf6/j;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object p2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lp9/d;->y0()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_4
    move-object p2, v1

    :goto_1
    invoke-static {v1}, Lf6/h;->a(Lv7/r;)Lf6/h;

    move-result-object p3

    new-instance v0, Lf7/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lf7/a;-><init>(ILcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;Lf6/j;Lf6/h;)V

    return-object v0

    :cond_5
    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method
