.class public final Le6/a;
.super Le6/f;
.source "SourceFile"


# static fields
.field public static final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->AUTH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Le6/a;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le6/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(Lu6/b;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    check-cast p1, Lv6/a;

    sget p0, Le6/a;->q:I

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p3, p2}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    iget-object p0, p1, Lu6/e;->d:Lh8/b;

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->getCode()I

    move-result p0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p4, p2}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    const/16 p0, 0x15

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    iget-object p0, p1, Lv6/a;->e:Lf6/j;

    invoke-virtual {p0, p2}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    iget-object p0, p1, Lv6/a;->f:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_0

    const/16 p3, 0x16

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    :cond_0
    if-nez p5, :cond_1

    iget-object p0, p1, Lu6/g;->c:Lf6/j;

    if-eqz p0, :cond_1

    const/16 p3, 0x1f

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p2}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    :cond_1
    const/4 p0, 0x1

    if-gt p5, p0, :cond_2

    iget-object p0, p1, Lu6/h;->b:Lf6/h;

    invoke-virtual {p0, p2}, Lf6/h;->b(Lio/netty/buffer/ByteBuf;)V

    :cond_2
    return-void
.end method

.method public final E(Lu6/b;)I
    .locals 2

    check-cast p1, Lv6/a;

    iget-object p0, p1, Lv6/a;->e:Lf6/j;

    invoke-virtual {p0}, Lf6/j;->e()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    add-int/2addr p0, v0

    iget-object v1, p1, Lv6/a;->f:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    add-int/2addr v0, p0

    iget-object p0, p1, Lu6/g;->c:Lf6/j;

    invoke-static {p0}, Lh3/a;->E(Lf6/j;)I

    move-result p0

    iget-object p1, p1, Lu6/h;->b:Lf6/h;

    invoke-virtual {p1}, Lf6/h;->c()I

    move-result p1

    add-int/2addr p1, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public final bridge synthetic I(Lu6/b;)I
    .locals 0

    check-cast p1, Lv6/a;

    const/4 p0, 0x1

    return p0
.end method
