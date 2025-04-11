.class public final Lb6/d;
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
    .locals 10

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lv9/a;->g(II)V

    sget-object p1, Ll8/a;->a:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p3

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_9

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p1

    invoke-static {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-static {p2}, Lp9/d;->l(Lio/netty/buffer/ByteBuf;)V

    move-wide v4, v0

    move-object p3, v2

    move-object v3, p3

    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p2}, Lp9/d;->x(Lio/netty/buffer/ByteBuf;)I

    move-result v6

    const/16 v7, 0x11

    if-eq v6, v7, :cond_3

    const/16 v7, 0x1c

    if-eq v6, v7, :cond_2

    const/16 v7, 0x1f

    if-eq v6, v7, :cond_1

    const/16 v7, 0x26

    if-ne v6, v7, :cond_0

    invoke-static {v3, p2}, Lp9/d;->C(Lv7/r;Lio/netty/buffer/ByteBuf;)Lv7/r;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lp9/d;->x0(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p3, p2}, Lp9/d;->z(Lf6/j;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-string v6, "server reference"

    invoke-static {v2, v6, p2}, Lp9/d;->B(Lf6/j;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v2

    goto :goto_0

    :cond_3
    cmp-long v4, v4, v0

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    move v4, p0

    :goto_1
    if-nez v4, :cond_6

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_5

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    move-result-wide v4

    goto :goto_0

    :cond_5
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_6
    const-string p0, "session expiry interval"

    invoke-static {p0}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_7
    move-object v8, p3

    move-object v7, v2

    move-object v2, v3

    move-wide v5, v4

    move-object v4, p1

    goto :goto_2

    :cond_8
    invoke-static {}, Lp9/d;->y0()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_9
    move-object v4, p1

    move-wide v5, v0

    move-object v7, v2

    move-object v8, v7

    :goto_2
    invoke-static {v2}, Lf6/h;->a(Lv7/r;)Lf6/h;

    move-result-object v9

    new-instance p0, Lb7/a;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lb7/a;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLf6/j;Lf6/j;Lf6/h;)V

    return-object p0
.end method
