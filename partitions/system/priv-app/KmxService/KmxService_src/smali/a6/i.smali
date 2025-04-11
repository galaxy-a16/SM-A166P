.class public final La6/i;
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

    move-result p1

    const/4 p3, 0x3

    if-lt p1, p3, :cond_7

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-static {v0}, Lv7/t;->N(I)Lv7/r;

    move-result-object v1

    move v2, p0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v3

    invoke-static {v3}, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Lv7/r;->a(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string p1, "wrong return code"

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v1}, Lv7/r;->b()Lv7/t;

    move-result-object p2

    new-instance v0, Lm7/a;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lv7/t;->N(I)Lv7/r;

    move-result-object v1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_6

    invoke-interface {p2, p0}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    sget-object v3, Ln7/a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    if-eq v2, p3, :cond_3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_2:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_1:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_0:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    :goto_2
    invoke-virtual {v1, v2}, Lv7/r;->a(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lv7/r;->b()Lv7/t;

    move-result-object p0

    sget-object p2, Lf6/h;->c:Lf6/h;

    const/4 p3, 0x0

    invoke-direct {v0, p1, p0, p3, p2}, Lm7/a;-><init>(ILv7/t;Lf6/j;Lf6/h;)V

    return-object v0

    :cond_7
    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method
