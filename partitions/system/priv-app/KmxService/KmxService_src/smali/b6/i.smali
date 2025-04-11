.class public final Lb6/i;
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

    move-object/from16 v1, p2

    and-int/lit8 v2, v0, 0x8

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    invoke-static {v0, v7}, Lv9/a;->n(IZ)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v11

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v12, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v12, v0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2e

    invoke-static/range {p2 .. p2}, Li4/g;->j(Lio/netty/buffer/ByteBuf;)[B

    move-result-object v0

    const-string v2, "malformed topic"

    if-eqz v0, :cond_2d

    array-length v4, v0

    if-eqz v4, :cond_3

    invoke-static {v0}, Lf6/d;->h([B)Lf6/d;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const/4 v4, 0x2

    if-ne v11, v2, :cond_4

    const/4 v2, -0x1

    :goto_3
    move v6, v2

    goto :goto_4

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    if-lt v2, v4, :cond_2c

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v2

    goto :goto_3

    :goto_4
    invoke-static/range {p2 .. p2}, Lp9/d;->y(Lio/netty/buffer/ByteBuf;)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 p1, v6

    move/from16 p0, v7

    move-object v6, v13

    move-wide v13, v14

    move-object/from16 v7, v18

    move-object v15, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v16

    :goto_5
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v16

    move/from16 v18, v12

    sub-int v12, v16, v5

    if-ge v12, v2, :cond_20

    invoke-static/range {p2 .. p2}, Lp9/d;->x(Lio/netty/buffer/ByteBuf;)I

    move-result v12

    if-eq v12, v3, :cond_1b

    if-eq v12, v4, :cond_17

    const/4 v3, 0x3

    if-eq v12, v3, :cond_16

    const/16 v3, 0x8

    if-eq v12, v3, :cond_12

    const/16 v3, 0x9

    if-eq v12, v3, :cond_11

    const/16 v3, 0xb

    if-eq v12, v3, :cond_9

    const/16 v3, 0x23

    if-eq v12, v3, :cond_6

    const/16 v3, 0x26

    if-ne v12, v3, :cond_5

    invoke-static {v7, v1}, Lp9/d;->C(Lv7/r;Lio/netty/buffer/ByteBuf;)Lv7/r;

    move-result-object v7

    goto :goto_7

    :cond_5
    invoke-static {v12}, Lp9/d;->x0(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_6
    if-eqz v8, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    const-string v4, "topic alias"

    invoke-static {v3, v4, v1}, Lp9/d;->u0(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v8

    if-eqz v8, :cond_8

    :goto_7
    goto :goto_8

    :cond_8
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_ALIAS_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "topic alias must not be 0"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_9
    if-nez v9, :cond_a

    new-instance v9, Lv7/p;

    invoke-direct {v9}, Lv7/p;-><init>()V

    :cond_a
    invoke-static/range {p2 .. p2}, Ll9/b;->T(Lio/netty/buffer/ByteBuf;)I

    move-result v3

    if-ltz v3, :cond_10

    if-eqz v3, :cond_f

    iget v4, v9, Lv7/p;->c:I

    if-nez v4, :cond_b

    iput v3, v9, Lv7/p;->a:I

    const/4 v3, 0x1

    iput v3, v9, Lv7/p;->c:I

    :goto_8
    move/from16 v16, v5

    goto/16 :goto_d

    :cond_b
    iget-object v12, v9, Lv7/p;->b:[I

    if-nez v12, :cond_c

    const/4 v4, 0x4

    new-array v4, v4, [I

    iput-object v4, v9, Lv7/p;->b:[I

    move/from16 v16, v5

    goto :goto_9

    :cond_c
    move/from16 v16, v5

    array-length v5, v12

    if-ne v4, v5, :cond_d

    array-length v4, v12

    shr-int/lit8 v5, v4, 0x1

    add-int/2addr v4, v5

    invoke-static {v12, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v9, Lv7/p;->b:[I

    :cond_d
    :goto_9
    iget v4, v9, Lv7/p;->c:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    iget-object v5, v9, Lv7/p;->b:[I

    iget v12, v9, Lv7/p;->a:I

    const/16 v19, 0x0

    aput v12, v5, v19

    :cond_e
    iget-object v5, v9, Lv7/p;->b:[I

    add-int/lit8 v12, v4, 0x1

    iput v12, v9, Lv7/p;->c:I

    aput v3, v5, v4

    goto/16 :goto_d

    :cond_f
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "subscription identifier must not be 0"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "malformed subscription identifier"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move/from16 v16, v5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "correlation data"

    const/4 v4, 0x0

    invoke-static {v6, v3, v1, v4}, Lp9/d;->w(Ljava/nio/ByteBuffer;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v6, v3

    goto/16 :goto_d

    :cond_12
    move/from16 v16, v5

    if-nez v17, :cond_15

    sget v3, Lf6/d;->e:I

    invoke-static/range {p2 .. p2}, Li4/g;->j(Lio/netty/buffer/ByteBuf;)[B

    move-result-object v3

    if-nez v3, :cond_13

    const/4 v3, 0x0

    goto :goto_a

    :cond_13
    invoke-static {v3}, Lf6/d;->h([B)Lf6/d;

    move-result-object v3

    :goto_a
    if-eqz v3, :cond_14

    move-object/from16 v17, v3

    goto :goto_d

    :cond_14
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "malformed response topic"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_15
    const-string v0, "response topic"

    invoke-static {v0}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_16
    move/from16 v16, v5

    const-string v3, "content type"

    invoke-static {v10, v3, v1}, Lp9/d;->B(Lf6/j;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v3

    move-object v10, v3

    goto :goto_d

    :cond_17
    move/from16 v16, v5

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v13, v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    if-nez v3, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_19

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    move-result-wide v13

    goto :goto_d

    :cond_19
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_1a
    const-string v0, "message expiry interval"

    invoke-static {v0}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_1b
    move/from16 v16, v5

    if-eqz v15, :cond_1c

    const/4 v3, 0x1

    goto :goto_c

    :cond_1c
    const/4 v3, 0x0

    :goto_c
    if-nez v3, :cond_1f

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v3

    invoke-static {v3}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    move-result-object v15

    if-eqz v15, :cond_1d

    :goto_d
    const/4 v3, 0x1

    const/4 v4, 0x2

    move/from16 v5, v16

    move/from16 v12, v18

    goto/16 :goto_5

    :cond_1d
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "wrong payload format indicator: "

    invoke-static {v1, v3}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_1f
    const-string v0, "payload format indicator"

    invoke-static {v0}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_20
    if-ne v12, v2, :cond_2b

    if-eqz v8, :cond_24

    move-object/from16 v2, p3

    iget-object v3, v2, Lz5/b;->b:[Lf6/d;

    if-eqz v3, :cond_23

    array-length v4, v3

    if-gt v8, v4, :cond_23

    add-int/lit8 v4, v8, -0x1

    if-nez v0, :cond_22

    aget-object v0, v3, v4

    if-eqz v0, :cond_21

    goto :goto_e

    :cond_21
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_ALIAS_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "topic alias has no mapping"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_22
    aput-object v0, v3, v4

    const/high16 v3, 0x10000

    or-int/2addr v3, v8

    goto :goto_f

    :cond_23
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_ALIAS_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "topic alias must not exceed topic alias maximum"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_24
    move-object/from16 v2, p3

    if-eqz v0, :cond_2a

    :goto_e
    move v3, v8

    :goto_f
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-lez v4, :cond_25

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;->UNSPECIFIED:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    move-object v1, v2

    goto :goto_10

    :cond_25
    const/4 v1, 0x0

    :goto_10
    invoke-static {v7}, Lf6/h;->a(Lv7/r;)Lf6/h;

    move-result-object v19

    new-instance v5, Le7/a;

    move-object v8, v5

    move-object v2, v9

    move-object v9, v0

    move-object v0, v10

    move-object v10, v1

    move/from16 v12, v18

    move-object/from16 v16, v0

    move-object/from16 v18, v6

    invoke-direct/range {v8 .. v19}, Le7/a;-><init>(Lf6/d;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lf6/j;Lf6/d;Ljava/nio/ByteBuffer;Lf6/h;)V

    sget-object v0, Lv7/j;->a:Lv7/j;

    if-nez v2, :cond_26

    goto :goto_11

    :cond_26
    iget v1, v2, Lv7/p;->c:I

    if-eqz v1, :cond_29

    const/4 v0, 0x1

    if-eq v1, v0, :cond_28

    iget-object v0, v2, Lv7/p;->b:[I

    array-length v2, v0

    if-ne v2, v1, :cond_27

    new-instance v1, Lv7/n;

    invoke-direct {v1, v0}, Lv7/n;-><init>([I)V

    move-object v9, v1

    goto :goto_12

    :cond_27
    new-instance v2, Lv7/n;

    const/4 v4, 0x0

    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    invoke-direct {v2, v0}, Lv7/n;-><init>([I)V

    move-object v9, v2

    goto :goto_12

    :cond_28
    new-instance v0, Lv7/o;

    iget v1, v2, Lv7/p;->a:I

    invoke-direct {v0, v1}, Lv7/o;-><init>(I)V

    :cond_29
    :goto_11
    move-object v9, v0

    :goto_12
    new-instance v0, Le7/b;

    move-object v4, v0

    move/from16 v6, p1

    move/from16 v7, p0

    move v8, v3

    invoke-direct/range {v4 .. v9}, Le7/b;-><init>(Le7/a;IZILv7/q;)V

    return-object v0

    :cond_2a
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "topic alias must be present if topic name is zero length"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_2c
    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_2d
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0
.end method
