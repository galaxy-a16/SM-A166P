.class public final Le6/k;
.super Ld6/e;
.source "SourceFile"


# static fields
.field public static final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Le6/k;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ld6/e;-><init>(I)V

    return-void
.end method

.method public static J(Le7/b;Lio/netty/buffer/ByteBuf;III)V
    .locals 10

    iget-object v0, p0, Lu6/j;->b:Lu6/h;

    check-cast v0, Le7/a;

    const/16 v1, 0x8

    iget-boolean v2, p0, Le7/b;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, v0, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v4}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result v4

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    iget-boolean v0, v0, Le7/a;->f:Z

    if-eqz v0, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    sget v0, Le6/k;->q:I

    or-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p2, p1}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    iget-object p2, p0, Lu6/j;->b:Lu6/h;

    check-cast p2, Le7/a;

    iget v0, p0, Le7/b;->e:I

    const v2, 0xffff

    and-int v4, v0, v2

    if-eqz v4, :cond_4

    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v4, p2, Le7/a;->c:Lf6/d;

    invoke-virtual {v4, p1}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    :goto_3
    iget-object v4, p2, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sget-object v6, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v4, v6, :cond_5

    iget v4, p0, Lu6/i;->c:I

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    :cond_5
    invoke-static {p3, p1}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    iget-wide v6, p2, Le7/a;->g:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long p3, v6, v8

    if-eqz p3, :cond_6

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    long-to-int p3, v6

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    :cond_6
    iget-object p3, p2, Le7/a;->h:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    if-eqz p3, :cond_7

    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;->getCode()I

    move-result p3

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    :cond_7
    iget-object p3, p2, Le7/a;->i:Lf6/j;

    if-eqz p3, :cond_8

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3, p1}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    :cond_8
    iget-object p3, p2, Le7/a;->j:Lf6/d;

    if-eqz p3, :cond_9

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3, p1}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    :cond_9
    iget-object p3, p2, Le7/a;->k:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_a

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    :cond_a
    if-nez p4, :cond_b

    invoke-virtual {p0}, Lu6/j;->c()Lf6/h;

    move-result-object p3

    invoke-virtual {p3, p1}, Lf6/h;->b(Lio/netty/buffer/ByteBuf;)V

    :cond_b
    and-int p3, v0, v2

    if-eqz p3, :cond_c

    const/16 p4, 0x23

    invoke-virtual {p1, p4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    :cond_c
    :goto_4
    iget-object p3, p0, Le7/b;->f:Lv7/q;

    invoke-interface {p3}, Lv7/q;->size()I

    move-result p4

    if-ge v3, p4, :cond_d

    invoke-interface {p3, v3}, Lv7/q;->get(I)I

    move-result p3

    const/16 p4, 0xb

    invoke-virtual {p1, p4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p3, p1}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    iget-object p0, p2, Le7/a;->d:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    :cond_e
    return-void
.end method


# virtual methods
.method public final bridge synthetic B(Lu6/b;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    check-cast p1, Le7/b;

    invoke-static {p1, p2, p3, p4, p5}, Le6/k;->J(Le7/b;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method public final E(Lu6/b;)I
    .locals 4

    check-cast p1, Le7/b;

    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Le7/a;

    iget-wide v0, p0, Le7/a;->g:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    add-int/2addr v0, v1

    iget-object v2, p0, Le7/a;->h:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    const/4 v3, 0x2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Le7/a;->i:Lf6/j;

    invoke-static {v2}, Lh3/a;->E(Lf6/j;)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Le7/a;->j:Lf6/d;

    invoke-static {v0}, Lh3/a;->E(Lf6/j;)I

    move-result v0

    add-int/2addr v0, v2

    iget-object p0, p0, Le7/a;->k:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    add-int/2addr p0, v3

    add-int/lit8 p0, p0, 0x1

    :goto_2
    add-int/2addr p0, v0

    add-int/2addr p0, v1

    iget-object v0, p1, Lu6/j;->b:Lu6/h;

    iget-object v0, v0, Lu6/h;->b:Lf6/h;

    invoke-virtual {v0}, Lf6/h;->c()I

    move-result v0

    add-int/2addr v0, p0

    iget p0, p1, Le7/b;->e:I

    const v2, 0xffff

    and-int/2addr p0, v2

    if-nez p0, :cond_3

    move p0, v1

    goto :goto_3

    :cond_3
    const/4 p0, 0x3

    :goto_3
    add-int/2addr v0, p0

    :goto_4
    iget-object p0, p1, Le7/b;->f:Lv7/q;

    invoke-interface {p0}, Lv7/q;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p0, v1}, Lv7/q;->get(I)I

    move-result p0

    invoke-static {p0}, Ll9/b;->W(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return v0
.end method

.method public final I(Lu6/b;)I
    .locals 2

    check-cast p1, Le7/b;

    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Le7/a;

    const v0, 0xffff

    iget p1, p1, Le7/b;->e:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/high16 v0, 0x10000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Le7/a;->c:Lf6/d;

    invoke-virtual {p1}, Lf6/j;->e()I

    move-result p1

    add-int/2addr p1, v1

    :goto_2
    iget-object v0, p0, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sget-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v0, v1, :cond_3

    add-int/lit8 p1, p1, 0x2

    :cond_3
    iget-object p0, p0, Le7/a;->d:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    add-int/2addr p1, p0

    :cond_4
    return p1
.end method

.method public final z(Lu6/b;Ld/m;IIII)Lio/netty/buffer/ByteBuf;
    .locals 1

    check-cast p1, Le7/b;

    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Le7/a;

    iget-object p0, p0, Le7/a;->d:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    sub-int/2addr p3, v0

    iget-object p2, p2, Ld/m;->b:Ljava/lang/Object;

    check-cast p2, Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {p2, p3, p3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-static {p1, p2, p4, p5, p6}, Le6/k;->J(Le7/b;Lio/netty/buffer/ByteBuf;III)V

    const/4 p1, 0x2

    new-array p1, p1, [Lio/netty/buffer/ByteBuf;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    aput-object p0, p1, p2

    invoke-static {p1}, Lio/netty/buffer/Unpooled;->wrappedUnmodifiableBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ld/m;->b:Ljava/lang/Object;

    check-cast p0, Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {p0, p3, p3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-static {p1, p0, p4, p5, p6}, Le6/k;->J(Le7/b;Lio/netty/buffer/ByteBuf;III)V

    :goto_0
    return-object p0
.end method
