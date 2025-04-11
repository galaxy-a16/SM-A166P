.class public final La6/h;
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
    .locals 20

    move/from16 v0, p1

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    invoke-static {v0, v7}, Lv9/a;->n(IZ)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v11

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v12, v2

    goto :goto_1

    :cond_1
    move v12, v3

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    sget v0, Lf6/d;->e:I

    invoke-static/range {p2 .. p2}, Li4/g;->j(Lio/netty/buffer/ByteBuf;)[B

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lf6/d;->h([B)Lf6/d;

    move-result-object v0

    move-object v9, v0

    :goto_2
    if-eqz v9, :cond_6

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v11, v0, :cond_3

    const/4 v0, -0x1

    :goto_3
    move v6, v0

    goto :goto_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    goto :goto_3

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v10, v0

    goto :goto_5

    :cond_4
    move-object v10, v2

    :goto_5
    new-instance v5, Le7/a;

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lf6/h;->c:Lf6/h;

    move-object v8, v5

    invoke-direct/range {v8 .. v19}, Le7/a;-><init>(Lf6/d;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lf6/j;Lf6/d;Ljava/nio/ByteBuffer;Lf6/h;)V

    sget-object v9, Lv7/j;->a:Lv7/j;

    new-instance v0, Le7/b;

    const/4 v8, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Le7/b;-><init>(Le7/a;IZILv7/q;)V

    return-object v0

    :cond_5
    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_6
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "malformed topic"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0
.end method
