.class public final Le6/b;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;
.source "SourceFile"


# static fields
.field public static final p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Le6/b;->p:I

    return-void
.end method

.method public constructor <init>(Le6/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;-><init>()V

    return-void
.end method

.method public static y(II)I
    .locals 1

    invoke-static {p1}, Ll9/b;->W(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x0

    return v0
.end method


# virtual methods
.method public final h(Lu6/c;Ld/m;)Lio/netty/buffer/ByteBuf;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    check-cast v1, Lx6/c;

    iget-object v2, v1, Lu6/j;->b:Lu6/h;

    move-object v3, v2

    check-cast v3, Lx6/a;

    iget-wide v4, v3, Lx6/a;->e:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v8, 0x0

    if-nez v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    :goto_0
    add-int/2addr v4, v8

    sget-object v9, Lx6/b;->i:Lx6/b;

    const-wide/32 v10, 0x10000004

    const/4 v12, 0x2

    const/4 v13, 0x1

    const v14, 0xffff

    iget-object v3, v3, Lx6/a;->f:Lx6/b;

    if-eq v3, v9, :cond_6

    iget v15, v3, Lx6/b;->a:I

    const/16 v16, 0x3

    if-ne v15, v14, :cond_1

    move v15, v8

    goto :goto_1

    :cond_1
    move/from16 v15, v16

    :goto_1
    add-int/2addr v4, v15

    iget v15, v3, Lx6/b;->c:I

    int-to-long v14, v15

    cmp-long v14, v14, v10

    if-nez v14, :cond_2

    move v14, v8

    goto :goto_2

    :cond_2
    const/4 v14, 0x5

    :goto_2
    add-int/2addr v14, v4

    iget v4, v3, Lx6/b;->e:I

    if-nez v4, :cond_3

    move/from16 v16, v8

    :cond_3
    add-int v14, v14, v16

    iget-boolean v4, v3, Lx6/b;->h:Z

    if-nez v4, :cond_4

    move v4, v8

    goto :goto_3

    :cond_4
    move v4, v12

    :goto_3
    add-int/2addr v14, v4

    iget-boolean v3, v3, Lx6/b;->g:Z

    if-ne v3, v13, :cond_5

    move v3, v8

    goto :goto_4

    :cond_5
    move v3, v12

    :goto_4
    add-int v4, v14, v3

    :cond_6
    iget-object v3, v2, Lu6/h;->b:Lf6/h;

    invoke-virtual {v3}, Lf6/h;->c()I

    move-result v3

    add-int/2addr v3, v4

    iget-object v4, v1, Lx6/c;->d:Lv6/b;

    if-eqz v4, :cond_8

    iget-object v14, v4, Lv6/b;->b:Lf6/j;

    invoke-virtual {v14}, Lf6/j;->e()I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v14, v3

    iget-object v3, v4, Lv6/b;->c:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_7

    move v3, v8

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    add-int/2addr v3, v12

    add-int/2addr v3, v13

    :goto_5
    add-int/2addr v3, v14

    :cond_8
    move-object v14, v2

    check-cast v14, Lx6/a;

    iget-object v15, v1, Lx6/c;->c:Lf6/a;

    invoke-virtual {v15}, Lf6/j;->e()I

    move-result v16

    add-int/lit8 v16, v16, 0xa

    iget-object v8, v14, Lx6/a;->g:Lv6/c;

    if-eqz v8, :cond_b

    iget-object v10, v8, Lv6/c;->a:Lf6/j;

    if-nez v10, :cond_9

    const/4 v10, 0x0

    goto :goto_6

    :cond_9
    invoke-virtual {v10}, Lf6/j;->e()I

    move-result v10

    :goto_6
    add-int v10, v10, v16

    iget-object v11, v8, Lv6/c;->b:Ljava/nio/ByteBuffer;

    if-nez v11, :cond_a

    const/4 v11, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v11}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    add-int/2addr v11, v12

    :goto_7
    add-int v16, v11, v10

    :cond_b
    move/from16 v10, v16

    const/4 v11, 0x0

    :goto_8
    invoke-static {v10, v3}, Le6/b;->y(II)I

    move-result v12

    invoke-static {v12}, Li4/f;->q(I)I

    move-result v6

    iget v7, v0, Ld/m;->a:I

    iget-object v5, v2, Lu6/h;->b:Lf6/h;

    if-le v6, v7, :cond_f

    add-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_d

    if-eq v11, v13, :cond_c

    const/4 v3, -0x1

    goto :goto_9

    :cond_c
    invoke-virtual {v5}, Lf6/h;->c()I

    move-result v5

    sub-int/2addr v3, v5

    :cond_d
    :goto_9
    if-ltz v3, :cond_e

    const-wide/16 v6, 0x0

    goto :goto_8

    :cond_e
    iget v0, v0, Ld/m;->a:I

    invoke-static {v1, v6, v0}, Li4/f;->F(Lu6/c;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    move-result-object v0

    throw v0

    :cond_f
    iget-object v0, v0, Ld/m;->b:Ljava/lang/Object;

    check-cast v0, Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, v6, v6}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sget v1, Le6/b;->p:I

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {v12, v0}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    sget-object v1, Lf6/j;->d:Lf6/j;

    invoke-virtual {v1, v0}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    if-eqz v8, :cond_11

    iget-object v1, v8, Lv6/c;->a:Lf6/j;

    if-eqz v1, :cond_10

    const/16 v1, 0x80

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    iget-object v2, v8, Lv6/c;->b:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_12

    or-int/lit8 v1, v1, 0x40

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_b
    iget-boolean v2, v14, Lx6/a;->d:Z

    if-eqz v2, :cond_13

    or-int/lit8 v1, v1, 0x2

    :cond_13
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    iget v1, v14, Lx6/a;->c:I

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-static {v3, v0}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    iget-wide v1, v14, Lx6/a;->e:J

    const-wide/16 v6, 0x0

    cmp-long v3, v1, v6

    if-eqz v3, :cond_14

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    :cond_14
    if-eqz v4, :cond_15

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    iget-object v1, v4, Lv6/b;->b:Lf6/j;

    invoke-virtual {v1, v0}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    iget-object v1, v4, Lv6/b;->c:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_15

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    :cond_15
    iget-object v1, v14, Lx6/a;->f:Lx6/b;

    if-eq v1, v9, :cond_1a

    iget v2, v1, Lx6/b;->a:I

    const v3, 0xffff

    if-eq v2, v3, :cond_16

    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    :cond_16
    iget v2, v1, Lx6/b;->c:I

    int-to-long v2, v2

    const-wide/32 v6, 0x10000004

    cmp-long v4, v2, v6

    if-eqz v4, :cond_17

    const/16 v4, 0x27

    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    :cond_17
    iget v2, v1, Lx6/b;->e:I

    if-eqz v2, :cond_18

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    :cond_18
    iget-boolean v2, v1, Lx6/b;->h:Z

    if-eqz v2, :cond_19

    const/16 v3, 0x19

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    :cond_19
    iget-boolean v1, v1, Lx6/b;->g:Z

    if-eq v1, v13, :cond_1a

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    :cond_1a
    if-nez v11, :cond_1b

    invoke-virtual {v5, v0}, Lf6/h;->b(Lio/netty/buffer/ByteBuf;)V

    :cond_1b
    invoke-virtual {v15, v0}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    if-eqz v8, :cond_1d

    iget-object v1, v8, Lv6/c;->a:Lf6/j;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, v0}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    :cond_1c
    iget-object v1, v8, Lv6/c;->b:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    :cond_1d
    return-object v0
.end method
