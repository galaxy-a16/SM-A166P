.class public final Ld6/j;
.super Ld6/e;
.source "SourceFile"


# static fields
.field public static final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Ld6/j;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld6/e;-><init>(I)V

    return-void
.end method

.method public static J(Le7/b;Lio/netty/buffer/ByteBuf;I)V
    .locals 3

    iget-object v0, p0, Lu6/j;->b:Lu6/h;

    check-cast v0, Le7/a;

    iget-boolean v1, p0, Le7/b;->d:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v2}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    iget-boolean v0, v0, Le7/a;->f:Z

    if-eqz v0, :cond_1

    or-int/lit8 v1, v1, 0x1

    :cond_1
    sget v0, Ld6/j;->q:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p2, p1}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    iget-object p2, p0, Lu6/j;->b:Lu6/h;

    check-cast p2, Le7/a;

    iget-object v0, p2, Le7/a;->c:Lf6/d;

    invoke-virtual {v0, p1}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-object v1, p2, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v1, v0, :cond_2

    iget p0, p0, Lu6/i;->c:I

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    :cond_2
    iget-object p0, p2, Le7/a;->d:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    :cond_3
    return-void
.end method


# virtual methods
.method public final A(Lu6/c;Ld/m;II)Lio/netty/buffer/ByteBuf;
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

    invoke-static {p1, p2, p4}, Ld6/j;->J(Le7/b;Lio/netty/buffer/ByteBuf;I)V

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

    invoke-static {p1, p0, p4}, Ld6/j;->J(Le7/b;Lio/netty/buffer/ByteBuf;I)V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic C(Lu6/c;Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    check-cast p1, Le7/b;

    invoke-static {p1, p2, p3}, Ld6/j;->J(Le7/b;Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method public final H(Lu6/c;)I
    .locals 2

    check-cast p1, Le7/b;

    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Le7/a;

    iget-object p1, p0, Le7/a;->c:Lf6/d;

    invoke-virtual {p1}, Lf6/j;->e()I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-object v1, p0, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    :cond_0
    iget-object p0, p0, Le7/a;->d:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    add-int/2addr p1, p0

    :cond_1
    return p1
.end method
