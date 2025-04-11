.class public abstract Ld6/e;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;
.source "SourceFile"


# instance fields
.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ld6/e;->p:I

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Lu6/c;Ld/m;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    iget-object p2, p2, Ld/m;->b:Ljava/lang/Object;

    check-cast p2, Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {p2, p3, p3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Ld6/e;->C(Lu6/c;Lio/netty/buffer/ByteBuf;I)V

    return-object p2
.end method

.method public abstract B(Lu6/b;Lio/netty/buffer/ByteBuf;III)V
.end method

.method public abstract C(Lu6/c;Lio/netty/buffer/ByteBuf;I)V
.end method

.method public abstract D()I
.end method

.method public abstract E(Lu6/b;)I
.end method

.method public F(Lu6/b;II)I
    .locals 0

    if-eqz p3, :cond_1

    const/4 p0, 0x1

    if-eq p3, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p1}, Lu6/b;->c()Lf6/h;

    move-result-object p0

    invoke-virtual {p0}, Lf6/h;->c()I

    move-result p0

    sub-int/2addr p2, p0

    :cond_1
    return p2
.end method

.method public G(Lu6/b;I)I
    .locals 0

    invoke-static {p2}, Ll9/b;->W(I)I

    move-result p0

    add-int/2addr p0, p2

    return p0
.end method

.method public abstract H(Lu6/c;)I
.end method

.method public abstract I(Lu6/b;)I
.end method

.method public h(Lu6/c;Ld/m;)Lio/netty/buffer/ByteBuf;
    .locals 3

    iget v0, p0, Ld6/e;->p:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Ld6/e;->H(Lu6/c;)I

    move-result v0

    invoke-static {v0}, Li4/f;->q(I)I

    move-result v1

    iget v2, p2, Ld/m;->a:I

    if-gt v1, v2, :cond_0

    invoke-virtual {p0, p1, p2, v1, v0}, Ld6/e;->A(Lu6/c;Ld/m;II)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1, v1, v2}, Li4/f;->F(Lu6/c;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    move-result-object p0

    throw p0

    :pswitch_1
    check-cast p1, Lu6/a;

    iget v0, p2, Ld/m;->a:I

    const/4 v1, 0x4

    if-gt v1, v0, :cond_1

    iget-object p2, p2, Ld/m;->b:Ljava/lang/Object;

    check-cast p2, Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {p2, v1, v1}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-virtual {p0}, Ld6/e;->D()I

    move-result p0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-interface {p1}, Lu6/a;->a()I

    move-result p0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-object p2

    :cond_1
    invoke-static {p1, v1, v0}, Li4/f;->F(Lu6/c;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    move-result-object p0

    throw p0

    :goto_0
    check-cast p1, Lu6/b;

    invoke-virtual {p0, p1, p2}, Ld6/e;->y(Lu6/b;Ld/m;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(Lu6/b;Ld/m;)Lio/netty/buffer/ByteBuf;
    .locals 12

    invoke-virtual {p0, p1}, Ld6/e;->E(Lu6/b;)I

    move-result v0

    invoke-virtual {p0, p1}, Ld6/e;->I(Lu6/b;)I

    move-result v1

    invoke-virtual {p0, p1, v0}, Ld6/e;->G(Lu6/b;I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Li4/f;->q(I)I

    move-result v3

    const/4 v4, 0x0

    move v10, v0

    move v9, v2

    move v8, v3

    move v11, v4

    :goto_0
    iget v0, p2, Ld/m;->a:I

    if-le v8, v0, :cond_1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, p1, v10, v11}, Ld6/e;->F(Lu6/b;II)I

    move-result v10

    if-ltz v10, :cond_0

    invoke-virtual {p0, p1, v10}, Ld6/e;->G(Lu6/b;I)I

    move-result v0

    add-int v9, v0, v1

    invoke-static {v9}, Li4/f;->q(I)I

    move-result v8

    goto :goto_0

    :cond_0
    iget p0, p2, Ld/m;->a:I

    invoke-static {p1, v8, p0}, Li4/f;->F(Lu6/c;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    move-result-object p0

    throw p0

    :cond_1
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v11}, Ld6/e;->z(Lu6/b;Ld/m;IIII)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public z(Lu6/b;Ld/m;IIII)Lio/netty/buffer/ByteBuf;
    .locals 6

    iget-object p2, p2, Ld/m;->b:Ljava/lang/Object;

    check-cast p2, Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {p2, p3, p3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Ld6/e;->B(Lu6/b;Lio/netty/buffer/ByteBuf;III)V

    return-object p2
.end method
