.class public final Le6/m;
.super Ld6/e;
.source "SourceFile"


# static fields
.field public static final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x2

    sput v0, Le6/m;->q:I

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
    .locals 0

    check-cast p1, Lo7/a;

    sget p0, Le6/m;->q:I

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p3, p2}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    iget p0, p1, Lu6/i;->c:I

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p4, p2}, Ll9/b;->V(ILio/netty/buffer/ByteBuf;)V

    if-nez p5, :cond_0

    invoke-virtual {p1}, Lu6/j;->c()Lf6/h;

    move-result-object p0

    invoke-virtual {p0, p2}, Lf6/h;->b(Lio/netty/buffer/ByteBuf;)V

    :cond_0
    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Lo7/b;

    iget-object p0, p0, Lo7/b;->c:Lv7/t;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    invoke-interface {p0, p1}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf6/c;

    invoke-virtual {p3, p2}, Lf6/j;->d(Lio/netty/buffer/ByteBuf;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final E(Lu6/b;)I
    .locals 0

    check-cast p1, Lo7/a;

    invoke-virtual {p1}, Lu6/j;->c()Lf6/h;

    move-result-object p0

    invoke-virtual {p0}, Lf6/h;->c()I

    move-result p0

    return p0
.end method

.method public final I(Lu6/b;)I
    .locals 2

    check-cast p1, Lo7/a;

    iget-object p0, p1, Lu6/j;->b:Lu6/h;

    check-cast p0, Lo7/b;

    iget-object p0, p0, Lo7/b;->c:Lv7/t;

    const/4 p1, 0x2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf6/c;

    invoke-virtual {v1}, Lf6/j;->e()I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method
