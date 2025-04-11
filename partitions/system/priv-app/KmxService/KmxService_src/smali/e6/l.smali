.class public final Le6/l;
.super Ld6/e;
.source "SourceFile"


# static fields
.field public static final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->SUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x2

    sput v0, Le6/l;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ld6/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Lu6/b;Lio/netty/buffer/ByteBuf;III)V
    .locals 2

    check-cast p1, Ll7/a;

    sget p0, Le6/l;->q:I

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p3, p2}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    iget p0, p1, Lu6/i;->c:I

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p4, p2}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    iget p0, p1, Ll7/a;->d:I

    int-to-long p3, p0

    const-wide/16 v0, -0x1

    cmp-long p3, p3, v0

    if-eqz p3, :cond_0

    const/16 p3, 0xb

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p0, p2}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p1}, Lu6/j;->c()Lf6/h;

    move-result-object p0

    invoke-virtual {p0, p2}, Lf6/h;->b(Lio/netty/buffer/ByteBuf;)V

    :cond_1
    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Ll7/b;

    iget-object p0, p0, Ll7/b;->c:Lv7/t;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_2

    invoke-interface {p0, p1}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ll7/c;

    iget-object p4, p3, Ll7/c;->c:Lf6/c;

    invoke-virtual {p4, p2}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p3}, Ll7/c;->a()B

    move-result p3

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final E(Lu6/b;)I
    .locals 2

    check-cast p1, Ll7/a;

    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    iget-object p0, p0, Lu6/h;->b:Lf6/h;

    invoke-virtual {p0}, Lf6/h;->c()I

    move-result p0

    const/4 v0, 0x0

    add-int/2addr p0, v0

    const/4 v1, -0x1

    iget p1, p1, Ll7/a;->d:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ll9/b;->W(I)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    :goto_0
    add-int/2addr p0, v0

    return p0
.end method

.method public final I(Lu6/b;)I
    .locals 2

    check-cast p1, Ll7/a;

    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Ll7/b;

    iget-object p0, p0, Ll7/b;->c:Lv7/t;

    const/4 p1, 0x2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll7/c;

    iget-object v1, v1, Ll7/c;->c:Lf6/c;

    invoke-virtual {v1}, Lf6/j;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method
