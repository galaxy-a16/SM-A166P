.class public final Lb6/c;
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
    .locals 38

    move-object/from16 v0, p2

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lv9/a;->g(II)V

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    invoke-static {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    if-ne v0, v1, :cond_0

    new-instance v0, Ly6/a;

    sget-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Ly6/b;->j:Ly6/b;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lf6/h;->c:Lf6/h;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Ly6/a;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;ZJILf6/a;Lv6/b;Ly6/b;Lf6/j;Lf6/j;Lf6/j;Lf6/h;)V

    goto/16 :goto_1f

    :cond_0
    invoke-static {}, Lv9/a;->X()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v2

    and-int/lit16 v3, v2, 0xfe

    if-nez v3, :cond_25

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v2

    invoke-static {v2}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    move-result-object v5

    if-eqz v5, :cond_24

    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    if-eq v5, v2, :cond_4

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "session present must be 0 if reason code is not SUCCESS"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    invoke-static/range {p2 .. p2}, Lp9/d;->l(Lio/netty/buffer/ByteBuf;)V

    sget-object v2, Lk8/b;->a:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const v11, 0x10000004

    move v4, v1

    move v9, v4

    move/from16 v18, v9

    move/from16 v27, v18

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    move/from16 v31, v30

    move/from16 v32, v31

    move-object/from16 v16, v2

    move/from16 v19, v3

    move/from16 v20, v19

    move/from16 v23, v20

    move/from16 v24, v23

    move/from16 v17, v11

    const/4 v2, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0xffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v21, -0x1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v33

    if-eqz v33, :cond_20

    invoke-static/range {p2 .. p2}, Lp9/d;->x(Lio/netty/buffer/ByteBuf;)I

    move-result v33

    const-string v3, "receive maximum"

    packed-switch v33, :pswitch_data_0

    :pswitch_0
    invoke-static/range {v33 .. v33}, Lp9/d;->x0(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :pswitch_1
    const-string v3, "shared subscription available"

    invoke-static {v4, v3, v0}, Lp9/d;->e(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    move/from16 v34, v4

    goto :goto_3

    :cond_5
    const/16 v34, 0x0

    :goto_3
    or-int v23, v32, v34

    move/from16 v36, v6

    move v6, v3

    move v3, v4

    goto :goto_5

    :pswitch_2
    move/from16 v35, v4

    const/4 v3, 0x1

    const-string v4, "subscription identifier available"

    move/from16 v36, v6

    move/from16 v6, v31

    invoke-static {v6, v4, v0}, Lp9/d;->e(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v4

    if-eq v4, v3, :cond_6

    move/from16 v34, v3

    goto :goto_4

    :cond_6
    const/16 v34, 0x0

    :goto_4
    or-int v6, v32, v34

    move/from16 v31, v3

    move/from16 v24, v4

    move/from16 v4, v35

    move/from16 v37, v23

    move/from16 v23, v6

    move/from16 v6, v37

    :goto_5
    move-object/from16 v3, p3

    move/from16 v32, v23

    const v0, 0xffff

    const-wide/16 v25, -0x1

    move/from16 v23, v6

    goto/16 :goto_1c

    :pswitch_3
    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v31

    const/4 v3, 0x1

    const-string v4, "wildcard subscription available"

    move/from16 v6, v28

    invoke-static {v6, v4, v0}, Lp9/d;->e(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v4

    if-eq v4, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    or-int v3, v32, v3

    move/from16 v20, v4

    const/16 v28, 0x1

    goto :goto_7

    :pswitch_4
    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    if-nez v29, :cond_b

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_a

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    move-result-wide v3

    const-wide/16 v28, 0x0

    cmp-long v28, v3, v28

    if-eqz v28, :cond_9

    const-wide/32 v28, 0x10000004

    cmp-long v28, v3, v28

    if-gez v28, :cond_8

    long-to-int v3, v3

    move/from16 v17, v3

    const/16 v32, 0x1

    :cond_8
    move/from16 v28, v6

    move/from16 v3, v32

    const/16 v29, 0x1

    :goto_7
    move/from16 v32, v3

    move/from16 v4, v35

    const v0, 0xffff

    const-wide/16 v25, -0x1

    move-object/from16 v3, p3

    goto/16 :goto_1c

    :cond_9
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "maximum packet size must not be 0"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_b
    const-string v0, "maximum packet size"

    invoke-static {v0}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :pswitch_5
    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    invoke-static {v10, v0}, Lp9/d;->C(Lv7/r;Lio/netty/buffer/ByteBuf;)Lv7/r;

    move-result-object v10

    goto :goto_b

    :pswitch_6
    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    const-string v3, "retain available"

    move/from16 v4, v30

    invoke-static {v4, v3, v0}, Lp9/d;->e(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    move/from16 v19, v4

    goto :goto_8

    :cond_c
    const/16 v19, 0x0

    :goto_8
    or-int v32, v32, v19

    move/from16 v19, v3

    move/from16 v30, v4

    goto :goto_b

    :pswitch_7
    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v4, v30

    const/4 v3, 0x1

    if-nez v27, :cond_11

    move/from16 v28, v4

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-lt v4, v3, :cond_10

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v4

    if-eqz v4, :cond_e

    if-ne v4, v3, :cond_d

    goto :goto_9

    :cond_d
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "wrong maximum Qos"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_9
    invoke-static {v4}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->fromCode(I)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v4

    sget-object v3, Lk8/b;->a:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v4, v3, :cond_f

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    :goto_a
    or-int v32, v32, v3

    move-object/from16 v16, v4

    move/from16 v30, v28

    const/16 v27, 0x1

    :goto_b
    move-object/from16 v3, p3

    :goto_c
    const v0, 0xffff

    const-wide/16 v25, -0x1

    goto/16 :goto_1b

    :cond_10
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_11
    const-string v0, "maximum Qos"

    invoke-static {v0}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :pswitch_8
    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v28, v30

    const/4 v4, 0x1

    invoke-static {v9, v3, v0}, Lp9/d;->u0(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v18

    if-eqz v18, :cond_12

    move v3, v4

    goto :goto_d

    :cond_12
    const/4 v3, 0x0

    :goto_d
    or-int v32, v32, v3

    move-object/from16 v3, p3

    move v9, v4

    move/from16 v30, v28

    goto :goto_c

    :pswitch_9
    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v28, v30

    const/4 v4, 0x1

    invoke-static {v1, v3, v0}, Lp9/d;->u0(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v13

    if-eqz v13, :cond_14

    const v1, 0xffff

    if-eq v13, v1, :cond_13

    move v1, v4

    goto :goto_e

    :cond_13
    const/4 v1, 0x0

    :goto_e
    or-int v32, v32, v1

    move-object/from16 v3, p3

    move v1, v4

    const/4 v4, -0x1

    goto/16 :goto_14

    :cond_14
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "receive maximum must not be 0"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :pswitch_a
    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v28, v30

    const/4 v4, 0x1

    invoke-static {v12, v0}, Lp9/d;->z(Lf6/j;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v12

    goto :goto_f

    :pswitch_b
    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v28, v30

    const/4 v4, 0x1

    const-string v3, "server reference"

    invoke-static {v14, v3, v0}, Lp9/d;->B(Lf6/j;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v14

    :goto_f
    move-object/from16 v3, p3

    goto :goto_10

    :pswitch_c
    move-object/from16 v3, p3

    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v28, v30

    iget-boolean v4, v3, Lz5/b;->d:Z

    if-eqz v4, :cond_15

    const-string v4, "response information"

    invoke-static {v15, v4, v0}, Lp9/d;->B(Lf6/j;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v15

    :goto_10
    move/from16 v30, v1

    const/4 v1, 0x0

    goto :goto_11

    :cond_15
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "response information must not be included if it was not requested"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :pswitch_d
    move-object/from16 v3, p3

    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v28, v30

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "auth data"

    move/from16 v30, v1

    const/4 v1, 0x0

    invoke-static {v8, v4, v0, v1}, Lp9/d;->w(Ljava/nio/ByteBuffer;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;

    move-result-object v8

    goto :goto_11

    :pswitch_e
    move-object/from16 v3, p3

    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v28, v30

    move/from16 v30, v1

    const/4 v1, 0x0

    const-string v4, "auth method"

    invoke-static {v7, v4, v0}, Lp9/d;->B(Lf6/j;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lf6/j;

    move-result-object v7

    :goto_11
    const/4 v4, -0x1

    goto :goto_13

    :pswitch_f
    move-object/from16 v3, p3

    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v28, v30

    move/from16 v30, v1

    const/4 v1, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_16

    const/4 v2, 0x1

    goto :goto_12

    :cond_16
    move v2, v1

    :goto_12
    const-string v1, "server keep alive"

    invoke-static {v2, v1, v0}, Lp9/d;->u0(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result v2

    :goto_13
    move/from16 v1, v30

    :goto_14
    const v0, 0xffff

    :goto_15
    const-wide/16 v25, -0x1

    goto/16 :goto_1a

    :pswitch_10
    move-object/from16 v3, p3

    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v28, v30

    const/4 v4, -0x1

    move/from16 v30, v1

    const-string v1, "client identifier"

    if-nez v11, :cond_1c

    sget-object v11, Lf6/a;->e:Lf6/a;

    invoke-static/range {p2 .. p2}, Li4/g;->j(Lio/netty/buffer/ByteBuf;)[B

    move-result-object v11

    if-nez v11, :cond_17

    const v0, 0xffff

    goto :goto_17

    :cond_17
    array-length v4, v11

    const v0, 0xffff

    if-gt v4, v0, :cond_18

    const/4 v4, 0x1

    goto :goto_16

    :cond_18
    const/4 v4, 0x0

    :goto_16
    if-eqz v4, :cond_1a

    invoke-static {v11}, Lf6/j;->f([B)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_17

    :cond_19
    new-instance v4, Lf6/a;

    invoke-direct {v4, v11}, Lf6/a;-><init>([B)V

    goto :goto_18

    :cond_1a
    :goto_17
    const/4 v4, 0x0

    :goto_18
    if-eqz v4, :cond_1b

    move-object v11, v4

    move/from16 v1, v30

    goto :goto_15

    :cond_1b
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v2, "malformed UTF-8 string for "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-static {v1}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :pswitch_11
    move-object/from16 v3, p3

    move/from16 v35, v4

    move/from16 v36, v6

    move/from16 v6, v28

    move/from16 v28, v30

    const v0, 0xffff

    move/from16 v30, v1

    const-wide/16 v25, -0x1

    cmp-long v1, v21, v25

    if-eqz v1, :cond_1d

    const/4 v4, 0x1

    goto :goto_19

    :cond_1d
    const/4 v4, 0x0

    :goto_19
    if-nez v4, :cond_1f

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    move-result-wide v21

    move/from16 v1, v30

    :goto_1a
    move/from16 v30, v28

    :goto_1b
    move/from16 v28, v6

    move/from16 v4, v35

    :goto_1c
    move-object/from16 v0, p2

    move/from16 v6, v36

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_1e
    invoke-static {}, Lp9/d;->V()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_1f
    const-string v0, "session expiry interval"

    invoke-static {v0}, Lp9/d;->W(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_20
    move/from16 v36, v6

    if-eqz v7, :cond_21

    new-instance v0, Lv6/b;

    invoke-direct {v0, v7, v8}, Lv6/b;-><init>(Lf6/j;Ljava/nio/ByteBuffer;)V

    goto :goto_1d

    :cond_21
    if-nez v8, :cond_23

    const/4 v0, 0x0

    :goto_1d
    sget-object v1, Ly6/b;->j:Ly6/b;

    if-eqz v32, :cond_22

    new-instance v1, Ly6/b;

    move-object v3, v12

    move-object v12, v1

    move-object/from16 v25, v14

    move/from16 v14, v17

    move-object/from16 v26, v15

    move/from16 v15, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v23

    move/from16 v20, v24

    invoke-direct/range {v12 .. v20}, Ly6/b;-><init>(IIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZ)V

    goto :goto_1e

    :cond_22
    move-object v3, v12

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object v12, v1

    :goto_1e
    invoke-static {v10}, Lf6/h;->a(Lv7/r;)Lf6/h;

    move-result-object v16

    new-instance v1, Ly6/a;

    move-object v4, v1

    move/from16 v6, v36

    move-wide/from16 v7, v21

    move v9, v2

    move-object v10, v11

    move-object v11, v0

    move-object/from16 v13, v26

    move-object/from16 v14, v25

    move-object v15, v3

    invoke-direct/range {v4 .. v16}, Ly6/a;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;ZJILf6/a;Lv6/b;Ly6/b;Lf6/j;Lf6/j;Lf6/j;Lf6/h;)V

    move-object v0, v1

    :goto_1f
    return-object v0

    :cond_23
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "auth data must not be included if auth method is absent"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-static {}, Lp9/d;->y0()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object v0

    throw v0

    :cond_25
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "wrong CONNACK flags, bits 7-1 must be 0"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
