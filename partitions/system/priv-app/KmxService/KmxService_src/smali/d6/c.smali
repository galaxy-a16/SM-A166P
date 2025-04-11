.class public final Ld6/c;
.super Ld6/e;
.source "SourceFile"


# static fields
.field public static final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Ld6/c;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld6/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final C(Lu6/c;Lio/netty/buffer/ByteBuf;I)V
    .locals 2

    check-cast p1, Lx6/c;

    sget p0, Ld6/c;->q:I

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p3, p2}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Lx6/a;

    sget-object p3, Lf6/j;->d:Lf6/j;

    invoke-virtual {p3, p2}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    iget-object p3, p0, Lx6/a;->g:Lv6/c;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object v1, p3, Lv6/c;->a:Lf6/j;

    if-eqz v1, :cond_0

    const/16 v0, 0x80

    :cond_0
    iget-object p3, p3, Lv6/c;->b:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_1

    or-int/lit8 v0, v0, 0x40

    :cond_1
    iget-boolean p3, p0, Lx6/a;->d:Z

    if-eqz p3, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    iget p0, p0, Lx6/a;->c:I

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    iget-object p0, p1, Lx6/c;->c:Lf6/a;

    invoke-virtual {p0, p2}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Lx6/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lx6/a;->g:Lv6/c;

    if-eqz p0, :cond_4

    iget-object p1, p0, Lv6/c;->a:Lf6/j;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    :cond_3
    iget-object p0, p0, Lv6/c;->b:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    :cond_4
    return-void
.end method

.method public final H(Lu6/c;)I
    .locals 2

    check-cast p1, Lx6/c;

    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Lx6/a;

    iget-object p1, p1, Lx6/c;->c:Lf6/a;

    invoke-virtual {p1}, Lf6/j;->e()I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    iget-object p0, p0, Lx6/a;->g:Lv6/c;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lv6/c;->a:Lf6/j;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lf6/j;->e()I

    move-result v1

    :goto_0
    add-int/2addr v1, p1

    iget-object p0, p0, Lv6/c;->b:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    add-int/lit8 v0, p0, 0x2

    :goto_1
    add-int p1, v0, v1

    :cond_2
    return p1
.end method
